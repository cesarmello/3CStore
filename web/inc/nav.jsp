<aside>
    <nav>
        <h2>Seções</h2>

        <c:forEach var="col" items="${cat.rows}">
            
            <sql:query dataSource="${dbconn}" var="subCat">
                select * from tbSubCategoria where idCategoria=<c:out value="${col.idCategoria}"></c:out> order by subCategoria limit 4;
            </sql:query>
            <h3 class="tit-categoria-1"><c:out value="${col.categoria}"></c:out></h3>
            <ul>

                <c:forEach var="col2" items="${subCat.rows}">
                    <li>
                        <a href="#">
                            <c:out value="${col2.subCategoria}"></c:out>
                        </a>
                    </li>
                </c:forEach>	
            </ul>
        </c:forEach>
    </nav>	
</aside>