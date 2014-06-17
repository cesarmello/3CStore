<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ page import="javax.servlet.http.*,javax.servlet.*" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/sql"  prefix= "sql" %>
<%@include file="inc/conn.jsp" %>
<%@include file="inc/header.jsp" %>
<%@include file="inc/nav.jsp" %>

<section class="wrapper">
    <%@include file="inc/slider.jsp" %>
    <%@include file="inc/sidebar.jsp" %>
    <div class="conteudo">
        <%@include file="conteudo.jsp" %>
    </div><!-- /conteudo -->
</section>
            
<%@include file="inc/footer.jsp" %>