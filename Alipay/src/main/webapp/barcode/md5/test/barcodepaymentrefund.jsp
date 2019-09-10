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
	<title>Barcode Payment Refund Test</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%--<meta charset="utf-8">--%>
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
	<form name=alipayment action=barcodepaymentrefund_alipayapi.jsp method=post target="_blank">
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
					<td class="parameter">notify_url</td>
					<td class="value"><input class="form-control" type="text" name="WIDnotify_url"/></td>
					<td class="dscription">The url to which Alipay sends payment result in async mode. It is in POST method. Note: For information security, the url must be on https protocol. This URL cannot have extra parameters. For example, “https://xxx.com/foo.php?star=obama” is not allowed.</td>
				</tr>
				<tr>
					<td class="parameter">partner_trans_id</td>
					<td class="value"><input class="form-control" type="text" name="WIDpartner_trans_id"/></td>
					<td class="dscription">The original partner transaction id given in the payment .</td>
				</tr>
				<tr>
					<td class="parameter">alipay_trans_id</td>
					<td class="value"><input class="form-control" type="text" name="WIDalipay_trans_id"/></td>
					<td class="dscription">The Alipay transaction ID.</td>
				</tr>
				<tr>
					<td class="parameter">partner_refund_id</td>
					<td class="value"><input class="form-control" type="text" name="WIDpartner_refund_id" /></td>
					<td class="dscription">The refund order id on partner system. partner_refund_id cannot be same as partner_transaction_id. partner_refund_id together with partner identify a refund transaction.</td>
				</tr>
				<tr>
					<td class="parameter">refund_amount</td>
					<td class="value"><input class="form-control" type="text" name="WIDrefund_amount" value="0.01"/></td>
					<td class="dscription">Less than or equal to the original transaction amount and the left transaction amount if ever refunded..</td>
				</tr>
				<tr>
					<td class="parameter">currency</td>
					<td class="value"><select class="form-control" name="WIDcurrency">
						<option value="USD">USD</option>
						<option value="LKR">LKR</option>
						<option value="GBP">GBP</option>
						<option value="HKD">HKD</option>
						<option value="CHF">CHF</option>
						<option value="SGD">SGD</option>
						<option value="SEK">SEK</option>
						<option value="DKK">DKK</option>
						<option value="NOK">NOK</option>
						<option value="JPY">JPY</option>
						<option value="CAD">CAD</option>
						<option value="AUD">AUD</option>
						<option value="EUR">EUR</option>
						<option value="NZD">NZD</option>
						<option value="KRW">KRW</option>
						<option value="THB">THB</option>
						<option value="CNY">CNY</option>
					</select></td>
					<td class="dscription">refund currency.</td>
				</tr>
				<tr>
					<td class="parameter">refund_reason</td>
					<td class="value"><input class="form-control" type="text" name="WIDrefund_reason" value="0.01" /></td>
					<td class="dscription">The reason of refund.</td>
				</tr>
				<tr>
					<td class="parameter">is_sync</td>
					<td class="value"><select class="form-control" name="WIDis_sync">
						<option value="Y">Yes</option>
						<option value="N">No</option>
					</select></td>
					<td class="dscription">The refund request is processed synchronously or asynchronously. Value: Y or N. Default value is N, which is processed asynchronously. If the value is set as Y, notify_url will become meaningless</td>
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