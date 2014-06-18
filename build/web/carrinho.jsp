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
        <p class="breadcrumbs"><a href="index.jsp">HOME</a> > <a href="#">INFORMÁTICA</a> > <a href="#">CARRINHO</a></p>
        <h3 id="categoria-info" class="destaques ">Carrinho</h3>

        <ul class="carrinho">
            <li><img src="img/produtos/notebook-sam-ativ6.jpg" alt="Notebook Samsung">
                <div class="produto-descricao">
                    <h4>Notebook Samsung i5</h4>
                    <p class="especificacoes">
                        Notebook Samsung ATIV Book 6 com Intel Core i5 8GB 1TB <br />(2GB de Memória Dedicada) LED 15,6" Windows 8 
                    </p>
                    <p id="preco"><strong>R$ 2.599,00</strong></p>
                    <p>18x sem Juros no cartão!</p>
                </div>
                <div class="qtde">
                    <form class="form-search">
                        <input id="campo-qtde1" type="text" value="1" class="input-medium search-query">
                        <button type="submit" class="btn">Add</button>
                    </form>
                </div>
                <div class="clear"></div>
            </li>
            <li><img src="img/produtos/notebook-acer.jpg" alt="Notebook Acer">
                <div class="produto-descricao">
                    <h4>Ultrabook Acer i5</h4>
                    <p class="especificacoes">
                        Ultrabook Acer V5-471-6888 com Intel Core i5 4GB 500GB LED 14" Windows 8
                    </p>
                    <p id="preco"><strong>R$ 1.799,00</strong></p>
                    <p>18x sem Juros no cartão!</p>
                </div>
                <div class="qtde">
                    <form class="form-search">
                        <input id="campo-qtde1" type="text" value="1" class="input-medium search-query">
                        <button type="submit" class="btn">Add</button>
                    </form>
                </div>	
                <div class="clear"></div>
            </li>
            <li><img src="img/produtos/notebook-razer.jpg" alt="Notebook Razer">
                <div class="produto-descricao">
                    <h4>Notebook Razer i7</h4>
                    <p class="especificacoes">
                        Intel® Core™ i7-4702HQ Quad Core Processor 2.2GHz / 3.2GHz (Turbo) 8GB 512GB SSD e Windows 8 
                    </p>
                    <p id="preco"><strong>R$ 5.999,00</strong></p>
                    <p>18x sem Juros no cartão!</p>
                </div>
                <div class="qtde">
                    <form class="form-search">
                        <input id="campo-qtde1" type="text" value="1" class="input-medium search-query">
                        <button type="submit" class="btn">Add</button>
                    </form>
                </div>	
                <div class="clear"></div>
            </li>
            <li><img src="img/produtos/notebook-alienware.jpg" alt="Notebook Alienware">
                <div class="produto-descricao">
                    <h4>Notebook Alienware i7</h4>
                    <p class="especificacoes">
                        Intel® Core i7-2328M, 16GB, 1TB, Gravador de DVD, Leitor de Cartões, HDMI, Bluetooth 4.0, Webcam, LED 17” GTX 880M 8GB GDDR5 e Windows 8 
                    </p>
                    <p id="preco"><strong>R$ 9.999,00</strong></p>
                    <p>18x sem Juros no cartão!</p>
                </div>
                <div class="qtde">
                    <form class="form-search">
                        <input id="campo-qtde1" type="text" value="1" class="input-medium search-query">
                        <button type="submit" class="btn">Add</button>
                    </form>
                </div>	
                <div class="clear"></div>
            </li>
            <li>
                <h5 style="text-align:right;">TOTAL: <strong style="font-size: 22px;"> R$ 20.396,00</strong></h5>
            </li>
        </ul>
    </div><!-- /conteudo -->
</section>

<%@include file="inc/footer.jsp" %>