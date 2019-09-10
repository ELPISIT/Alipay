<%
	/* *
	 *功能：支付宝境外当面付订单码预下单接口调试入口页面
	 *版本：3.3
	 *日期：2012-08-17
	 *说明：
	 *以下代码只是为了方便商户测试而提供的样例代码，商户可以根据自己网站的需要，按照技术文档编写,并非一定要使用该代码。
	 */
%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.alipay.transactionqr.md5.config.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>Transaction QR Payment Test</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<%--<meta charset="utf-8">--%>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	<script>
        $(document).ready(function(){
            var timeStamp = Math.floor(Date.now() / 1000);
            $("#WIDtimestamp").val(timeStamp);
            $("#WIDterminal_timestamp").val(timeStamp);
        });
	</script>
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
<body onload="getTimeStamp()">
	<div id="main">
	<div id="head">
		<dl class="alipay_link">
			<a target="_blank" href="http://www.alipay.com/"><span>Alipay Homepage</span></a>|
			<a target="_blank" href="https://b.alipay.com/home.htm"><span>Merchant Service</span></a>|
			<a target="_blank" href="http://help.alipay.com/support/index_sh.htm"><span>Help Center</span></a>
		</dl>
	</div>
	<form name=alipayment action=transactionqrcodepayment_alipayapi.jsp method=post target="_blank">
		<div class="container">
			<h1>Transaction QR Payment Test</h1>
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
					<td class="parameter">timestamp</td>
					<td class="value"><input class="form-control" type="text" name="WIDtimestamp" value="2018-08-01 08:08:08" /></td>
					<td class="dscription">The time ( Beijing Time) of calling the interface, and the call will expire in a certime time (default 30 minutes). The time format is ：yyyy-MM-dd HH:mm:ss。</td>
				</tr>
				<tr>
					<td class="parameter">notify_url</td>
					<td class="value"><input class="form-control" type="text" name="WIDnotify_url" value="http://www.taobao.com" /></td>
					<td class="dscription">Alipay will asynchronously notify the result in the HTTP Post method.</td>
				</tr>




				<tr>
					<td class="parameter">notify_url</td>
					<td class="value"><input class="form-control" type="text" name="WIDnotify_url" value="http://www.taobao.com/product/113714.html" /></td>
					<td class="dscription">Alipay server takes the initiative to notify merchant of webpage http path designated by website.</td>
				</tr>
				<tr>
					<td class="parameter">timestamp</td>
					<td class="value"><input class="form-control" type="text" name="WIDtimestamp" value="1456507704121" /></td>
					<td class="dscription">	Time stamp of the merchant server sending request, accurate to the millisecond.</td>
				</tr>
				<tr>
					<td class="parameter">terminal_timestamp</td>
					<td class="value"><input class="form-control" type="text" name="WIDterminal_timestamp" value="1456507704121" /></td>
					<td class="dscription">Time stamp of the terminal sending request, accurate to the millisecond.</td>
				</tr>
				<tr>
					<td class="parameter">body</td>
					<td class="value"><input class="form-control" type="text" name="WIDbody" value="iphone cellphone" /></td>
					<td class="dscription">Specific description of the trade. In case of a variety of goods, please accumulate the character strings descrbing the goods, and transmit the same to body.</td>
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
					<td class="dscription">Settlement currency. Currency and trans_currency cannot be different foreign currency.</td>
				</tr>
				<tr>
					<td class="parameter">out_trade_no</td>
					<td class="value"><input class="form-control" type="text" name="WIDout_trade_no"/></td>
					<td class="dscription">Unique order ID in Alipay’s merchant website.</td>
				</tr>
				<tr>
					<td class="parameter">passback_parameters</td>
					<td class="value"><input class="form-control" type="text" name="WIDpassback_parameters"/></td>
					<td class="dscription">If merchant transfer this parameter by the request string, Alipay will feedback this parameter by the asynchronous notify (parameter name: extra_common_param).</td>
				</tr>
				<tr>
					<td class="parameter">price</td>
					<td class="value"><input class="form-control" type="text" name="WIDprice" value="0.01" /></td>
					<td class="dscription">Unit price of the goods in the order. If this parameter is transmitted at request, the condition of total_fee=price×quantity must be met.</td>
				</tr>
				<tr>
					<td class="parameter">product_code</td>
					<td class="value"><input class="form-control" type="text" name="WIDproduct_code" value="OVERSEAS_MBARCODE_PAY" /></td>
					<td class="dscription">Order placement used to distinguish the business type: ?   OVERSEAS_MBARCODE_PAY: face to face payment overseas.</td>
				</tr>
				<tr>
					<td class="parameter">quantity</td>
					<td class="value"><input class="form-control" type="text" name="WIDquantity" value="1" /></td>
					<td class="dscription">Quantity of the goods in the order. If this parameter is transmitted at request, the condition of total_fee=price×quantity must be met.</td>
				</tr>
				<tr>
					<td class="parameter">seller_email</td>
					<td class="value"><input class="form-control" type="text" name="WIDseller_email" value="testoverseas1980@alipay.com" /></td>
					<td class="dscription">Seller’s Alipay account, may be email or phone number If seller_id is not null, the value of seller_id shall be the seller’s ID and this parameter can be neglected.</td>
				</tr>
				<tr>
					<td class="parameter">seller_id</td>
					<td class="value"><input class="form-control" type="text" name="WIDseller_id" value="2088621882250714" /></td>
					<td class="dscription">Unique Alipay user ID corresponding to Seller’s Alipay account 16 numbers beginning with 2088. If both sell_id and seller-email are null, the default value of this parameter to be filled out shall be the value of merchant.</td>
				</tr>
				<tr>
					<td class="parameter">show_url</td>
					<td class="value"><input class="form-control" type="text" name="WIDshow_url" value="http://www.taobao.com/product/113714.html" /></td>
					<td class="dscription">Hyperlink for the show of goods on the webpage of checkout counter.</td>
				</tr>
				<tr>
					<td class="parameter">subject</td>
					<td class="value"><input class="form-control" type="text" name="WIDsubject" value="Payment by QR-Code" /></td>
					<td class="dscription">Goods title/trade tile/order subject/order key word etc. The length of this parameter is up to 128 Chinese characters.</td>
				</tr>
				<tr>
					<td class="parameter">total_fee</td>
					<td class="value"><input class="form-control" type="text" name="WIDtotal_fee" value="0.01" /></td>
					<td class="dscription">Total fee of this order. The range of values is [0.01, 100000000], such value can have up to two digits after the decimal point.</td>
				</tr>
				<tr>
					<td class="parameter">it_b_pay</td>
					<td class="value"><input class="form-control" type="text" name="WIDit_b_pay" value="0.01" /></td>
					<td class="dscription">Set the overtime of non-payment trade, the trade will be closed automatically once the time is up, 3m by default. Range of values: 1m to 15d. m-minute, h-hour, d-day, 1c-current day (Whenever the trade is created, it will be closed at 0:00). Demical point of the numerical value of this parameter is rejected, for example, 1.5h can be tansformed to 90m. To realize this function, Alipay is needed to be advised to set close time.</td>
				</tr>
				<tr>
					<td class="parameter">trans_currency</td>
					<td class="value"><select class="form-control" name="WIDtrans_currency">
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
					<td class="dscription">Pricing currency for the transaction, if it is not CNY, the CNY amount user will be charged will be calculated based on trans_currency and exchange rate.</td>
				</tr>
				<tr>
					<td>extend_params</td>
				</tr>
				<tr>
					<td class="parameter">secondary_merchant_id</td>
					<td class="value"><input class="form-control" type="text" name="WIDsecondary_merchant_id" value="123" /></td>
					<td class="dscription">The secondary merchant ID is used to identify a merchant. The ID can only contain letters, numbers, dashes, and underscores. Max length: 32 characters.</td>
				</tr>
				<tr>
					<td class="parameter">secondary_merchant_name</td>
					<td class="value"><input class="form-control" type="text" name="WIDsecondary_merchant_name" value="Mora" /></td>
					<td class="dscription">Secondary merchant name. Can be null only in cross-border agency acquiring mode and the name is verified.</td>
				</tr>
				<tr>
					<td class="parameter">secondary_merchant_industry</td>
					<td class="value"><select class="form-control" name="WIDsecondary_merchant_industry">
						<option value="0742">Veterinary services (0742)</option>
						<option value="0743">Wine producers (0743)</option>
						<option value="0744">Champagne producers (0744)</option>
						<option value="0780">Landscaping and horticultural services (0780)</option>
						<option value="1711">Heating, plumbing and air-conditioning contractors (1711)</option>
						<option value="1731">Electrical contractors (1731)</option>
						<option value="1740">Masonry, stonework, tile setting, plastering and insulation contractors (1740)</option>
						<option value="1750">Carpentry contractors (1750)</option>
						<option value="1761">Roofing, siding and sheet metal work contractors (1761)</option>
						<option value="1771">Concrete work contractors (1771)</option>
						<option value="1799">Special trade contractors - not elsewhere classified (1799)</option>
						<option value="2741">Miscellaneous publishing and printing services (2741)</option>
						<option value="2791">Typesetting, platemaking and related services (2791)</option>
						<option value="2842">Speciality cleaning, polishing and sanitation preparations (2842)</option>
						<option value="4011">Railroads (4011)</option>
						<option value="4111">Local and suburban commuter passenger transportation, including ferries (4111)</option>
						<option value="4112">Passenger railways (4112)</option>
						<option value="4119">Ambulance services (4119)</option>
						<option value="4121">Taxi-cabs and limousines (4121)</option>
						<option value="4131">Bus lines (4131)</option>
						<option value="4214">Motor freight carriers and trucking - local and long distance, moving and storage companies and local delivery (4214)</option>
						<option value="4215">Courier services - air and ground and freight forwarders (4215)</option>
						<option value="4225">Public warehousing and storage - farm products, refrigerated goods and household goods (4225)</option>
						<option value="4411">Steamships and cruise lines (4411)</option>
						<option value="4457">Boat rentals and leasing (4457)</option>
						<option value="4468">Marinas, marine service and supplies (4468)</option>
						<option value="4511">Airlines and air carriers (4511)</option>
						<option value="4582">Airports, flying fields and airport terminals (4582)</option>
						<option value="4722">Travel agencies and tour operators (4722)</option>
						<option value="4784">Tolls and bridge fees (4784)</option>
						<option value="4789">Transportation services - not elsewhere classified (4789)</option>
						<option value="4812">Telecommunication equipment and telephone sales (4812)</option>
						<option value="4814">Telecommunication services (4814)</option>
						<option value="4815">Monthly summary telephone charges (4815)</option>
						<option value="4816">Computer network information services (4816)</option>
						<option value="4821">Telegraph services (4821)</option>
						<option value="4899">Cable and other pay television services (4899)</option>
						<option value="4900">Utilities - electric, gas, water and sanitary(4900)</option>
					</select></td>
					<td class="dscription">For MCC code definitions, see MCC list</td>
				</tr>
				<tr>
					<td class="parameter">store_name</td>
					<td class="value"><input class="form-control" type="text" name="WIDstore_name" value="Xiaomi Sri Lanka" /></td>
					<td class="dscription">Store name. Can be null only when the store information is verified.</td>
				</tr>
				<tr>
					<td class="parameter">store_id</td>
					<td class="value"><input class="form-control" type="text" name="WIDstore_id" value="A101" /></td>
					<td class="dscription">	The store ID is used to identify a store under a merchant. The ID can only contain letters, numbers, dashes, and underscores. Max length: 32 characters. If this parameter is not passed, the transaction will be intercepted for risk control reasons.</td>
				</tr>
				<tr>
					<td class="parameter">terminal_id</td>
					<td class="value"><input class="form-control" type="text" name="WIDterminal_id" value="212133131" /></td>
					<td class="dscription">Terminal ID</td>
				</tr>
				<tr>
					<td class="parameter">sys_service_provider_id</td>
					<td class="value"><input class="form-control" type="text" name="WIDsys_service_provider_id" value="212133131" /></td>
					<td class="dscription">The technical provider id. This parameter identifies the payment system provider.</td>
				</tr>
				<tr>
					<td>goods_detail</td>
				</tr>
				<tr>
					<td class="parameter">goodsId</td>
					<td class="value"><input class="form-control" type="text" name="WIDgoodsId" value="apple-01" /></td>
					<td class="dscription">Goods ID.</td>
				</tr>
				<tr>
					<td class="parameter">goodsName</td>
					<td class="value"><input class="form-control" type="text" name="WIDgoodsName" value="ipad" /></td>
					<td class="dscription">Goods Name.</td>
				</tr>
				<tr>
					<td class="parameter">goodsCategory</td>
					<td class="value"><input class="form-control" type="text" name="WIDgoodsCategory" value="34543238" /></td>
					<td class="dscription">Goods Category.</td>
				</tr>
				<tr>
					<td class="parameter">goodsshowUrl</td>
					<td class="value"><input class="form-control" type="text" name="WIDgoodsshowUrl" value="http://www.taobao.com" /></td>
					<td class="dscription">Hyperlink for the show of goods on the webpage of checkout counter.</td>
				</tr>
				<tr>
					<td class="parameter">goodsquantity</td>
					<td class="value"><input class="form-control" type="text" name="WIDgoodsquantity" value="1" /></td>
					<td class="dscription">Secondary merchant name. Can be null only in cross-border agency acquiring mode and the name is verified.</td>
				</tr>
				<tr>
					<td class="parameter">goodsbody</td>
					<td class="value"><input class="form-control" type="text" name="WIDgoodsbody" value="Cellphone at a sale" /></td>
					<td class="dscription">Secondary merchant name. Can be null only in cross-border agency acquiring mode and the name is verified.</td>
				</tr>
				<tr>
					<td class="parameter">goodsprice</td>
					<td class="value"><input class="form-control" type="text" name="WIDgoodsprice" value="2000" /></td>
					<td class="dscription">Secondary merchant name. Can be null only in cross-border agency acquiring mode and the name is verified.</td>
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