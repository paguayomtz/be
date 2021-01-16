<?php 

class Queris {

    public static function getPuestoById($db, $id) {
        $sql = "SELECT puesto FROM puestos WHERE id_puesto = $id";
        $puesto = $db->query($sql);
        $pto = $puesto->fetch_object();
        return $pto->puesto;
    }

    public static function getSucursalById($db, $id) {
        $sql = "SELECT sucursal FROM sucursales WHERE id_sucursal = $id";
        $sucursal= $db->query($sql);
        $suc = $sucursal->fetch_object();
        return $suc->sucursal;
    }

    public static function getPtoAndSucByVac($db, $id) {
        $sql = "SELECT v.id AS id, v.fecha_solicitud AS fecha, p.puesto AS puesto, s.sucursal AS sucursal,
                e.estatus AS estatus, v.puesto_id AS puesto_id, v.sucursal_id AS sucursal_id
                FROM vacantes v INNER JOIN puestos p ON 
                v.puesto_id = p.id_puesto INNER JOIN sucursales s ON v.sucursal_id = s.id_sucursal 
                INNER JOIN estatus_vacante e ON v.estatus_id = e.id WHERE v.id = $id";
        $vacante = $db->query($sql);
        $vac = $vacante->fetch_object();
        return $vac;
    }

    public static function getCv($db, $id) {
        $sql = "SELECT cv FROM candidatos WHERE id = $id";
        $candidato = $db->query($sql);
        $can = $candidato->fetch_object();
        return $can->cv;
    }

    public static function getNombreByCan($db, $id) {
        $sql = "SELECT nombre, apellido_paterno, apellido_materno FROM candidatos WHERE id = $id";
        $candidato = $db->query($sql);
        $can = $candidato->fetch_object();
        return $can;
    }   

    public static function getColaboradorByIdCan($db, $id) {
        $sql = "SELECT * FROM colaboradores WHERE candidato_id = $id";
        $colaborador = $db->query($sql);
        $col = $colaborador->fetch_object();
        return $col;
    }

    public static function getColaboradorById($db, $id) {
        $sql = "SELECT * FROM colaboradores WHERE id = $id";
        $colaborador = $db->query($sql);
        $col = $colaborador->fetch_object();
        return $col;
    }

    public static function getDiasTipoContrato($db, $id) {
        $sql = "SELECT * FROM tipos_contratos WHERE id = $id";
        $tipo_contrato = $db->query($sql);
        $tco = $tipo_contrato->fetch_object();
        return $tco->duracion_dias;
    }

    public static function getNombreColById($db, $id) {
        $sql = "SELECT CONCAT(nombre, ' ', apellido_paterno, ' ', apellido_materno) AS nombre FROM colaboradores WHERE id = $id";
        $col = $db->query($sql);
        $nombre = $col->fetch_object();
        return $nombre->nombre;
    }

    public static function getHrsTemByCol($db, $id) {
        $sql = "SELECT SUM(duracion) AS duracion FROM temas_colaboradores WHERE colaborador_id = $id";
        $tem = $db->query($sql);
        $temas = $tem->fetch_object();
        return $temas->duracion;
    }

    public static function getCostoTemByCol($db, $id) {
        $sql = "SELECT SUM(costo) AS costo FROM temas_colaboradores WHERE colaborador_id = $id";
        $costo = $db->query($sql);
        $precio = $costo->fetch_object();
        return $precio->costo;
    }

    public static function getHrsCurByCol($db, $id) {
        $sql = "SELECT SUM(duracion) AS duracion FROM cursos_colaboradores WHERE colaborador_id = $id";
        $cur = $db->query($sql);
        $cursos = $cur->fetch_object();
        return $cursos->duracion;
    }

    public static function getCostoCurByCol($db, $id) {
        $sql = "SELECT SUM(costo) AS costo FROM cursos_colaboradores WHERE colaborador_id = $id";
        $costo = $db->query($sql);
        $precio = $costo->fetch_object();
        return $precio->costo;
    }


}