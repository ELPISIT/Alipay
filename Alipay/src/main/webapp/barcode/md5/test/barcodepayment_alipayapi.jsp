<%
/* *
 *功能：alipay.acquire.overseas.spot.pay接口接入页
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
<%@ page import="com.alipay.barcode.md5.config.*"%>
<%@ page import="com.alipay.barcode.md5.util.*"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.Map"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<title>alipay.acquire.overseas.spot.pay接口</title>
	</head>
	<%
		////////////////////////////////////请求参数//////////////////////////////////////

		//alipay_seller_id

		String alipay_seller_id = new String(request.getParameter("WIDalipay_seller_id").getBytes("ISO-8859-1"),"UTF-8");
		//Same value with partner ID
		//quantity
		String quantity = new String(request.getParameter("WIDquantity").getBytes("ISO-8859-1"),"UTF-8");
		//Quantity of commodity
		//transaction name
		String trans_name = new String(request.getParameter("WIDtrans_name").getBytes("ISO-8859-1"),"UTF-8");
		//The name of the transaction which will be shown in the transaction record’s list.
		//partner_trans_id
		String partner_trans_id = new String(request.getParameter("WIDpartner_trans_id").getBytes("ISO-8859-1"),"UTF-8");
		//The transaction Id on the partner system which could be a sale order id and payment order id.
		//currency
		String currency = new String(request.getParameter("WIDcurrency").getBytes("ISO-8859-1"),"UTF-8");
		//The currency used for labelling the price of the transaction. this is also the settlement currency Alipay settled to the partner.
		//trans_amount
		String trans_amount = new String(request.getParameter("WIDtrans_amount").getBytes("ISO-8859-1"),"UTF-8");
		//the transaction amount in the currency given above;
		//buyer_identity_code
		String buyer_identity_code = new String(request.getParameter("WIDbuyer_identity_code").getBytes("ISO-8859-1"),"UTF-8");
		//Used as identification of an Alipay user.

		//identity_code_type
		String identity_code_type = new String(request.getParameter("WIDidentity_code_type").getBytes("ISO-8859-1"),"UTF-8");
		//The identity code type could be QRcode or barcode
		//trans_create_time
		String trans_create_time = new String(request.getParameter("WIDtrans_create_time").getBytes("ISO-8859-1"),"UTF-8");
		//The time that the partner system creates the transaction.Format：YYYYMMDDHHMMSS
		//memo
		String memo = new String(request.getParameter("WIDmemo").getBytes("ISO-8859-1"),"UTF-8");
		//Transaction notes
		//biz_product
		String biz_product = new String(request.getParameter("WIDbiz_product").getBytes("ISO-8859-1"),"UTF-8");
		//Product name. For now it’s an static value which is mandatory Value: OVERSEAS_MBARCODE_PAY
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
		
		
		//////////////////////////////////////////////////////////////////////////////////
		
		//把请求参数打包成数组
		Map<String, String> sParaTemp = new HashMap<String, String>();
		sParaTemp.put("service", "alipay.acquire.overseas.spot.pay");
        sParaTemp.put("partner", AlipayConfig.partner);
        sParaTemp.put("_input_charset", AlipayConfig.input_charset);
        if(!alipay_seller_id.trim().isEmpty()){
			sParaTemp.put("alipay_seller_id", alipay_seller_id);
		}
		if(!quantity.trim().isEmpty()){
			sParaTemp.put("quantity", quantity);
		}
		if(!trans_name.trim().isEmpty()){
			sParaTemp.put("trans_name", trans_name);
		}
		if(!partner_trans_id.trim().isEmpty()){
			sParaTemp.put("partner_trans_id", partner_trans_id);
		}
		if(!currency.trim().isEmpty()){
			sParaTemp.put("currency", currency);
		}
		if(!trans_amount.trim().isEmpty()){
			sParaTemp.put("trans_amount", trans_amount);
		}
		if(!buyer_identity_code.trim().isEmpty()){
			sParaTemp.put("buyer_identity_code", buyer_identity_code);
		}
		if(!identity_code_type.trim().isEmpty()){
			sParaTemp.put("identity_code_type", identity_code_type);
		}
		if(!trans_create_time.trim().isEmpty()){
			sParaTemp.put("trans_create_time", trans_create_time);
		}
		if(!memo.trim().isEmpty()){
			sParaTemp.put("memo", memo);
		}
		if(!biz_product.trim().isEmpty()){
			sParaTemp.put("biz_product", biz_product);
		}
		if(!extend_info.trim().isEmpty()){
			sParaTemp.put("extend_info", extend_info);
		}

		
		//建立请求
		String sHtmlText = AlipaySubmit.buildRequest("", "", sParaTemp);
		String fHtmlText =AlipayCore.html(sHtmlText);
		System.out.println(fHtmlText);
		out.println(fHtmlText);
	%>
	<body>
	</body>
</html>
