<?php
/* *
 * �����ļ�
 * �汾��3.5
 * ���ڣ�2016-06-25
 * ˵����
 * ���´���ֻ��Ϊ�˷����̻����Զ��ṩ���������룬�̻����Ը����Լ���վ����Ҫ�����ռ����ĵ���д,����һ��Ҫʹ�øô��롣
 * �ô������ѧϰ���о�֧�����ӿ�ʹ�ã�ֻ���ṩһ���ο���

 * ��ȫУ����鿴ʱ������֧�������ҳ��ʻ�ɫ��������ô�죿
 * ���������
 * 1�������������ã������������������������
 * 2���������������ԣ����µ�¼��ѯ��
 */
 
//�����������������������������������Ļ�����Ϣ������������������������������
//���������ID��ǩԼ�˺ţ���2088��ͷ��16λ��������ɵ��ַ������鿴��ַ��https://openhome.alipay.com/platform/keyManage.htm?keyType=partner
$alipay_config['partner']		= '';

//�տ�֧�����˺ţ���2088��ͷ��16λ��������ɵ��ַ�����һ��������տ��˺ž���ǩԼ�˺�
$alipay_config['seller_id']	= $alipay_config['partner'];

//�̻���˽Կ,�˴���дԭʼ˽Կȥͷȥβ��RSA��˽Կ���ɣ�https://doc.open.alipay.com/doc2/detail.htm?spm=a219a.7629140.0.0.nBDxfy&treeId=58&articleId=103242&docType=1
$alipay_config['private_key']	= '';

//֧�����Ĺ�Կ���鿴��ַ��https://b.alipay.com/order/pidAndKey.htm 
$alipay_config['alipay_public_key']= 'MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB';

// �������첽֪ͨҳ��·��  ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
$alipay_config['notify_url'] = "http://�̻���ַ/create_direct_pay_by_user-PHP-GBK/notify_url.php";

// ҳ����תͬ��֪ͨҳ��·�� ��http://��ʽ������·�������ܼ�?id=123�����Զ����������������������������
$alipay_config['return_url'] = "http://�̻���ַ/create_direct_pay_by_user-PHP-GBK/return_url.php";

//ǩ����ʽ
$alipay_config['sign_type']    = strtoupper('RSA');

//�ַ������ʽ Ŀǰ֧�� gbk �� utf-8
$alipay_config['input_charset']= strtolower('gbk');

//ca֤��·����ַ������curl��sslУ��
//�뱣֤cacert.pem�ļ��ڵ�ǰ�ļ���Ŀ¼��
$alipay_config['cacert']    = getcwd().'\\cacert.pem';

//����ģʽ,�����Լ��ķ������Ƿ�֧��ssl���ʣ���֧����ѡ��https������֧����ѡ��http
$alipay_config['transport']    = 'http';

// ֧������ �������޸�
$alipay_config['payment_type'] = "1";
		
// ��Ʒ���ͣ������޸�
$alipay_config['service'] = "create_direct_pay_by_user";

//�����������������������������������Ļ�����Ϣ������������������������������


//�������������������� �����������÷�������Ϣ�����û��ͨ�����㹦�ܣ�Ϊ�ռ��� ������������������������������
	
// ������ʱ���  ��Ҫʹ����������ļ�submit�е�query_timestamp����
$alipay_config['anti_phishing_key'] = "";
	
// �ͻ��˵�IP��ַ �Ǿ�����������IP��ַ���磺221.0.0.1
$alipay_config['exter_invoke_ip'] = "";
		
//�������������������������������÷�������Ϣ�����û��ͨ�����㹦�ܣ�Ϊ�ռ��� ������������������������������

?>