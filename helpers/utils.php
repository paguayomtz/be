<?php

class Utils {

    public static function deleteSession($name) {
        if(isset($_SESSION[$name])) {
            $_SESSION[$name] = null;
            unset($_SESSION[$name]);
        }        
        return $name;
    }

    public static function createArrayObj($consulta) {
        $array = [];
        while($fila = $consulta->fetch_object()) {
                $array[] = $fila;
        }
        return $array;
    }

    public static function createArrayRow($consulta) {
        $array = [];
        while($fila = $consulta->fetch_row()) {
                $array[] = $fila;
        }
        return $array;
    }

    public static function obtenerYears($fechai, $fechaf) {
        $date1 = new DateTime($fechai);
        $date2 = new DateTime($fechaf);
        $diff = $date1->diff($date2);
        $años = ($diff->days);
        return round($años/365).' años';

    }

    public static function formatFecha($fecha) {
        //$fecha = date('Y-m-d');
        $fecha = substr($fecha, 0, 10);
        $numeroDia = date('d', strtotime($fecha));
        $dia = date('l', strtotime($fecha));
        $mes = date('F', strtotime($fecha));
        $anio = date('Y', strtotime($fecha));
        $dias_ES = array("Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo");
        $dias_EN = array("Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday", "Sunday");
        $nombredia = str_replace($dias_EN, $dias_ES, $dia);
        $meses_ES = array("Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre");
        $meses_EN = array("January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December");
        $nombreMes = str_replace($meses_EN, $meses_ES, $mes);
        $fecha =  $nombredia . ", " . $numeroDia . " de " . $nombreMes . " de " . $anio;
        return $fecha;
    }

    public static function formatFechaTexto($fecha) {
        $dia = substr($fecha, 0, 2);
        $mes = substr($fecha, 3, 2);
        $ano = substr($fecha, 6, 4);
        $fecha = "$ano-$mes-$dia";
        return $fecha;
    }

    public static function getNombreMes($mes) {        
        $meses = ['', 'ENERO', 'FEBRERO', 'MARZO', 'ABRIL', 'MAYO', 'JUNIO', 'JULIO', 'AGOSTO', 'SEPTIEMBRE', 'OCTUBRE', 'NOVIEMBRE', 'DICIEMBRE'];
        $nombre = $meses[$mes];
        return $nombre;
    }



}