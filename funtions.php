<?php
//Hace la coneccion a la BD
function conexion($bd_config){

    try {
        $conexion = new PDO('mysql:host=localhost;dbname='.$bd_config['basedatos'], $bd_config['usuario'], $bd_config['pass']);
        return $conexion;
    } catch (PDOException $e) {
        return false;
    }
}
//Limpia los datos para que el admin pueda crear articulos de buena forma
function limpiarDatos($datos){
    $datos = trim($datos);
    $datos = stripslashes($datos);
    $datos = htmlspecialchars($datos);
    return $datos;
}
//Cuenta el numero de pagina en el que estas
function pagina_actual(){
    return isset($_GET['p']) ? (int)$_GET['p'] : 1;
}
//Obtiene los posts, conectando a la BD y trayendo el num de pagina
function obtener_post($post_por_pagina, $conexion){
    $inicio = (pagina_actual() > 1) ? pagina_actual() * $post_por_pagina - $post_por_pagina : 0;
    $sentencia = $conexion->prepare("SELECT SQL_CALC_FOUND_ROWS * FROM articulos LIMIT $inicio, $post_por_pagina");
    $sentencia->execute();
    return $sentencia->fetchAll();
}
//funcion que da el id del articulo, limpia sus datos para traerlo desde la BD
function id_articulo($id){
    return (int)limpiarDatos($id);
}
//Obtiene los post por medio del id
function obtener_post_por_id($conexion, $id){
    $resultado = $conexion->query("SELECT * FROM articulos WHERE id= $id LIMIT 1");
    $resultado = $resultado->fetchAll();
    return ($resultado) ? $resultado : false;
}
//modificar la fecha de los post
function fecha($fecha){
    $timestamp = strtotime($fecha);
    $meses = ['Enero','Febrero','Marzo','Abril','Mayo','Junio','Julio','Agosto','Septiembre','Octubre','Noviembre','Diciembre'];

    $dia = date('d', $timestamp);
    $mes = date('m', $timestamp)-1;
    $year = date('Y', $timestamp);

    $fecha = "$dia de $meses[$mes] del $year";
    return $fecha;
}

?>