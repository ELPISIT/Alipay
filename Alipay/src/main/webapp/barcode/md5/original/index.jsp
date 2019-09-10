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
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
	<title>alipay.acquire.overseas.spot.pay</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<style>
		*{
			margin:0;
			padding:0;
		}
		ul,ol{
			list-style:none;
		}
		.title{
			color: #ADADAD;
			font-size: 14px;
			font-weight: bold;
			padding: 8px 16px 5px 10px;
		}
		.hidden{
			display:none;
		}

		.new-btn-login-sp{
			border:1px solid #D74C00;
			padding:1px;
			display:inline-block;
		}

		.new-btn-login{
			background-color: #ff8c00;
			color: #FFFFFF;
			font-weight: bold;
			border: medium none;
			width:82px;
			height:28px;
		}
		.new-btn-login:hover{
			background-color: #ffa300;
			width: 82px;
			color: #FFFFFF;
			font-weight: bold;
			height: 28px;
		}
		.bank-list{
			overflow:hidden;
			margin-top:5px;
		}
		.bank-list li{
			float:left;
			width:153px;
			margin-bottom:5px;
		}

		#main{
			width:750px;
			margin:0 auto;
			font-size:14px;
			font-family:'宋体';
		}
		#logo{
			background-color: transparent;
			background-image: url("images/new-btn-fixed.png");
			border: medium none;
			background-position:0 0;
			width:166px;
			height:35px;
			float:left;
		}
		.red-star{
			color:#f00;
			width:10px;
			display:inline-block;
		}
		.null-star{
			color:#fff;
		}
		.content{
			margin-top:5px;
		}

		.content dt{
			width:160px;
			display:inline-block;
			text-align:right;
			float:left;

		}
		.content dd{
			margin-left:100px;
			margin-bottom:5px;
		}
		#foot{
			margin-top:10px;
		}
		.foot-ul li {
			text-align:center;
		}
		.note-help {
			color: #999999;
			font-size: 12px;
			line-height: 130%;
			padding-left: 3px;
		}

		.cashier-nav {
			font-size: 14px;
			margin: 15px 0 10px;
			text-align: left;
			height:30px;
			border-bottom:solid 2px #CFD2D7;
		}
		.cashier-nav ol li {
			float: left;
		}
		.cashier-nav li.current {
			color: #AB4400;
			font-weight: bold;
		}
		.cashier-nav li.last {
			clear:right;
		}
		.alipay_link {
			text-align:right;
		}
		.alipay_link a:link{
			text-decoration:none;
			color:#8D8D8D;
		}
		.alipay_link a:visited{
			text-decoration:none;
			color:#8D8D8D;
		}
	</style>
</head>
<body text=#000000 bgColor="#ffffff" leftMargin=0 topMargin=4>
<div id="main">
	<div id="head">
		<dl class="alipay_link">
			<a target="_blank" href="http://www.alipay.com/"><span>支付宝首页</span></a>|
			<a target="_blank" href="https://b.alipay.com/home.htm"><span>商家服务</span></a>|
			<a target="_blank" href="http://help.alipay.com/support/index_sh.htm"><span>帮助中心</span></a>
		</dl>
		<span class="title">alipay.acquire.overseas.spot.pay接口快速通道</span>
	</div>
	<div class="cashier-nav">
		<ol>
			<li class="current">1、确认信息 →</li>
			<li>2、点击确认 →</li>
			<li class="last">3、确认完成</li>
		</ol>
	</div>
	<form name=alipayment action=alipayapi.jsp method=post target="_blank">
		<div id="body" style="clear:left">
			<dl class="content">
				<dt>alipay_seller_id：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDalipay_seller_id" value="" />
					<span>Same value with partner ID
</span>
				</dd>
				<dt>quantity：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDquantity" value="1"/>
					<span>Quantity of commodity
</span>
				</dd>
				<dt>transaction name：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDtrans_name" value="IPhone 7 Plus"/>
					<span>The name of the transaction which will be shown in the transaction record’s list.
</span>
				</dd>
				<dt>partner_trans_id：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDpartner_trans_id" />
					<span>The transaction Id on the partner system which could be a sale order id and payment order id.
</span>
				</dd>
				<dt>currency：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDcurrency" value="USD"/>
					<span>The currency used for labelling the price of the transaction. this is also the settlement currency Alipay settled to the partner.
</span>
				</dd>
				<dt>trans_amount：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDtrans_amount" value="0.01"/>
					<span>the transaction amount in the currency given above;
</span>
				</dd>
				<dt>buyer_identity_code：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDbuyer_identity_code" />
					<span>Used as identification of an Alipay user.
</span>
				</dd>
				<dt>identity_code_type：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDidentity_code_type" value="barcode"/>
					<span>The identity code type could be QRcode or barcode
</span>
				</dd>
				<dt>trans_create_time：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDtrans_create_time" value="20180711124000"/>
					<span>The time that the partner system creates the transaction.Format：YYYYMMDDHHMMSS
</span>
				</dd>
				<dt>memo：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDmemo" value="This is a test."/>
					<span>Transaction notes
</span>
				</dd>
				<dt>biz_product：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDbiz_product" value="OVERSEAS_MBARCODE_PAY"/>
					<span>Product name. For now it’s an static value which is mandatory Value: OVERSEAS_MBARCODE_PAY
</span>
				</dd>
				<dt>extend_info：</dt>
				<dd>
					<span class="null-star">*</span>
					<input size="30" name="WIDextend_info" value="{&quot;secondary_merchant_name&quot;:&quot;Lotte&quot;,&quot;secondary_merchant_id&quot;:&quot;123&quot;,&quot;secondary_merchant_industry&quot;:&quot;5812&quot;,&quot;store_id&quot;:&quot;A101&quot;,&quot;store_name&quot;:&quot;McDonald in 966 3rd Ave, New York&quot;,&quot;terminal_id&quot;:&quot;212133131&quot; }"/>
					<span>Containing the extended parameters of the request. It’s in JSON format.</span>
				</dd>


				<dt></dt>
				<dd>
                        <span class="new-btn-login-sp">
                            <button class="new-btn-login" type="submit" style="text-align:center;">确 认</button>
                        </span>
				</dd>
			</dl>
		</div>
	</form>
	<div id="foot">
		<ul class="foot-ul">
			<li><font class="note-help">如果您点击“确认”按钮，即表示您同意该次的执行操作。 </font></li>
			<li>
				支付宝版权所有 2011-2015 ALIPAY.COM
			</li>
		</ul>
	</div>
</div>
</body>
</html>