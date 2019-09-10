<%
	/* *
	 *功能：alipay.acquire.overseas.spot.pay接口调试入口页面
	 *版本：3.3
	 *日期：2012-08-17
	 *说明：
	 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
	 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alipay.barcode.md5.config.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<title>Barcode Payment Query Test</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<style>
		.table td.parameter {
			width:15%;
		}
		.table td.value {
			width:30%;
		}
		.table td.dscription {
			word-wrap: break-word;min-width: 160px;max-width: 160px;white-space:normal;
		}
	</style>
</head>
<body>
	<div id="main">
		<div id="head">
            <dl class="alipay_link">
                <a target="_blank" href="http://www.alipay.com/"><span>Alipay Homepage</span></a>|
                <a target="_blank" href="https://b.alipay.com/home.htm"><span>Merchant Service</span></a>|
                <a target="_blank" href="http://help.alipay.com/support/index_sh.htm"><span>Help Center</span></a>
            </dl>
		</div>
        <form name=alipayment action=barcodepaymentquery_alipayapi.jsp method=post target="_blank">
			<div class="container">
				<h1>Barcode Payment Test</h1>
				<h3>partner 		:<%=AlipayConfig.partner%></h3>
				<h3>key				:<%=AlipayConfig.key%></h3>
				<h3>input_charset 	:<%=AlipayConfig.input_charset%></h3>
				<h3>sign_type 		:<%=AlipayConfig.sign_type%></h3>
				<table class="table table-striped">
					<thead>
					<tr>
						<th>Parameter</th>
						<th>Value</th>
						<th>Description</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<td class="parameter">partner_trans_id</td>
						<td class="value"><input class="form-control" type="text" name="WIDpartner_trans_id" /></td>
						<td class="dscription">The original partner transaction id given in the payment request</td>
					</tr>
					<tr>
						<td class="parameter">alipay_trans_id</td>
						<td class="value"><input class="form-control" type="text" name="WIDalipay_trans_id"/></td>
						<td class="dscription">On the partner’s payment request, the alipay system creates a transaction id to handle it. The alipay_trans_id has one-one association with partner + partner_trans_id.</td>
					</tr>
					</tbody>
				</table>
				<div class="form-group">
					<button type="submit" class="btn btn-success">Submit</button>
				</div>
			</div>
		</form>
	</div>
</body>
</html>