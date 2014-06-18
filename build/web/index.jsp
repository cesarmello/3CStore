<%@include file="inc/conn.jsp" %>
<%@include file="inc/header.jsp" %>
<%@include file="inc/nav.jsp" %>

<section class="wrapper">
    <%@include file="inc/slider.jsp" %>
    <%@include file="inc/sidebar.jsp" %>
    <div class="conteudo">
        <section class="wrapper">
            <div class="conteudo">

                <sql:query dataSource="${dbconn}" var="SubCatSP">
                    SELECT S.idSubCategoria, S.subCategoria, P.idProduto, P.produto, P.foto, P.descricaoRes, P.preco
                    FROM  tbsubcategoria S
                    left join tbproduto P on P.idSubCategoria = S.idSubCategoria limit 12;
                </sql:query>

                <h3 class="destaques"> Produtos em Oferta!!! </h3>

                <ul class="prdtos">
                    <c:forEach var="colSP" items="${SubCatSP.rows}">

                        <li>
                            <a href="produto.jsp?id=<c:out value='${colSP.idProduto}'></c:out>">
                                <img src="<c:out value='${colSP.foto}'></c:out>" alt="<c:out value='${colSP.descricaoRes}'></c:out>">
                                <p>
                                    <c:out value='${colSP.produto}'></c:out><br />
                                    <strong>RS <c:out value='${colSP.preco}'></c:out></strong>
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