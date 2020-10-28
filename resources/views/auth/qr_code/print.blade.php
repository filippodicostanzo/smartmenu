<!DOCTYPE html>
<html>
<head>
    <title>PDF QR Code</title>
</head>
<body>
<div class="row">
    <div class="col-6 text-center">
        <p>www.amalficoastapps.it</p>
        <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(200)->generate($data['url'])) !!} ">
    </div>
    <div class="col col-6 text-center">
        <p>www.amalficoastapps.it</p>
        <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(200)->generate($data['url'])) !!} ">
    </div>

    <div class="col col-6 text-center">
        <p>www.amalficoastapps.it</p>
        <img src="data:image/png;base64, {!! base64_encode(QrCode::format('png')->size(200)->generate($data['url'])) !!} ">
    </div>
</div>


</body>
</html>

<style>
    .text-center {
        text-align: center;
    }

    img{
        margin-bottom: 20px;
    }

    .col-6 {
        margin-top: 20px;
        width: 48%;
        border: 1px black dotted;
        display: block;
        margin: 20px auto;
    }
    p-b-10 {
        padding-bottom: 10px;
    }
</style>

