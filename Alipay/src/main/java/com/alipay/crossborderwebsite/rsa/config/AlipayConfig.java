package com.alipay.crossborderwebsite.rsa.config;

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
	  public static String partner = "2088101181796002";
	    
	// 商户的私钥
	// merchant's private key
	  
	  public static String private_key = "MIICdgIBADANBgkqhkiG9w0BAQEFAASCAmAwggJcAgEAAoGBAJzADOgnEn6VLjhlidpz/CgVK6AHKVOXJZeWx5FmKsCTFpgirz5NTZjpFUM0JfiPzj4cz69gmED966JlruWthRf4YLVQ34r6S84x+rhFUW13PBya9OWu4ZbhqinbhtgRwPVJfzb+Gm0DnKnj1RVvOMPcc6ogQYDWVZ/m4edNOxLNAgMBAAECgYB6Aw/I4SkHOQ3qPjdIwMGFXb1AanKjq2JKlcYwCmu6zINo1o68GyYMoVm4nu3zhdSPCpQqujCpXj09gpLaGvAeWX465YATKwtCzaCRU29Ekx9ZDj+rKlGqR8PDBEsMNZPoHX1FDAy51mKqE7Of0NZ8tz/zkYsrLCvvnB0vfa9vTQJBAMyHA6wrtfK9l5BmU/uRbvMrdyKHtvYMvufUpDuelI1LUnr3omN0hzXL6erz0zDQ3OQpDZyGLXqSpPUNID0SOC8CQQDEMur4FlBBBKv8P7uXiT6DPg5rtiB5mzmn0HWmqWBlDysSjRaBx0FMLfAcdhweAYpkoPkD024Zcus/P/xy4WnDAkEAvY6UtMl+RI+7HTX5uDq+Hdm2/OXTiI+fj7Xg0PDUtW+N7jH86zhg6FcpYXzBy4iIcV4rI1qoY+XtxMB5lKCCOQJASg+6eOnbY5/C2FaqlppdOaecQ/adLap1yi47qyz20U83gCo4G8c+k+YnZGcFWCJWvoOxXEtcnUivGtIplqgWhwJAfxOR8vEKCFonG34GVMOF6DlOe2+5cLd50NS3Bnd1wa05q9FeePXmaTMCdSLlj1ngHOmVApP2A6f+t+Lrn7UEtg==";

	      
	// 支付宝的公钥
    //Alipay's public key,below is Alipay's public key of sandbox environment
	  public static String ali_public_key  = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDDS92pDVyWNT7dzG9zH0opH44z9FayCZTX5iqGUxUjPi667IkyaqrsmDPqKsJp47lJ29lzs+Qv8zjPPdmnxjFteMrfpc4ui24gL1iZnchwX87Ox/+Xrm8HFmKlhmUO9n/QgTT+Nz1RGMEN1+HijvsoAhS0TS8XjSfzRkrwvK2pJQIDAQAB";
	//Pls use the Alipay's public key of production environment instead if you are in production environment
	//public static String ali_public_key  = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCnxj/9qwVfgoUh/y2W89L6BkRAFljhNhgPdyPuBV64bfQNN1PjbCzkIM6qRdKBoLPXmKKMiFYnkd6rAoprih3/PrQEB/VsW8OoM8fxn67UDYuyBTqA23MML9q1+ilIZwBC2AQ2UBVOrFXfFl75p6/B5KsiNG9zpgmLCUYuLkxpLQIDAQAB";
	
	
	

	// 服务器异步通知页面路径，不能加?id=123这类自定义参数，必须外网可以正常访问
	//Page for receiving asynchronous Notification. It should be accessable from outer net.No custom parameters like '?id=123' permitted.
	public static String notify_url = "http://MerchantSite/create_forex_trade-JAVA-UTF-8-RSA-new/notify_url.jsp";

	// 页面跳转同步通知页面路径 需http://格式的完整路径，不能加?id=123这类自定义参数，必须外网可以正常访问
    //Page for synchronous notification.It should be accessable from outer net.No custom parameters like '?id=123' permitted.
	public static String return_url = "http://www.alipay.com";

	// 签名方式
	//sign_type
	public static String sign_type = "RSA";
	
	// 调试用，创建TXT日志文件夹路径，见AlipayCore.java类中的logResult(String sWord)打印方法。
	//Create a TXT log folder path,pls refer to the logResult(String sWord) function in the AlipayCore.java file.
	public static String log_path = "C:\\";
		
	// 字符编码格式 目前支持 gbk 或 utf-8
	// input_charset   gbk and utf-8 are supported now.
	public static String input_charset = "utf-8";
		

	// 调用的接口名，无需修改
	//Service name of the interface.No need to modify.
	public static String service = "create_forex_trade";


//↑↑↑↑↑↑↑↑↑↑请在这里配置您的基本信息↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑
//↑↑↑↑↑↑↑↑↑↑Please configure your basic information here↑↑↑↑↑↑↑↑↑↑↑↑↑↑↑		
}

