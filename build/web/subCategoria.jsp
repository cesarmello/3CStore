<%@include file="inc/conn.jsp" %>
<%@include file="inc/header.jsp" %>
<%@include file="inc/nav.jsp" %>

<section class="wrapper">
    <%@include file="inc/sidebar.jsp" %>
    <div class="conteudo">
        
        <sql:query dataSource="${dbconn}" var="SubCatSP">
            SELECT S.idSubCategoria, S.subCategoria, P.idProduto, P.produto, P.foto, P.descricaoRes, P.preco
            FROM  tbsubcategoria S
            left join tbproduto P on P.idSubCategoria = S.idSubCategoria
            where S.idSubCategoria=<%= request.getParameter("id") %>
            order by P.produto;;
        </sql:query>
        
        <h3 class="destaques"> Você esta em </h3>
        
        <ul class="prdtos">
            <c:forEach var="colSP" items="${SubCatSP.rows}">

            <li>
                <a href="produto.jsp?id=<c:out value='${colSP.idProduto}'></c:out>">
                    <img src="<c:out value='${colSP.foto}'></c:out>" alt="<c:out value='${colSP.descricaoRes}'></c:out>">
                    <p><c:out value='${colSP.produto}'></c:out><br />
                        <strong>RS <c:out value='${colSP.preco}'></c:out></strong>
                    </p>
                </a>
            </li>
            </c:forEach>
        </ul>

    </div><!-- /conteudo -->
</section>
            
<%@include file="inc/footer.jsp" %>