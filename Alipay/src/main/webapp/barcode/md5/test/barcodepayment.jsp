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
	<title>Barcode Payment Test</title>
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
        <form name=alipayment action=barcodepayment_alipayapi.jsp method=post target="_blank">
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
							<td class="parameter">alipay_seller_id</td>
							<td class="value"><input class="form-control" type="text" name="WIDalipay_seller_id" value="2088621882250714" /></td>
							<td class="dscription">Same value with partner ID</td>
						</tr>
						<tr>
							<td class="parameter">quantity</td>
							<td class="value"><input class="form-control" type="text" name="WIDquantity" value="1" /></td>
							<td class="dscription">Quantity of commodity</td>
						</tr>
						<tr>
							<td class="parameter">trans_name</td>
							<td class="value"><input class="form-control" type="text" name="WIDtrans_name" value="IPhone 7 Plus" /></td>
							<td class="dscription">The name of the transaction which will be shown in the transaction record’s list.</td>
						</tr>
						<tr>
							<td class="parameter">partner_trans_id</td>
							<td class="value"><input class="form-control" type="text" name="WIDpartner_trans_id" /></td>
							<td class="dscription">The transaction Id on the partner system which could be a sale order id and payment order id. Partner is required to ensure its uniqueness in each call, this is also the key parameter for issue investigation</td>
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
							<td class="dscription">The currency used for labelling the price of the transaction. this is also the settlement currency Alipay settled to the partner.</td>
						</tr>
						<tr>
							<td class="parameter">trans_amount</td>
							<td class="value"><input class="form-control" type="text" name="WIDtrans_amount" value="0.01" /></td>
							<td class="dscription">the transaction amount in the currency given above Range: 0.01-100000000.00. Two digits after decimal point.</td>
						</tr>
						<tr>
							<td class="parameter">buyer_identity_code</td>
							<td class="value"><input class="form-control" type="text" name="WIDbuyer_identity_code" /></td>
							<td class="dscription">Used as identification of an Alipay user. This dynamic value, starts with 25～30 and has 16~24 digits, must be read from the user’s Alipay wallet in real time</td>
						</tr>
						<tr>
							<td class="parameter">identity_code_type</td>
							<td class="value"><select class="form-control" name="WIDidentity_code_type">
									<option value="barcode">barcode</option>
									<option value="QRcode">QRcode</option>
								</select></td>
							<td class="dscription">The identity code type could be QRcode or barcode</td>
						</tr>
						<tr>
							<td class="parameter">trans_create_time</td>
							<td class="value"><input class="form-control" type="text" name="WIDtrans_create_time" value="20180711120100" /></td>
							<td class="dscription">The time that the partner system creates the transaction.Format：YYYYMMDDHHMMSS</td>
						</tr>
						<tr>
							<td class="parameter">memo</td>
							<td class="value"><input class="form-control" type="text" name="WIDmemo" value="This is a test." /></td>
							<td class="dscription">Transaction notes</td>
						</tr>
						<tr>
							<td class="parameter">biz_product</td>
							<td class="value"><input class="form-control" type="text" name="WIDbiz_product" value="OVERSEAS_MBARCODE_PAY" /></td>
							<td class="dscription">Product name. For now it’s an static value which is mandatory Value: OVERSEAS_MBARCODE_PAY</td>
						</tr>
						<%--<tr>--%>
							<%--<td class="parameter">extend_info</td>--%>
							<%--<td class="value"><input class="form-control" type="text" name="WIDextend_info" value="{&quot;secondary_merchant_name&quot;:&quot;Lotte&quot;,&quot;secondary_merchant_id&quot;:&quot;123&quot;,&quot;secondary_merchant_industry&quot;:&quot;5812&quot;,&quot;store_id&quot;:&quot;A101&quot;,&quot;store_name&quot;:&quot;McDonald in 966 3rd Ave, New York&quot;,&quot;terminal_id&quot;:&quot;212133131&quot;,&quot;sys_service_provider_id&quot;:&quot;212133131&quot; }" /></td>--%>
							<%--<td class="dscription">Containing the extended parameters of the request. It’s in JSON format.</td>--%>
						<%--</tr>--%>
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