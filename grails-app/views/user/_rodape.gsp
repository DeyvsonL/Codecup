<%@ page import="codecup.ObraController" %>


<div id="rodape" class="col-xs-12">
            <div id="news" class="col-md-4 col-xs-12">
                <center>
                    <h1>Seja notificado</h1>
                    <p>Receba semanalmente todas as novidades do Obra Limpa e fique por dentro de tudo que rola nas obras p&uacuteblicas.</p>
                    <input id="campoEmail" type="text"/></br></br>
                    <button class="but">Receber notifica&ccedil&otildees</button></br></br></br>
                </center>
            </div>
            <div id="social" class="col-md-4 col-xs-12">
                <center>
                    <h1>Acompanhe-nos nas redes sociais</h1>
                    <g:img dir="images" file="iconFace.png"/>
                    <g:img dir="images" file="iconInstagram.png"/>
                    <g:img dir="images" file="iconTwitter.png"/>
                </center>
            </div>
            <center>
                <div id="links" class="col-md-4 col-xs-12">
                    <center>
                        <a href="#">Fale conosco</a></br></br>

                        <a href="#">Sobre n&oacutes</a></br></br>

                        <a href="#">Pol&iacutetica de privacidade</a>
                    </center></br></br></br>
                </div>
            </center>
        </div>
<g:set var="endjson" value="${new ObraController().jsonObras()}"/>






        <g:javascript library="js" />

</body>

</html>