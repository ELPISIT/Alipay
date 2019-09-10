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
<%@ page import="com.alipay.transactionqr.md5.config.*"%>
<%@ page import="com.alipay.transactionqr.md5.util.*"%>
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

		//alipay_seller_id

		String notify_url = new String(request.getParameter("WIDnotify_url").getBytes("ISO-8859-1"),"UTF-8");
		//Same value with partner ID
		//quantity
		String timestamp = new String(request.getParameter("WIDtimestamp").getBytes("ISO-8859-1"),"UTF-8");
		//Quantity of commodity
		//transaction name
		String terminal_timestamp = new String(request.getParameter("WIDterminal_timestamp").getBytes("ISO-8859-1"),"UTF-8");
		//The name of the transaction which will be shown in the transaction record’s list.
		//partner_trans_id
		String body = new String(request.getParameter("WIDbody").getBytes("ISO-8859-1"),"UTF-8");
		//The transaction Id on the partner system which could be a sale order id and payment order id.
		//currency
		String currency = new String(request.getParameter("WIDcurrency").getBytes("ISO-8859-1"),"UTF-8");
		//The currency used for labelling the price of the transaction. this is also the settlement currency Alipay settled to the partner.
		//trans_amount
		String out_trade_no = new String(request.getParameter("WIDout_trade_no").getBytes("ISO-8859-1"),"UTF-8");
		//the transaction amount in the currency given above;
		//buyer_identity_code
		String passback_parameters = new String(request.getParameter("WIDpassback_parameters").getBytes("ISO-8859-1"),"UTF-8");
		//Used as identification of an Alipay user.

		//identity_code_type
		String price = new String(request.getParameter("WIDprice").getBytes("ISO-8859-1"),"UTF-8");
		//The identity code type could be QRcode or barcode
		//trans_create_time
		String product_code = new String(request.getParameter("WIDproduct_code").getBytes("ISO-8859-1"),"UTF-8");
		//The time that the partner system creates the transaction.Format：YYYYMMDDHHMMSS
		//memo
		String quantity = new String(request.getParameter("WIDquantity").getBytes("ISO-8859-1"),"UTF-8");
		//memo
		String seller_email = new String(request.getParameter("WIDseller_email").getBytes("ISO-8859-1"),"UTF-8");
		//memo
		String seller_id = new String(request.getParameter("WIDseller_id").getBytes("ISO-8859-1"),"UTF-8");
		//memo
		String show_url = new String(request.getParameter("WIDshow_url").getBytes("ISO-8859-1"),"UTF-8");
		//memo
		String subject = new String(request.getParameter("WIDsubject").getBytes("ISO-8859-1"),"UTF-8");
		//memo
		String total_fee = new String(request.getParameter("WIDtotal_fee").getBytes("ISO-8859-1"),"UTF-8");
		//memo
		String it_b_pay = new String(request.getParameter("WIDit_b_pay").getBytes("ISO-8859-1"),"UTF-8");
		//memo
		String trans_currency = new String(request.getParameter("WIDtrans_currency").getBytes("ISO-8859-1"),"UTF-8");
		//memo
		String secondary_merchant_id = new String(request.getParameter("WIDsecondary_merchant_id").getBytes("ISO-8859-1"),"UTF-8");
		String secondary_merchant_name = new String(request.getParameter("WIDsecondary_merchant_name").getBytes("ISO-8859-1"),"UTF-8");
		String secondary_merchant_industry = new String(request.getParameter("WIDsecondary_merchant_industry").getBytes("ISO-8859-1"),"UTF-8");
		String store_name = new String(request.getParameter("WIDstore_name").getBytes("ISO-8859-1"),"UTF-8");
		String store_id = new String(request.getParameter("WIDstore_id").getBytes("ISO-8859-1"),"UTF-8");
		String terminal_id = new String(request.getParameter("WIDterminal_id").getBytes("ISO-8859-1"),"UTF-8");
		String sys_service_provider_id = new String(request.getParameter("WIDsys_service_provider_id").getBytes("ISO-8859-1"),"UTF-8");
		//extend_info
		String extend_info = "{\"secondary_merchant_name\":\""+secondary_merchant_name+"\",\"secondary_merchant_id\":\""+secondary_merchant_id+"\",\"secondary_merchant_industry\":\""+secondary_merchant_industry+"\",\"store_id\":\""+store_id+"\",\"store_name\":\""+store_name+"\",\"terminal_id\":\""+terminal_id+"\",\"sys_service_provider_id\":\""+sys_service_provider_id+"\" }";
		//Containing the extended parameters of the request. It’s in JSON format.
		String goodsId = new String(request.getParameter("WIDgoodsId").getBytes("ISO-8859-1"),"UTF-8");
		String goodsName = new String(request.getParameter("WIDgoodsName").getBytes("ISO-8859-1"),"UTF-8");
		String goodsCategory = new String(request.getParameter("WIDgoodsCategory").getBytes("ISO-8859-1"),"UTF-8");
		String goodsshowUrl = new String(request.getParameter("WIDgoodsshowUrl").getBytes("ISO-8859-1"),"UTF-8");
		String goodsquantity = new String(request.getParameter("WIDgoodsquantity").getBytes("ISO-8859-1"),"UTF-8");
		String goodsbody = new String(request.getParameter("WIDgoodsbody").getBytes("ISO-8859-1"),"UTF-8");
		String goodsprice = new String(request.getParameter("WIDgoodsprice").getBytes("ISO-8859-1"),"UTF-8");
		//extend_info
		String goods_detail = "[{\"goodsId\":\""+goodsId+"\",\"goodsName\":\""+goodsName+"\",\"goodsCategory\":\""+goodsCategory+"\",\"showUrl\":\""+goodsshowUrl+"\",\"quantity\":\""+goodsquantity+"\",\"body\":\""+goodsbody+"\",\"price\":\""+goodsprice+"\" }]";
		//Containing the extended parameters of the request. It’s in JSON format.

		//////////////////////////////////////////////////////////////////////////////////

		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", "alipay.acquire.precreate");
		sParaTemp.put("partner", AlipayConfig.partner);
		sParaTemp.put("_input_charset", AlipayConfig.input_charset);
		if(!notify_url.trim().isEmpty()){
			sParaTemp.put("notify_url", notify_url);
		}
		if(!timestamp.trim().isEmpty()){
			sParaTemp.put("timestamp", timestamp);
		}
		if(!terminal_timestamp.trim().isEmpty()){
			sParaTemp.put("terminal_timestamp", terminal_timestamp);
		}
		if(!body.trim().isEmpty()){
			sParaTemp.put("body", body);
		}
		if(!currency.trim().isEmpty()){
			sParaTemp.put("currency", currency);
		}
		if(!out_trade_no.trim().isEmpty()){
			sParaTemp.put("out_trade_no", out_trade_no);
		}
		if(!passback_parameters.trim().isEmpty()){
			sParaTemp.put("passback_parameters", passback_parameters);
		}
		if(!price.trim().isEmpty()){
			sParaTemp.put("price", price);
		}
		if(!product_code.trim().isEmpty()){
			sParaTemp.put("product_code", product_code);
		}
		if(!quantity.trim().isEmpty()){
			sParaTemp.put("quantity", quantity);
		}
		if(!seller_email.trim().isEmpty()){
			sParaTemp.put("seller_email", seller_email);
		}
		if(!seller_id.trim().isEmpty()){
			sParaTemp.put("seller_id", seller_id);
		}
		if(!show_url.trim().isEmpty()){
			sParaTemp.put("show_url", show_url);
		}
		if(!subject.trim().isEmpty()){
			sParaTemp.put("subject", subject);
		}
		if(!total_fee.trim().isEmpty()){
			sParaTemp.put("total_fee", total_fee);
		}
		if(!it_b_pay.trim().isEmpty()){
			sParaTemp.put("it_b_pay", it_b_pay);
		}
		if(!trans_currency.trim().isEmpty()){
			sParaTemp.put("trans_currency", trans_currency);
		}
		if(!extend_info.trim().isEmpty()){
			sParaTemp.put("extend_info", extend_info);
		}
		if(!goods_detail.trim().isEmpty()){
			sParaTemp.put("goods_detail", goods_detail);
		}

		
		//建立请求
		String sHtmlText = AlipaySubmit.buildRequest("", "", sParaTemp);
		String fHtmlText =AlipayCore.html(sHtmlText);
		System.out.println(fHtmlText);
		out.println(AlipayCore.html(sHtmlText));
	%>
	<body>
	</body>
</html>
