<!doctype html>
<html lang="pt-br">
    <head>
        <meta charset="UTF-8">
        <title>3C Store | Onde acha tudo o que procura! </title>
        <link rel="stylesheet" href="css/bootstrap.css">
        <link rel="stylesheet" href="css/nivo-slider.css" type="text/css" media="screen" />
        <link rel="stylesheet" href="css/style.css">
        <script type="text/javascript" src="js/bootstrap.js"></script>
        <script type="text/javascript" src="js/modernizr.js"></script>
        <script type="text/javascript" src="js/jquery-1.9.0.min.js"></script>
        <script type="text/javascript" src="js/jquery.nivo.slider.js"></script>
        <script type="text/javascript">
            $(window).load(function() {
                $('#nivoslider').nivoSlider();
            });
        </script>

    </head>
    <body>
        <div class="content">
            <header>
                <div id="logo">
                    <a href="index.jsp" title="Página Inicial">
                        <img src="img/logo.jpg" alt="3C Store">
                    </a>
                </div>
                <div class="banner">
                    <a href="http://www.intel.com.br" target="_blank" title="Promoção incrivel...Aproveite">
                        <img src="img/ban728x90/banner.jpg" alt="">
                    </a>
                </div>

                <div class="login">
                    <form class="form-horizontal">
                        <div class="control-group">
                            <div class="controls">
                                <input type="text" id="inputEmail" placeholder="Email">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <input type="password" id="inputPassword" placeholder="Senha">
                            </div>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <label id="checkit" class="checkbox">
                                    <input type="checkbox"><span id="lembrar">Lembrar</span>
                                </label>
                                <button type="submit" class="btn btn-mini btn-success">Entrar</button>
                            </div>
                        </div>
                    </form>
                </div>

                <div class="clear"></div>

                <section class="busca">
                    <p id="frase">O que você procura?</p>
                    <form class="form-search">
                        <input type="text" class="busca-produtos input-medium search-query">
                        <button type="submit" class="btn-busca-produtos btn btn-success">Busca</button>
                    </form>
                </section>

                <nav class="nav-categorias">
                    <ul>
                        <c:forEach var="col3" items="${cat.rows}">
                            <li><a class="cat01" href="categoria.jsp?id=<c:out value='${col3.idCategoria}'></c:out>"><c:out value="${col3.categoria}"></c:out></a></li>
                        </c:forEach>
                    </ul>
                </nav>

            </header>