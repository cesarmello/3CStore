<%@include file="inc/conn.jsp" %>
<%@include file="inc/header.jsp" %>
<%@include file="inc/nav.jsp" %>

<section class="wrapper">
    <%@include file="inc/slider.jsp" %>
    <%@include file="inc/sidebar.jsp" %>
    <div class="conteudo">
        <section class="wrapper">
            <div class="conteudo">

                <sql:query dataSource="${dbconn}" var="index">
                    SELECT S.idSubCategoria, S.subCategoria, P.idProduto, P.produto, P.foto, P.descricaoRes, P.preco, P.promocao
                    FROM  tbsubcategoria S
                    left join tbproduto P on P.idSubCategoria = S.idSubCategoria 
                    where P.promocao=1 order by P.produto limit 16;
                </sql:query>

                <h3 class="destaques"> Produtos em Oferta!!! </h3>

                <ul class="prdtos">
                    <c:forEach var="tudo" items="${index.rows}">

                        <li>
                            <a href="produto.jsp?id=<c:out value='${tudo.idProduto}'></c:out>">
                                <img src="<c:out value='${tudo.foto}'></c:out>" alt="<c:out value='${tudo.descricaoRes}'></c:out>">
                                <p>
                                    <c:out value='${tudo.produto}'></c:out><br />
                                    <strong>RS <c:out value='${tudo.preco}'></c:out></strong>
                                </p>
                            </a>
                        </li>
                    </c:forEach>
                </ul>

            </div><!-- /conteudo -->
        </section>

    </div><!-- /conteudo -->
</section>

<%@include file="inc/footer.jsp" %>

<table cellpadding="0" cellspacing="0"><tbody><tr class="cinza"><td>Modelo do Computador</td><td>ATTIS Wks Series </td></tr><tr class=""><td>Sistema Operacional</td><td>Linux </td></tr><tr class="cinza"><td>Versão do Sistema Operacional</td><td>Kronnix </td></tr><tr class=""><td>Fabricante do Processador</td><td>Intel ® </td></tr><tr class="cinza"><td>Modelo do Processador</td><td>Intel ® Core i7 </td></tr><tr class=""><td>Série do Processador</td><td>3770 </td></tr><tr class="cinza"><td>Clock</td><td>3.4 GHz </td></tr><tr class=""><td>Barramento</td><td>5 GT/s </td></tr><tr class="cinza"><td>Cache</td><td>8 MB </td></tr><tr class=""><td>Memória Ram</td><td>4 GB</td></tr><tr class="cinza"><td>Tipo e Clock da Memória</td><td>DDR3 1333 </td></tr><tr class=""><td>Expansível Até</td><td>16 GB</td></tr><tr class="cinza"><td>Capacidade do HD</td><td>500 GB</td></tr><tr class=""><td>RPM - Rotações por Minuto</td><td>5.400 </td></tr><tr class="cinza"><td>Acompanha Monitor</td><td>Não </td></tr><tr class=""><td>Placa de Vídeo Dedicada</td><td>Não </td></tr><tr class="cinza"><td>Modelo da Placa de Vídeo</td><td>Intel® HD Graphics 4000 </td></tr><tr class=""><td>Chipset de Vídeo</td><td>Intel® H61 </td></tr><tr class="cinza"><td>Memória da Placa de Vídeo</td><td>Gerenciado pelo chipset </td></tr><tr class=""><td>Leitor de Cartões</td><td>Não </td></tr><tr class="cinza"><td>Gravador de DVD</td><td>Sim </td></tr><tr class=""><td>LightScribe</td><td>Não </td></tr><tr class="cinza"><td>Conexões USB</td><td>4 </td></tr><tr class=""><td>Entrada HDMI</td><td>Sim </td></tr><tr class="cinza"><td>Conector DVI</td><td>Não </td></tr><tr class=""><td>Entrada VGA</td><td>1 </td></tr><tr class="cinza"><td>Porta Serial</td><td>0 </td></tr><tr class=""><td>Porta Paralela</td><td>0 </td></tr><tr class="cinza"><td>Conector S-Vídeo</td><td>0 </td></tr><tr class=""><td>Conector de TV</td><td>Não </td></tr><tr class="cinza"><td>Entrada de Cabo de Rede - RJ45</td><td>1 </td></tr><tr class=""><td>Entrada PS/2 para Teclado</td><td>Sim </td></tr><tr class="cinza"><td>Entrada PS/2 para Mouse</td><td>Sim </td></tr><tr class=""><td>Baias</td><td>2 </td></tr><tr class="cinza"><td>Slot SATA2</td><td>4 </td></tr><tr class=""><td>Slot IDE</td><td>0 </td></tr><tr class="cinza"><td>Slot PCI-Express - Quantidade</td><td>1 </td></tr><tr class=""><td>Slot PCI-Express - Velocidade</td><td>1X </td></tr><tr class="cinza"><td>Slot PCI</td><td>0 </td></tr><tr class=""><td class="nome">Altura</td><td>36 cm</td></tr><tr class="cinza"><td class="nome">Largura</td><td>18 cm</td></tr><tr class=""><td class="nome">Comprimento</td><td>42 cm</td></tr><tr class="cinza"><td class="nome">Peso</td><td>6.1 kg</td></tr><tr class=""><td class="nome">Garantia</td><td> 12 meses </td></tr></tbody></table>