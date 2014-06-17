<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="inc/header.jsp" %>
<link rel="stylesheet" href="css/jquery-ui.css" />
<script src="js/jquery-1.9.1.js"></script>
<script src="js/jquery-ui.js"></script>
<script>
    $(document).ready(function() {
        $("#tabs").tabs();
    });
</script>
<%@include file="inc/nav.jsp" %>

<section class="wrapper">
    <%@include file="inc/slider.jsp" %>
    <%@include file="inc/sidebar.jsp" %>
    <div class="conteudo">
        <p class="breadcrumbs"><a href="index.jsp">HOME</a> > <a href="#">INFORMÁTICA</a></p>
        <h3 id="categoria-info" class="destaques ">Informática</h3>
        <div class="produto-destaque">
            <img src="img/produtos/notebook-sam-ativ6.jpg" alt="Notebook IntelBras">
        </div>
        <div class="produto-descricao">
            <h4>Notebook Samsung i5</h4>
            <p class="especificacoes">
                Notebook Samsung ATIV Book 6 com Intel Core i5 8GB 1TB (2GB de Memória Dedicada) LED 15,6" Windows 8
            </p>
            <p id="preco"><strong>R$ 2.599,00</strong></p>
            <p>18x sem Juros no cartão!</p>
            <a class="btn btn-success btn-comprar" href="carrinho.jsp">Comprar</a>
        </div>

        <div class="clear"></div>
        <br />

        <div id="tabs">
            <ul>
                <li><a href="#tabs-1">Descrição</a></li>
                <li><a href="#tabs-2">Comentários</a></li>
            </ul>
            <div id="tabs-1">
                <p>Proin elit arcu, rutrum commodo, vehicula tempus, commodo a, risus. Curabitur nec arcu. Donec sollicitudin mi sit amet mauris. Nam elementum quam ullamcorper ante. Etiam aliquet massa et lorem. Mauris dapibus lacus auctor risus. Aenean tempor ullamcorper leo. Vivamus sed magna quis ligula eleifend adipiscing. Duis orci. Aliquam sodales tortor vitae ipsum. Aliquam nulla. Duis aliquam molestie erat. Ut et mauris vel pede varius sollicitudin. Sed ut dolor nec orci tincidunt interdum. Phasellus ipsum. Nunc tristique tempus lectus.</p>
            </div>
            <div id="tabs-2">
                <p>Morbi tincidunt, dui sit amet facilisis feugiat, odio metus gravida ante, ut pharetra massa metus id nunc. Duis scelerisque molestie turpis. Sed fringilla, massa eget luctus malesuada, metus eros molestie lectus, ut tempus eros massa ut dolor. Aenean aliquet fringilla sem. Suspendisse sed ligula in ligula suscipit aliquam. Praesent in eros vestibulum mi adipiscing adipiscing. Morbi facilisis. Curabitur ornare consequat nunc. Aenean vel metus. Ut posuere viverra nulla. Aliquam erat volutpat. Pellentesque convallis. Maecenas feugiat, tellus pellentesque pretium posuere, felis lorem euismod felis, eu ornare leo nisi vel felis. Mauris consectetur tortor et purus.</p>
            </div>

        </div>
    </div><!-- /conteudo -->
</section>

<%@include file="inc/footer.jsp" %>