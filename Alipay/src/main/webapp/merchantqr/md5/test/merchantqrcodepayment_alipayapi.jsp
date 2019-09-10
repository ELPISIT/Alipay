<%
/* *
 *功能：境外当面付订单码预下单接口接入页
 *版本：3.3
 *日期：2012-08-14
 *说明：
 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
 *该代码仅供学习和研究支付宝接口使用，只是提供一个参考。

 *************************注意*****************
 *如果您在接口集成过程中遇到问题，可以按照下面的途径来解决
 *1、商户服务中心（https://b.alipay.com/support/helperApply.htm?action=consultationApply），提交申请集成协助，我们会有专业的技术工程师主动联系您协助解决
 *2、商户帮助中心（http://help.alipay.com/support/232511-16307/0-16307.htm?sh=Y&info_type=9）
 *3、支付宝论坛（http://club.alipay.com/read-htm-tid-8681712.html）
 *如果不想使用扩展功能请把扩展功能参数赋空值。
 **********************************************
 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alipay.merchantqr.md5.config.*"%>
<%@ page import="com.alipay.merchantqr.md5.util.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>支付宝境外当面付订单码预下单接口</title>
	</head>
	<%
		////////////////////////////////////请求参数//////////////////////////////////////

		String timestamp = new String(request.getParameter("WIDtimestamp").getBytes("ISO-8859-1"),"UTF-8");
		//Same value with partner ID
		//quantity
		String notify_url = new String(request.getParameter("WIDnotify_url").getBytes("ISO-8859-1"),"UTF-8");
		//Quantity of commodity
		//transaction name
		String biz_type = new String(request.getParameter("WIDbiz_type").getBytes("ISO-8859-1"),"UTF-8");
		//The name of the transaction which will be shown in the transaction record’s list.

		//biz_data
		String biz_data = new String(request.getParameter("WIDbiz_data").getBytes("ISO-8859-1"),"UTF-8");
		//[Business type that is defined by Alipay]

		String secondary_merchant_id = new String(request.getParameter("WIDsecondary_merchant_id").getBytes("ISO-8859-1"),"UTF-8");
		String secondary_merchant_name = new String(request.getParameter("WIDsecondary_merchant_name").getBytes("ISO-8859-1"),"UTF-8");
		String secondary_merchant_industry = new String(request.getParameter("WIDsecondary_merchant_industry").getBytes("ISO-8859-1"),"UTF-8");
		String store_name = new String(request.getParameter("WIDstore_name").getBytes("ISO-8859-1"),"UTF-8");
		String store_id = new String(request.getParameter("WIDstore_id").getBytes("ISO-8859-1"),"UTF-8");
		String trans_currency = new String(request.getParameter("WIDtrans_currency").getBytes("ISO-8859-1"),"UTF-8");
		String currency = new String(request.getParameter("WIDcurrency").getBytes("ISO-8859-1"),"UTF-8");
		String sys_service_provider_id = new String(request.getParameter("WIDsys_service_provider_id").getBytes("ISO-8859-1"),"UTF-8");
		String address = new String(request.getParameter("WIDaddress").getBytes("ISO-8859-1"),"UTF-8");
		String passback_parameters = new String(request.getParameter("WIDpassback_parameters").getBytes("ISO-8859-1"),"UTF-8");
		String notify_mobile = new String(request.getParameter("WIDnotify_mobile").getBytes("ISO-8859-1"),"UTF-8");
		String sendFormat = "normal";
		//extend_info
		//String biz_data = "{\"secondary_merchant_name\":\""+secondary_merchant_name+"\",\"secondary_merchant_id\":\""+secondary_merchant_id+"\",\"secondary_merchant_industry\":\""+secondary_merchant_industry+"\",\"store_id\":\""+store_id+"\",\"store_name\":\""+store_name+"\",\"trans_currency\":\""+trans_currency+"\",\"currency\":\""+currency+"\",\"address\":\""+address+"\",\"passback_parameters\":\""+passback_parameters+"\",\"notify_mobile\":\""+notify_mobile+"\",\"sys_service_provider_id\":\""+sys_service_provider_id+"\" }";
		//String biz_data = "{\"secondary_merchant_industry\":\""+secondary_merchant_industry+"\",\"secondary_merchant_id\":\""+secondary_merchant_id+"\",\"secondary_merchant_name\":\""+secondary_merchant_name+"\",\"store_id\":\""+store_id+"\",\"store_name\":\""+store_name+"\",\"trans_currency\":\""+trans_currency+"\",\"currency\":\""+currency+"\"}";

		//Containing the extended parameters of the request. It’s in JSON format.
		
		
		//////////////////////////////////////////////////////////////////////////////////
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", "alipay.commerce.qrcode.create");
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
		sParaTemp.put("notify_url", notify_url);
		//sParaTemp.put("notify_url", AlipayConfig.notify_url);
		//sParaTemp.put("timestamp", timestamp);
		//sParaTemp.put("notify_url", notify_url);
		sParaTemp.put("sendFormat", sendFormat);
		sParaTemp.put("biz_type", biz_type);
		sParaTemp.put("biz_data", biz_data);

		
		//建立请求
		String sHtmlText = AlipaySubmit.buildRequest("", "", sParaTemp);
		String fHtmlText =AlipayCore.html(sHtmlText);
		System.out.println(fHtmlText);
		out.println(AlipayCore.html(sHtmlText));
	%>
	<body>
	</body>
</html>
