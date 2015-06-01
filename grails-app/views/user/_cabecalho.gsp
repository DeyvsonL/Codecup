<!DOCTYPE html>
<html lang="pt-br">
    <head>
        <meta charset="utf-8" />
        <title></title>
        <link rel="stylesheet" type="text/css" href="${resource(dir:'css', file: 'css.css')}" />
        <meta name="viewport" content="width=device-width, user-scalable=no">

       



<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap-theme.min.css">

<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>

<g:javascript library="jquery-1.11.3.min"/>
    </head>
 
    <body>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
        var js, fjs = d.getElementsByTagName(s)[0];
        if (d.getElementById(id)) return;
        js = d.createElement(s); js.id = id;
        js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.3";
        fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>


    <div id="topo">
        <div id="logo" >
            <img src="${resource(dir:'images', file: 'BannerLogo.png')}"  class=" col-sm-12 col-xs-12" />
        </div>
        <div class="col-md-12" id="menu">
            <center>
                <div class="opcaoMenu col-md-4 col-sm-4 col-xs-12" onclick="abrirObras()">
                    <g:img dir="images" file="iconeObras.png" />
                    <h1>Obras</h1>
                    <p>Verifique o andamento das obras p&uacuteblicas e saiba quais est&atildeo no prazo.</p>
                </div>
                <div class="opcaoMenu col-md-4 col-sm-4 col-xs-12" onclick="abrirPolitico()">
                    <g:img dir="images"  file="iconePolitico.png"/>
                    <h1>Ache seu Pol&iacutetico</h1>
                    <p>Encontre perfis de pol&iacuteticos e saiba o empenho deles com a cidade.</p>
                </div>
                <div class="opcaoMenu col-md-4 col-sm-4 col-xs-12" onclick="abrirMapa()">
                    <g:img dir="images" file="iconeMapa.png"/>
                    <h1>Mapa</h1>
                    <p>Saiba quais s&atildeo os pontos onde existem obras governamentais e consulte seu andamento.</p>
                </div>
            </center>
        </div>
    </div>


