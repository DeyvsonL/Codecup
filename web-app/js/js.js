var map;

function initialize() {
    var latlng = new google.maps.LatLng(-18.8800397, -47.05878999999999);

    var options = {
        zoom: 5,
        center: latlng,
        mapTypeId: google.maps.MapTypeId.ROADMAP
    };

    map = new google.maps.Map(document.getElementById("mapa"), options);
}

initialize();


var idInfoBoxAberto;
var infoBox = [];

function abrirInfoBox(id, marker) {
    if (typeof(idInfoBoxAberto) == 'number' && typeof(infoBox[idInfoBoxAberto]) == 'object') {
        infoBox[idInfoBoxAberto].close();
    }
    infoBox[id].open(map, marker);
    idInfoBoxAberto = id;
}


function carregarPontos() {

    var endjson="/Codecup/js/json.json";
    $.getJSON(endjson, function(pontos) {

        $.each(pontos, function(index, ponto) {

            var marker = new google.maps.Marker({
                position: new google.maps.LatLng(ponto.latitude, ponto.longitude),
                title: "Meu ponto personalizado! :-D",
                map: map,
                icon: "/Codecup/images/icon.png"
            });


            var infowindow = new google.maps.InfoWindow(), marker;

            google.maps.event.addListener(marker, 'click', (function(marker, i) {
                return function() {
                    if(idInfoBoxAberto!=null){
                        idInfoBoxAberto.close();
                    }
                    infowindow.setContent("<b><h2>"+ponto.nome+"</h2></b></br><img src=\""+ponto.fotoUrl+"\" width=\"150px;\"/></br>Obra prevista para: "+ponto.dataPlanejada.substring(8,10)+"/"+ponto.dataPlanejada.substring(5,7)+"/"+ponto.dataPlanejada.substring(0,4)+".</br>Or&ccedilamento inicial: R$"+ponto.precoPlanejado+".</br>Or&ccedilamento final: R$"+ponto.precoFinal+".");
                    //Convertendo String para Data
                    var st = ponto.dataPlanejada;
                    var pattern = /(\d{2})\.(\d{2})\.(\d{4})/;
                    var dataValidade = new Date(st.replace(pattern,'$3-$2-$1'));

                    //Data atual
                    var dataAtual = new Date();

                    if(dataValidade>dataAtual){
                        infowindow.setContent(infowindow.getContent()+"</br><b style=\"color:green\">Obra em dia!</b>.");
                    }else{
                        infowindow.setContent(infowindow.getContent()+"</br><b style=\"color:red\">Obra atrasada!</b>.");
                    }

                    if(ponto.precoPlanejado>ponto.precoFinal){
                        infowindow.setContent(infowindow.getContent()+"</br><b style=\"color:green\">Or&ccedilamento em ordem!</b>.");
                    }else{
                        infowindow.setContent(infowindow.getContent()+"</br><b style=\"color:red\">Houve estouro no or&ccedilamento!</b>.");
                    }
                    infowindow.setContent(infowindow.getContent()+"</br></br><iframe id=\"twitter-widget-0\" scrolling=\"no\" frameborder=\"0\" allowtransparency=\"true\" src=\"https://platform.twitter.com/widgets/tweet_button.d9c893c960e2d3574122a44beba13539.en.html#_=1433078770659&amp;count=horizontal&amp;dnt=true&amp;hashtags=ObraLimpa&amp;id=twitter-widget-0&amp;lang=en&amp;original_referer=file%3A%2F%2F%2FC%3A%2FUsers%2FDeyvson%2FDesktop%2Ftwitter-e-face.html&amp;size=m&amp;url=http://localhost:8080/Codecup/user/index\" class=\"twitter-share-button twitter-tweet-button twitter-share-button twitter-count-horizontal\" title=\"Twitter Tweet Button\" data-twttr-rendered=\"true\" style=\"position: static; visibility: visible; width: 78px; height: 20px;\"></iframe>");
                    infowindow.setContent(infowindow.getContent()+"&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp<div class=\"fb-share-button fb_iframe_widget\" data-href=\"https://localhost:8080/Codecup/user/index\" data-layout=\"button_count\" fb-xfbml-state=\"rendered\" fb-iframe-plugin-query=\"app_id=&amp;container_width=1061&amp;href=https%3A%2F%2Flocalhost%3A8080%2FCodecup%2Fuser%2Findex&amp;layout=button_count&amp;locale=pt_BR&amp;sdk=joey\"><span style=\"vertical-align: bottom; width: 123px; height: 20px;\"><iframe name=\"f28842797c\" width=\"1000px\" height=\"1000px\" frameborder=\"0\" allowtransparency=\"true\" allowfullscreen=\"true\" scrolling=\"no\" title=\"fb:share_button Facebook Social Plugin\" src=\"http://www.facebook.com/v2.3/plugins/share_button.php?app_id=&amp;channel=http%3A%2F%2Fstatic.ak.facebook.com%2Fconnect%2Fxd_arbiter%2FQrU_tEEWym9.js%3Fversion%3D41%23cb%3Df31a20893c%26domain%3Dlocalhost%26origin%3Dhttp%253A%252F%252Flocalhost%253A8080%252Ff29907f108%26relation%3Dparent.parent&amp;container_width=1061&amp;href=https%3A%2F%2Flocalhost%3A8080%2FCodecup%2Fuser%2Findex&amp;layout=button_count&amp;locale=pt_BR&amp;sdk=joey\" style=\"border: none; visibility: visible; width: 123px; height: 20px;\" class=\"\"></iframe></span></div>");
                    infowindow.open(map, marker);
                    idInfoBoxAberto=infowindow;
                }
            })(marker))


        });

    });

}

carregarPontos();





function abrirMapa() {
    $("#politico").addClass("oculto");
    $("#obras").addClass("oculto");
    $("#mapa").removeClass("oculto");
}

function abrirPolitico() {
    $("#mapa").addClass("oculto");
    $("#obras").addClass("oculto");
    $("#politicos").removeClass("oculto");
}

function abrirObras() {
    $("#mapa").addClass("oculto");
    $("#politico").addClass("oculto");
    $("#obras").removeClass("oculto");
}


var selecionadaAnterior=0;
function selecionaObra(id){
    $("#obra"+(selecionadaAnterior)).css("display", "none");

    $("#obra"+(id)).css("display", "block");
    selecionadaAnterior=id;
}

var selecionadoAnterior=0;
function selecionaPolitico(id){
    $("#politico"+(selecionadoAnterior)).css("display", "none");

    $("#politico"+(id)).css("display", "block");
    selecionadoAnterior=id;
}