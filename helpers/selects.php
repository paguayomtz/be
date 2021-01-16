<?php

class Selects {

    public static function test() {
        $jala = 'jala';
        return $jala;
    }   

    public static function getAreas($db) {
        $sql = "SELECT * FROM areas ORDER BY area";
        $areas = $db->query($sql);        
        return $areas;
    }

    public static function getPuestos($db) {
        $sql = "SELECT * FROM puestos ORDER BY puesto";
        $puestos = $db->query($sql);        
        return $puestos;
    }

    public static function getEstatusVacanteAll($db) {
        $sql = "SELECT * FROM estatus_vacante";
        $vacantes = $db->query($sql);
        return $vacantes;
    }

    public static function getEstatusVacante($db, $id) {
        $sql = "SELECT * FROM estatus_vacante WHERE id <> $id";
        $vacantes = $db->query($sql);
        return $vacantes;
    }

    public static function getSucursales($db) {
        $sql = "SELECT * FROM sucursales ORDER BY id_sucursal";
        $sucursales = $db->query($sql);
        return $sucursales;
    }

    public static function getVacActivas($db) {
        $sql = "SELECT v.id AS id, p.puesto AS puesto, s.sucursal AS sucursal
                FROM vacantes v INNER JOIN puestos p ON v.puesto_id = p.id_puesto
                INNER JOIN sucursales s ON v.sucursal_id = s.id_sucursal
                WHERE v.estatus_id = 1 AND v.deleted_at IS NULL ORDER BY v.id DESC";
        $vacantes = $db->query($sql);
        return $vacantes;
    }

    public static function getVacCanceladas($db) {
        $sql = "SELECT v.id AS id, p.puesto AS puesto, s.sucursal AS sucursal
                FROM vacantes v INNER JOIN puestos p ON v.puesto_id = p.id_puesto
                INNER JOIN sucursales s ON v.sucursal_id = s.id_sucursal
                WHERE v.estatus_id = 2 AND v.deleted_at IS NULL ORDER BY v.id DESC";
        $vacantes = $db->query($sql);
        return $vacantes;
    }

    public static function getVacCubiertas($db) {
        $sql = "SELECT v.id AS id, p.puesto AS puesto, s.sucursal AS sucursal
                FROM vacantes v INNER JOIN puestos p ON v.puesto_id = p.id_puesto
                INNER JOIN sucursales s ON v.sucursal_id = s.id_sucursal
                WHERE v.estatus_id = 3 AND v.deleted_at IS NULL ORDER BY v.id DESC";
        $vacantes = $db->query($sql);
        return $vacantes;
    }

    public static function getPlataformasReclu($db) {
        $sql = "SELECT * FROM plataformas_reclutamiento WHERE deleted_at IS NULL ORDER BY plataforma";
        $plataformas = $db->query($sql);
        return $plataformas;
    }

    public static function getEstatusCandidatoAll($db) {
        $sql = "SELECT * FROM estatus_candidato ORDER BY id";
        $estatus = $db->query($sql);
        return $estatus;
    }   

    public static function getEstatusColaboradores($db) {
        $sql = "SELECT * FROM estatus_colaboradores ORDER BY id";
        $estatus = $db->query($sql);
        return $estatus;
    }

    public static function getEstados($db) {
        $sql = "SELECT * FROM estados ORDER BY estado";
        $estados = $db->query($sql);
        return $estados;
    }

    public static function getMunicipiosByEstado($db, $estado) {
        $sql = "SELECT * FROM municipios WHERE estado_id = $estado ORDER BY municipio";
        $municipios = $db->query($sql);
        return $municipios;
    }

    public static function getMunicipios($db) {
        $sql = "SELECT * FROM municipios ORDER BY municipio";
        $municipios = $db->query($sql);
        return $municipios;
    }

    public static function getEscolaridad($db) {
        $sql = "SELECT * FROM escolaridades";
        $escolaridades = $db->query($sql);
        return $escolaridades;
    }

    public static function getTipoEscuela($db) {
        $sql = "SELECT * FROM tipos_escuelas";
        $tipos_escuelas = $db->query($sql);
        return $tipos_escuelas;
    }

    public static function getDocumentoProbatorio($db) {
        $sql = "SELECT * FROM documentos_probatorios";
        $documentos_probatorios = $db->query($sql);
        return $documentos_probatorios;
    }

    public static function getTipoContrato($db) {
        $sql = "SELECT * FROM tipos_contratos";
        $tipos_contratos = $db->query($sql);
        return $tipos_contratos;
    }

    public static function getColaboradores($db) {
        $sql = "SELECT * FROM colaboradores ORDER BY nombre";
        $colaboradores = $db->query($sql);
        return $colaboradores;
    }

    public static function getAreasCapcitacion($db) {
        $sql = "SELECT * FROM areas_capacitacion ORDER BY area_capacitacion";
        $areas_capacitacion = $db->query($sql);
        return $areas_capacitacion;
    }

    public static function getModulosCapcitacion($db) {
        $sql = "SELECT * FROM modulos_capacitacion ORDER BY modulo_capacitacion";
        $areas_capacitacion = $db->query($sql);
        return $areas_capacitacion;
    }

    public static function getTiposCursos($db) {
        $sql = "SELECT * FROM tipos_cursos ORDER BY tipo";
        $tipos = $db->query($sql);
        return $tipos;
    }

    public static function getDocumentosAcreditadores($db) {
        $sql = "SELECT * FROM documentos_acreditadores ORDER BY documento";
        $documentos = $db->query($sql);
        return $documentos;
    }

}