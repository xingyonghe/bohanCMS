
            �q�����������������������������������������������r
    ����������           ֧��������ʾ���ṹ˵��             ����������
            �t�����������������������������������������������s 
��       �ӿ����ƣ�֧������ʱ���˽��׽ӿڣ�create_direct_pay_by_user��
�� ��    ����汾��3.4
         �������ԣ�JAVA JDK1.5
         ��    Ȩ��֧�������й������缼�����޹�˾
��       �� �� �ߣ�֧��������������֧����
         ��ϵ��ʽ��https://support.open.alipay.com/alipay/support/index.htm
         ����������DEMO�����ο���ʵ�ʿ�������Ҫ��Ͼ��峡���޸�ʹ�á�

    ������������������������������������������������������������������

��������������
 �����ļ��ṹ
��������������

create_direct_pay_by_user-JAVA-GBK
  ��
  ��src�����������������������������������ļ���
  ��  ��
  ��  ��com.alipay.config
  ��  ��  ��
  ��  ��  ��AlipayConfig.java���������������������ļ�
  ��  ��
  ��  ��com.alipay.util
  ��  ��  ��
  ��  ��  ��AlipayCore.java������������֧�����ӿڹ��ú������ļ�
  ��  ��  ��
  ��  ��  ��AlipayNotify.java����������֧����֪ͨ�������ļ�
  ��  ��  ��
  ��  ��  ��AlipaySubmit.java����������֧�������ӿ������ύ���ļ�
  ��  ��  ��
  ��  ��  ��UtilDate.java��������������֧�����Զ��嶩�����ļ�
  ��  ��
  ��  ��com.alipay.md5
  ��  ��  ��
  ��  ��  ��MD5.java ������������������MD5ǩ�����ļ�
  ��
  ��WebRoot����������������������������ҳ���ļ���
  ��  ��
  ��  ��alipayapi.jsp������������������֧�����ӿ�����ļ�
  ��  ��
  ��  ��index.jsp����������������������֧�����������ҳ��
  ��  ��
  ��  ��notify_url.jsp �����������������������첽֪ͨҳ���ļ�
  ��  ��
  ��  ��return_url.jsp ����������������ҳ����תͬ��֪ͨ�ļ�
  ��  ��
  ��  ��WEB-INF
  ��   	  ��
  ��      ��lib�����JAVA��Ŀ�а�����Щ�ܰ�������Ҫ���룩
  ��   	     ��
  ��   	     ��commons-codec-1.6.jar
  ��   	     ��
  ��   	     ��commons-logging-1.1.1.jar
  ��   	     ��
  ��   	     ��dom4j-1.6.1.jar
  ��
  ��readme.txt ������������������ʹ��˵���ı�

��ע���
��Ҫ���õ��ļ��ǣ�
AlipayConfig.java
notify_url.jsp
return_url.jsp

������������������
 ���ļ������ṹ
������������������

AlipayCore.java

public static Map paraFilter(Map<String, String> sArray)
���ܣ���ȥ�����еĿ�ֵ��ǩ������
���룺Map<String, String> sArray Ҫǩ��������
�����Map<String, String> ȥ����ֵ��ǩ�����������ǩ��������

public static String createLinkString(Map<String, String> params)
���ܣ�����������Ԫ�أ����ա�����=����ֵ����ģʽ�á�&���ַ�ƴ�ӳ��ַ���
���룺Map<String, String> params ��Ҫƴ�ӵ�����
�����String ƴ������Ժ���ַ���

public static void logResult(String sWord)
���ܣ�д��־��������ԣ�����վ����Ҳ���Ըĳɴ������ݿ⣩
���룺String sWord Ҫд����־����ı�����

public static String getAbstract(String strFilePath, String file_digest_type) throws IOException
���ܣ������ļ�ժҪ
���룺String strFilePath �ļ�·��
      String file_digest_type ժҪ�㷨
�����String �ļ�ժҪ���

��������������������������������������������������������������

MD5.java

public static String sign(String text, String key, String input_charset)
���ܣ�MD5ǩ��
���룺String text ����
      String key ˽Կ
      String input_charset �����ʽ
�����String ǩ�����

public static boolean verify(String text, String sign, String key, String input_charset)
���ܣ�MD5��ǩ�����
���룺String text ����
      String sign ֧������ǩ��ֵ
      String key ˽Կ
      String input_charset �����ʽ
�����boolean ǩ�����

��������������������������������������������������������������




AlipayNotify.java

public static boolean verify(Map<String, String> params)
���ܣ����ݷ�����������Ϣ������ǩ�����
���룺Map<String, String>  Params ֪ͨ�������Ĳ�������
�����boolean ��֤���

private static boolean getSignVeryfy(Map<String, String> Params, String sign)
���ܣ����ݷ�����������Ϣ����֤ǩ��
���룺Map<String, String>  Params ֪ͨ�������Ĳ�������
      String sign ֧������ǩ��ֵ
�����boolean ǩ�����

private static String verifyResponse(String notify_id)
���ܣ���ȡԶ�̷�����ATN���,��֤����URL
���룺String notify_id ��֤֪ͨID
�����String ��֤���

private static String checkUrl(String urlvalue)
���ܣ���ȡԶ�̷�����ATN���
���룺String urlvalue ָ��URL·����ַ
�����String ������ATN����ַ���

��������������������������������������������������������������

AlipaySubmit.java

public static String buildRequestMysign(Map<String, String> sPara)
���ܣ�����ǩ�����
���룺Map<String, String> sPara Ҫǩ��������
�����String ǩ�����

private static Map<String, String> buildRequestPara(Map<String, String> sParaTemp)
���ܣ�����Ҫ�����֧�����Ĳ�������
���룺Map<String, String> sParaTemp ����ǰ�Ĳ�������
�����Map<String, String> Ҫ����Ĳ�������

public static String buildRequest(Map<String, String> sParaTemp, String strMethod, String strButtonName)
���ܣ����������Ա�HTML��ʽ���죨Ĭ�ϣ�
���룺Map<String, String> sParaTemp �����������
      String strMethod �ύ��ʽ������ֵ��ѡ��post��get
      String strButtonName ȷ�ϰ�ť��ʾ����
�����String �ύ��HTML�ı�

public static String query_timestamp()
���ܣ����ڷ����㣬���ýӿ�query_timestamp����ȡʱ����Ĵ�����
�����String ʱ����ַ���

��������������������������������������������������������������

UtilDate.java

public  static String getOrderNum()
���ܣ��Զ����������ţ���ʽyyyyMMddHHmmss
�����String ������

public  static String getDateFormatter()
���ܣ���ȡ���ڣ���ʽ��yyyy-MM-dd HH:mm:ss
�����String ����

public static String getDate()
���ܣ���ȡ���ڣ���ʽ��yyyyMMdd
�����String ����

public static String getThree()
���ܣ������������λ��
�����String �����λ��

��������������������������������������������������������������


��������������������
 �������⣬��������
��������������������

����ڼ���֧�����ӿ�ʱ�������ʻ�������⣬��ʹ����������ӣ��ύ���롣
https://support.open.alipay.com/support/createOrEditProblem.htm
���ǻ���ר�ŵļ���֧����ԱΪ������




