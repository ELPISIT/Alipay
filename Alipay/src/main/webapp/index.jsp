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
</head>
<body>
	<div id="main">
		<h1>Barcode Payment</h1>
		<h2><a href="barcode/md5/original/index.jsp">Barcode Payment Original MD5</a></h2>
		<h2><a href="barcode/md5/test/barcodepayment.jsp">Barcode Payment Test MD5</a></h2>
		<h2><a href="barcode/rsa/test/barcodepayment.jsp">Barcode Payment Test RSA</a></h2>
		<br>
		<h2><a href="barcode/md5/test/barcodepaymentcancel.jsp">Barcode Payment Cancel Test MD5</a></h2>
		<h2><a href="barcode/rsa/test/barcodepaymentcancel.jsp">Barcode Payment Cancel Test RSA</a></h2>
		<br>
		<h2><a href="barcode/md5/test/barcodepaymentrefund.jsp">Barcode Payment Refund Test MD5</a></h2>
		<h2><a href="barcode/rsa/test/barcodepaymentrefund.jsp">Barcode Payment Refund Test RSA</a></h2>
		<br>
		<h2><a href="barcode/md5/test/barcodepaymentquery.jsp">Barcode Payment Query Test MD5</a></h2>
		<h2><a href="barcode/rsa/test/barcodepaymentquery.jsp">Barcode Payment Query Test RSA</a></h2>
		<br><br><br>
		<h1>Merchant QR</h1>
		<h2><a href="merchantqr/md5/original/index.jsp">Merchant QR Code Payment Original MD5</a></h2>
		<h2><a href="merchantqr/md5/test/merchantqrcodepayment.jsp">Merchant QR Code Payment Test MD5</a></h2>
		<h2><a href="merchantqr/rsa/test/merchantqrcodepayment.jsp">Merchant QR Code Payment Test RSA</a></h2>
		<br>
		<h2><a href="merchantqr/md5/test/merchantqrcodepaymentcancel.jsp">Merchant QR Code Payment Cancel Test MD5</a></h2>
		<h2><a href="merchantqr/rsa/test/merchantqrcodepaymentcancel.jsp">Merchant QR Code Payment Cancel Test RSA</a></h2>
		<br>
		<h2><a href="merchantqr/md5/test/merchantqrcodepaymentmodify.jsp">Merchant QR Code Payment Modify Test MD5</a></h2>
		<h2><a href="merchantqr/rsa/test/merchantqrcodepaymentmodify.jsp">Merchant QR Code Payment Modify Test RSA</a></h2>
		<br>
		<h2><a href="merchantqr/md5/test/merchantqrcodepaymentmodifystatus.jsp">Merchant QR Code Payment Modify Status Test MD5</a></h2>
		<h2><a href="merchantqr/rsa/test/merchantqrcodepaymentmodifystatus.jsp">Merchant QR Code Payment Modify Status Test RSA</a></h2>
		<br>
		<h2><a href="merchantqr/md5/test/merchantqrcodepaymentquery.jsp">Merchant QR Code Payment Query Test MD5</a></h2>
		<h2><a href="merchantqr/rsa/test/merchantqrcodepaymentquery.jsp">Merchant QR Code Payment Query Test RSA</a></h2>
		<br>
		<h2><a href="merchantqr/md5/test/merchantqrcodepaymentrefund.jsp">Merchant QR Code Payment Refund Test MD5</a></h2>
		<h2><a href="merchantqr/rsa/test/merchantqrcodepaymentrefund.jsp">Merchant QR Code Payment Refund Test RSA</a></h2>
		<br><br><br>
		<h1>Transaction QR</h1>
		<h2><a href="transactionqr/md5/original/index.jsp">Transaction QR Code Payment Original MD5</a></h2>
		<h2><a href="transactionqr/md5/test/transactionqrcodepayment.jsp">Transaction QR Code Payment Test MD5</a></h2>
		<h2><a href="transactionqr/rsa/test/transactionqrcodepayment.jsp">Transaction QR Code Payment Test RSA</a></h2>
		<br>
		<h2><a href="transactionqr/md5/test/transactionqrcodepaymentcancel.jsp">Transaction QR Code Payment Cancel Test MD5</a></h2>
		<h2><a href="transactionqr/rsa/test/transactionqrcodepaymentcancel.jsp">Transaction QR Code Payment Cancel Test RSA</a></h2>
		<br>
		<h2><a href="transactionqr/md5/test/transactionqrcodepaymentrefund.jsp">Transaction QR Code Payment Refund Test MD5</a></h2>
		<h2><a href="transactionqr/rsa/test/transactionqrcodepaymentrefund.jsp">Transaction QR Code Payment Refund Test RSA</a></h2>
		<br>
		<h2><a href="transactionqr/md5/test/transactionqrcodepaymentquery.jsp">Transaction QR Code Payment Query Test MD5</a></h2>
		<h2><a href="transactionqr/rsa/test/transactionqrcodepaymentquery.jsp">Transaction QR Code Payment Query Test RSA</a></h2>
		<br><br><br>
		<h1>Cross Border Website</h1>
		<h2><a href="crossborderwebsite/md5/crossborderwebsiteforexcompare.jsp">Cross Border Website Forex Compare Test MD5</a></h2>
		<h2><a href="crossborderwebsite/rsa/crossborderwebsiteforexcompare.jsp">Cross Border Website Forex Compare Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwebsite/md5/crossborderwebsiteforexliquidation.jsp">Cross Border Website Forex Liquidation Test MD5</a></h2>
		<h2><a href="crossborderwebsite/rsa/crossborderwebsiteforexliquidation.jsp">Cross Border Website Forex Liquidation Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwebsite/md5/crossborderwebsiteforexrate.jsp">Cross Border Website Forex Rate Test MD5</a></h2>
		<h2><a href="crossborderwebsite/rsa/crossborderwebsiteforexrate.jsp">Cross Border Website Forex Rate Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwebsite/md5/crossborderwebsitepayment.jsp">Cross Border Website Payment Test MD5</a></h2>
		<h2><a href="crossborderwebsite/rsa/crossborderwebsitepayment.jsp">Cross Border Website Payment Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwebsite/md5/crossborderwebsitepaymentnotifyverify.jsp">Cross Border Website Payment Notify Verify Test MD5</a></h2>
		<h2><a href="crossborderwebsite/rsa/crossborderwebsitepaymentnotifyverify.jsp">Cross Border Website Payment Notify Verify Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwebsite/md5/crossborderwebsitepaymentquery.jsp">Cross Border Website Payment Query Test MD5</a></h2>
		<h2><a href="crossborderwebsite/rsa/crossborderwebsitepaymentquery.jsp">Cross Border Website Payment Query Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwebsite/md5/crossborderwebsitepaymentrefund.jsp">Cross Border Website Payment Refund Test MD5</a></h2>
		<h2><a href="crossborderwebsite/rsa/crossborderwebsitepaymentrefund.jsp">Cross Border Website Payment Refund Test RSA</a></h2>
		<br><br><br>
		<h1>Cross Border WAP</h1>
		<h2><a href="crossborderwap/md5/crossborderwapforexcompare.jsp">Cross Border WAP Forex Compare Test MD5</a></h2>
		<h2><a href="crossborderwap/rsa/crossborderwapforexcompare.jsp">Cross Border WAP Forex Compare Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwap/md5/crossborderwapforexliquidation.jsp">Cross Border WAP Forex Liquidation Test MD5</a></h2>
		<h2><a href="crossborderwap/rsa/crossborderwapforexliquidation.jsp">Cross Border WAP Forex Liquidation Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwap/md5/crossborderwapforexrate.jsp">Cross Border WAP Forex Rate Test MD5</a></h2>
		<h2><a href="crossborderwap/rsa/crossborderwapforexrate.jsp">Cross Border WAP Forex Rate Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwap/md5/crossborderwappayment.jsp">Cross Border WAP Payment Test MD5</a></h2>
		<h2><a href="crossborderwap/rsa/crossborderwappayment.jsp">Cross Border WAP Payment Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwap/md5/crossborderwappaymentnotifyverify.jsp">Cross Border WAP Payment Notify Verify Test MD5</a></h2>
		<h2><a href="crossborderwap/rsa/crossborderwappaymentnotifyverify.jsp">Cross Border WAP Payment Notify Verify Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwap/md5/crossborderwappaymentquery.jsp">Cross Border WAP Payment Query Test MD5</a></h2>
		<h2><a href="crossborderwap/rsa/crossborderwappaymentquery.jsp">Cross Border WAP Payment Query Test RSA</a></h2>
		<br>
		<h2><a href="crossborderwap/md5/crossborderwappaymentrefund.jsp">Cross Border WAP Payment Refund Test MD5</a></h2>
		<h2><a href="crossborderwap/rsa/crossborderwappaymentrefund.jsp">Cross Border WAP Payment Refund Test RSA</a></h2>
	</div>
</body>
</html>