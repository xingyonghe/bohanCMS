<?php

namespace App\Models;

class MobileSms extends CommonModel{
    /*
    |--------------------------------------------------------------------------
    | MobileSms Model
    | @author xingyonghe
    | @date 2016-11-17
    |--------------------------------------------------------------------------
    |
    | 短信模型
    |
    */

    //未验证状态
    const STATUS_FAILD   = 0;
    //已验证状态
    const STATUS_SUCCESS = 1;
    const CATEGORY = [
        'register' =>  1,//注册使用
    ];
    public $timestamps = false;//模型不需要更新/新增时间
    protected $table = 'mobile_sms';
    protected $fillable = [
        'mobile','status','content','created_at','code','category'
    ];
    protected $dates = ['created_at'];

    /**
     * 发送短信
     * @author: xingyonghe
     * @date: 2016-11-17
     * @param $mobile 手机号
     * @param $category 见const CATEGORY
     * @return bool
     */
    public function send($mobile,$category){
        $config = config('mobilesms.driver.zdtone');
        $code   = random_char();
        switch($category){
            case '1':
                $msg = '【卓杭广告】您本次验证码为：'.$code.'，如不是本人操作，请忽略';
                break;
        }
        $datas = [
            'loginname' => $config['username'],
            'password'  => $config['password'],
            'msg'       => $msg,
            'tele'      => $mobile,
        ];
        $resault = $this->call($datas,$config['host']);
        $resault = preg_split('/[,;\r\n]+/', trim($resault, ",;\r\n"));

        foreach($resault as $key=>$string){
            if(strstr($string,'ERROR')){
                $errors = explode(':', $string);
                $error = [];
                $errorCode = $this->errorSMS();
                $error[$errors[0]] = $errorCode[$errors[1]];
                return false;
            }
        }
        $this->create(
            array(
                'mobile'     => $mobile,
                'status'     => self::STATUS_FAILD,
                'content'    => $msg,
                'created_at' => \Carbon\Carbon::now(),
                'code'       => $code,
                'category'   => $category
            )
        );
        return true;
    }

    /**
     * curl 实现post数据提交
     * @author: xingyonghe
     * @date: 2016-11-17
     * @param $datas 数据信息
     * @param $host sms
     * @return mixed
     */
    private function call($datas,$host){
        //初始化
        $curl = curl_init();
        //设置抓取的url
        curl_setopt($curl, CURLOPT_URL, $host);
        //设置头文件的信息作为数据流输出
        curl_setopt($curl, CURLOPT_HEADER, 1);
        //设置获取的信息以文件流的形式返回，而不是直接输出。
        curl_setopt($curl, CURLOPT_RETURNTRANSFER, 1);
        //设置post方式提交
        curl_setopt($curl, CURLOPT_POST, 1);
        //设置post数据
        curl_setopt($curl, CURLOPT_POSTFIELDS, $datas);
        //执行命令
        $resault = curl_exec($curl);
        //关闭URL请求
        curl_close($curl);
        return $resault;
    }

    /**
     * 短信错误代码
     * @author: xingyonghe
     * @date: 2016-11-17
     * @return array
     */
    private function errorSMS(){
        return [
            '0100' => '无短信内容',
            '0101' => '无发送号码',
            '0102' => '账户或密码错误',
            '0103' => '余额不足',
            '0105' => '发送失败'
        ];
    }

    /**
     * 手机短信验证
     * @author: xingyonghe
     * @date: 2016-11-17
     * @param $mobile 手机号码
     * @param $code 手机验证码
     * @param $category 见const CATEGORY
     * @return bool
     */
    public function verify($mobile,$code,$category){
        if(empty($code) || empty($mobile)){
            $this->error = '验证失败';
            return false;
        }
        $overtime = config('mobilesms.driver.zdtone.overtime');
        //查找该号码最近的一条发送信息
        $info = $this
            ->where('mobile',$mobile)
            ->where('category',$category)
            ->orderBy('created_at','desc')
            ->first();
        $now = \Carbon\Carbon::now()->timestamp;
        if(empty($info)){
            $this->error = '验证失败';
            return false;
        }
        if($now - $info->created_at->timestamp > $overtime){
            $this->error = '验证已失效';
            return false;
        }
        if($info->status == self::STATUS_SUCCESS){
            $this->error = '您的操作过快';
            return false;
        }
        if($info->code != $code){
            $this->error = '验证输入错误';
            return false;
        }
        $info->update(array('status'=>self::STATUS_SUCCESS));
        return true;
    }








}
