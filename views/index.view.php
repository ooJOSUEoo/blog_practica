<?php require'header.php' ?>

    <div class="contenedor">
        <div class="post">
            <article>
                <h2 class="titulo"><a href="#">Titulo del articulo</a></h2>
                <p class="fecha">30 de junio del 2021</p>
                <div class="thumb">
                    <a href="#">
                        <img src="<?php echo RUTA; ?>/imagenes/1.jpeg" alt="">
                    </a>
                </div>
                <p class="extracto">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptates, quam.</p>
                <a href="#" class="continuar">Continuar leyendo</a>
            </article>
        </div>
        <div class="post">
            <article>
                <h2 class="titulo"><a href="#">Titulo del articulo</a></h2>
                <p class="fecha">30 de junio del 2021</p>
                <div class="thumb">
                    <a href="#">
                        <img src="<?php echo RUTA; ?>/imagenes/1.jpeg" alt="">
                    </a>
                </div>
                <p class="extracto">Lorem ipsum, dolor sit amet consectetur adipisicing elit. Voluptates, quam.</p>
                <a href="#" class="continuar">Continuar leyendo</a>
            </article>
        </div>

        <?php require'paginacion.php' ?>
    </div>

<?php require'footer.php' ?>