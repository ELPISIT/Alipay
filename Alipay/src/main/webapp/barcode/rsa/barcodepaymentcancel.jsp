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
<%@ page import="com.alipay.barcodepaymentcancel.config.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
	<head>
	<title>Barcode Payment Cancel Test</title>
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
                <a target="_blank" href="http://www.alipay.com/"><span>支付宝首页</span></a>|
                <a target="_blank" href="https://b.alipay.com/home.htm"><span>商家服务</span></a>|
                <a target="_blank" href="http://help.alipay.com/support/index_sh.htm"><span>帮助中心</span></a>
            </dl>
		</div>
        <form name=alipayment action=barcodepaymentcancel_alipayapi.jsp method=post target="_blank">
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
						<td class="parameter">out_trade_no</td>
						<td class="value"><input class="form-control" type="text" name="WIDout_trade_no"/></td>
						<td class="dscription">Unique order No. in Alipay’s merchant’s website</td>
					</tr>
					<tr>
						<td class="parameter">timestamp</td>
						<td class="value"><input class="form-control" type="text" name="WIDtimestamp" value="20170406164000" /></td>
						<td class="dscription">Time stamp of the merchant server sending request, accurate to the millisecond.</td>
					</tr>
					<tr>
						<td class="parameter">terminal_timestamp</td>
						<td class="value"><input class="form-control" type="text" name="WIDterminal_timestamp" value="20170406164000" /></td>
						<td class="dscription">Time stamp of the terminal sending request, accurate to the millisecond.</td>
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