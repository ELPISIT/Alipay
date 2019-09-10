package com.alipay.crossborderwapforexcompare.config;

/* *
 *类名：AlipayConfig
 *功能：基础配置类
 *详细：设置帐户有关信息及返回路径
 *版本：3.4
 *修改日期：2016-03-08
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。
 *configuration file for basic configuration
 *version:3.4
 *modify date:2016-03-08
 *instructions
 *This code below is a sample demo for merchants to do test.Merchants can refer to the integration documents and write your own code to fit your website.Not necessarily to use this code.  
 *Alipay provide this code for you to study and research on Alipay interface, just for your reference.
 */

public class AlipayConfig {
	
//↓↓↓↓↓↓↓↓↓↓请在这里配置您的基本信息↓↓↓↓↓↓↓↓↓↓↓↓↓↓↓
//↓↓↓↓↓↓↓↓↓↓Please configure your basic information here↓↓↓↓↓↓↓↓↓↓

	// 合作身份者ID，签约账号，以2088开头由16位纯数字组成的字符串，查看地址：https://globalprod.alipay.com/order/myOrder.htm
	// 下面的值默认是一个沙箱测试账号，您可参考下面网址申请自己的沙箱测试账号：https://global.alipay.com/help/integration/23
   //partner ID,It's a 16-bit string start with "2088".Login in https://globalprod.alipay.com/order/myOrder.htm to see your partner ID.
   //Below is a default pid of sandbox account for your reference,pls apply your own sandbox account here:https://global.alipay.com/help/integration/23
	public static String partner = "";
	
	// MD5密钥，安全检验码，由数字和字母组成的32位字符串，查看地址：https://b.alipay.com/order/pidAndKey.htm
	//MD5 key . The security check code, 32 bit string composed of numbers and letters.See your key at https://globalprod.alipay.com/order/myOrder.htm
    public static String key = "";

	// 服务器异步通知页面路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//Page for receiving asynchronous Notification. It should be accessable from outer net.No custom parameters like '?id=123' permitted.
	public static String notify_url = "http://MerchantSite/create_forex_trade_wap-JAVA-UTF-8-MD5-new/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    //Page for synchronous notification.It should be accessable from outer net.No custom parameters like '?id=123' permitted.
	public static String return_url = "http://www.alipay.com";

	// 签名方式
	//sign_type
	public static String sign_type = "MD5";
	
	// 调试用，创建TXT日志文件夹路径，见AlipayCore.java类中的logResult(String sWord)打印方法。
	//Create a TXT log folder path,pls refer to the logResult(String sWord) function in the AlipayCore.java file.
	public static String log_path = "C:\\";
		
	// 字符编码格式 目前支持 gbk 或 utf-8
	// input_charset   gbk and utf-8 are supported now.
	public static String input_charset = "utf-8";
		

	// 调用的接口名，无需修改
	//Service name of the interface.No need to modify.
	public static String service = "create_forex_trade_wap";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
//↑↑↑↑↑↑↑↑↑↑Please configure your basic information here↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑		
}

