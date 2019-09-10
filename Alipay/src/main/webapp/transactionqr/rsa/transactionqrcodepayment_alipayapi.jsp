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
<%@ page import="com.alipay.transactionqrcodepayment.config.*"%>
<%@ page import="com.alipay.transactionqrcodepayment.util.*"%>
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

		//timestamp
		String timestamp = UtilDate.getDateFormatter();
		//[Time stamp of the merchant server sending request [1456507704121]]

		//body
		String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");
		//[Specific description of the trade [iphone cellphone]]

		//currency
		String currency = new String(request.getParameter("WIDcurrency").getBytes("ISO-8859-1"),"UTF-8");
		//[Settlement currency [USD]]

		//extend_params
		String extend_params = new String(request.getParameter("WIDextend_params").getBytes("ISO-8859-1"),"UTF-8");
		//[ Be used for transmitting specific business information of the merchant [{"secondary_merchant_name":"Lotte","secondary_merchant_id":"123","secondary_merchant_industry":"5812","store_id":"A101","store_name":"McDonald in 966 3rd Ave, New York"}]]

		//out_trade_no
		String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
		//[Unique order ID in Alipay’s merchant website [4363476566647440]]

		//passback_parameters
		String passback_parameters = new String(request.getParameter("WIDpassback_parameters").getBytes("ISO-8859-1"),"UTF-8");
		//[Alipay will feekback this parameter by the asynchronous notify  [test]]

		//price
		String price = new String(request.getParameter("WIDprice").getBytes("ISO-8859-1"),"UTF-8");
		//[Unit price of the goods in the order [0.01]]

		//product_code
		String product_code = new String(request.getParameter("WIDproduct_code").getBytes("ISO-8859-1"),"UTF-8");
		//[Order placement used to distinguish the business type [OVERSEAS_MBARCODE_PAY]]

		//quantity
		String quantity = new String(request.getParameter("WIDquantity").getBytes("ISO-8859-1"),"UTF-8");
		//[Quantity of the goods in the order [1]]

		//seller_email
		String seller_email = new String(request.getParameter("WIDseller_email").getBytes("ISO-8859-1"),"UTF-8");
		//[Seller's Alipay account [testoverseas1980@alipay.com]]

		//seller_id
		String seller_id = new String(request.getParameter("WIDseller_id").getBytes("ISO-8859-1"),"UTF-8");
		//[Unique Alipay user ID corresponding to Seller’s Alipay account 16 numbers beginning with 2088 [2088021966388155]]

		//show_url
		String show_url = new String(request.getParameter("WIDshow_url").getBytes("ISO-8859-1"),"UTF-8");
		//[Hyperlink for the show of goods on the webpage of checkout counter [http://www.taobao.com/product/113714.html]]

		//subject
		String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"),"UTF-8");
		//[Goods title/trade tile/order subject/order key word etc [Payment by QR-Code]]

		//total_fee
		String total_fee = new String(request.getParameter("WIDtotal_fee").getBytes("ISO-8859-1"),"UTF-8");
		//[Total fee of this order [0.01]]

		//trans_currency
		String trans_currency = new String(request.getParameter("WIDtrans_currency").getBytes("ISO-8859-1"),"UTF-8");
		//[Pricing currency for the transaction [USD]]
		
		
		//////////////////////////////////////////////////////////////////////////////////
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", "alipay.acquire.precreate");
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
		sParaTemp.put("notify_url", AlipayConfig.notify_url);
		sParaTemp.put("timestamp", timestamp);
		sParaTemp.put("body", body);
		sParaTemp.put("currency", currency);
		sParaTemp.put("extend_params", extend_params);
		sParaTemp.put("out_trade_no", out_trade_no);
		sParaTemp.put("passback_parameters", passback_parameters);
		sParaTemp.put("price", price);
		sParaTemp.put("product_code", product_code);
		sParaTemp.put("quantity", quantity);
		sParaTemp.put("seller_email", seller_email);
		sParaTemp.put("seller_id", seller_id);
		sParaTemp.put("show_url", show_url);
		sParaTemp.put("subject", subject);
		sParaTemp.put("total_fee", total_fee);
		sParaTemp.put("trans_currency", trans_currency);
		
		//建立请求
		String sHtmlText = AlipaySubmit.buildRequest("", "", sParaTemp);
		out.println(AlipayCore.html(sHtmlText));
	%>
	<body>
	</body>
</html>
