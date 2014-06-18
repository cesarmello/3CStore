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