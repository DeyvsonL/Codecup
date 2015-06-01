<%@ page import="codecup.Politico; codecup.Obra" %>
<g:render template="cabecalho" />
<div id="mapa" class="oculto">
    <!-- Maps API Javascript -->
    <script src="http://maps.googleapis.com/maps/api/js?key=AIzaSyBehq-Kj64bMyeXf1tbghwQrzCIhxSU7nY&amp;sensor=false"></script>
</div>


<div id="politicos" class="oculto">
    <div id="listaPoliticos" class="col-md-6 col-sm-6 col-xs-12">
        <table>
           <tbody>
           ${Politico.updateQualidade()}
            <g:each in="${Politico.listOrderByQualidade()}" var="politico" status="i">

                <tr onclick="selecionaPolitico(${politico.id});">

                    <td width="50"><img src="${fieldValue(bean: politico, field: "fotoUrl")}" width="50px"/></td>
                    <td><p><b> ${fieldValue(bean: politico, field: "nome")}</b></p></td>


                </tr>
            </g:each>
            </tbody>
        </table>
    </div>

    <div id="politicoSelecionado" class="col-md-6 col-sm-6 col-xs-12">
        <g:each in="${Politico.findAll()}" var="politico" status="i">

            <div id="politico${politico.id}" class="politicoSelecionado" style="display: none; border: 1px solid #2FC1E2;" width="100%">
                <img src="${politico.fotoUrl}"/>
                <div class="infoPoliticoSelecionado">
                    <h1>${politico.nome}</h1>
                    <p>${politico.descricao}</p>

                    <b>
                        <table>
                            <tbody>
                            <g:each in="${politico.obras}" var="obra" status="j">

                                <tr>

                                    <center><td width="50">${obra.nome}</td></center>


                                </tr>
                            </g:each>
                            </tbody>
                        </table>
                    </b>
                </div>

            </div>
        </g:each>

    </div>
</div>

<div id="obras" class="oculto">
    <div id="listaObras" class="col-md-6 col-sm-6 col-xs-12">
    <table>
        <tbody>
        <g:each in="${Obra.findAll()}" var="obra" status="i">

            <tr onclick="selecionaObra(${obra.id});">

                <td width="50"><img src="${fieldValue(bean: obra, field: "fotoUrl")}" width="50px"/></td>
                <td><p><b> ${fieldValue(bean: obra, field: "nome")}</b></p></td>


            </tr>
        </g:each>
        </tbody>
    </table>
    </div>

    <div id="obraSelecionada" class="col-md-6 col-sm-6 col-xs-12">
        <g:each in="${Obra.findAll()}" var="obra" status="i">

           <div id="obra${obra.id}" class="obraSelecionada" style="display: none; border: 1px solid #2FC1E2;" width="100%">
               <img src="${obra.fotoUrl}"/>
               <div class="infoObraSelecionada">
                 <h1>${obra.nome}</h1>
                 <p>${obra.descricao}</p>
                <h1>Vencimento da data</h1>
                 <p>${obra.dataPlanejada}</p>
                 <h1>Orçamento</h1>
                 <p>Inicial: ${obra.precoPlanejado}</p>
                   <p>Atual: ${obra.precoFinal}</p>

<b>
                   <g:if test="${obra.precoPlanejado<obra.precoFinal}">
                       <p style="color:red">O valor da obra ultrapassou o or&ccedilamento planejado!</p>
                   </g:if>
                   <g:else><p style="color:green">O valor da obra est&aacute dentro do or&ccedilamento!</p></g:else>

                    <g:if test="${obra.dataPlanejada.getTime()<System.currentTimeMillis()}">
                        <p style="color:red">A entrega da obra est&aacute atrasada!</p>
                    </g:if>
                   <g:else>
                       <p style="color:green">A obra est&aacute dentro do prazo de entrega!</p>
                   </g:else>
    </b>
               </div>
               &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
               <a href="https://twitter.com/share" class="twitter-share-button" data-url="http://localhost:8080/Codecup/user/index" data-hashtags="ObraLimpa" data-dnt="true">Tweet</a>
               <script>!function(d,s,id){var js,fjs=d.getElementsByTagName(s)[0],p=/^http:/.test(d.location)?'http':'https';if(!d.getElementById(id)){js=d.createElement(s);js.id=id;js.src=p+'://platform.twitter.com/widgets.js';fjs.parentNode.insertBefore(js,fjs);}}(document, 'script', 'twitter-wjs');</script>
               &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp

               <div class="fb-share-button" data-href="http://localhost:8080/Codecup/user/index" data-layout="button_count"></div>
           </div>
        </g:each>

    </div>
</div>

<g:render template="rodape"/>