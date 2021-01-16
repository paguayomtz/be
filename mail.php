<?php


require 'PHPMailer/src/PHPMailer.php';
require 'PHPMailer/src/Exception.php';
require 'PHPMailer/src/SMTP.php';

// Incluir la libreria PHPMailer
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
use PHPMailer\PHPMailer\SMTP;

	class Correo {		

	public $reclutador = 'kcopado@beconsulting.com.mx';
	public $reclutador2 = 'aguayomartinezpedro@gmail.com';
	public $jefe = 'pedro@pemz.com.mx';

	public function Enviar($nombre,$candidato) {
		
		$mail = new PHPMailer(TRUE);
		$mail->IsSMTP();
		//$mail->SMTPDebug = 2; 
		$mail->Charset = 'UTF-8';
		$mail->SMTPAuth = TRUE;
		$mail->SMTPSecure = 'ssl';
		$mail->Host = 'pemz.com.mx';
		$mail->Port = 465;
		$mail->Username = 'be@pemz.com.mx';
		$mail->Password = 'P3mzZ3u$';
		$mail->isHTML(TRUE);
		//$mail->Charset = 'ISO-8859-1';
		$mail->setFrom('be@pemz.com.mx', 'BeConsulting');
		$mail->Subject = 'Nuevo CV';
		$mail->MsgHTML(utf8_decode('Buen día,<br><br><strong>'.$nombre.'</strong> a 
						agregado su curriculum a la plataforma<br><br><i>
						¡Gracias por tu registo!'));
		$mail->AltBody = '';
		$mail->addReplyTo('be@pemz.com.mx', 'BeConsulting');
		$mail->AddAddress($candidato);
		$mail->AddCC($this->reclutador);
		$mail->AddCC($this->reclutador2);
		$mail->AddBCC($this->jefe);
		$envio = $mail->Send();
		if(!$envio) {
			echo 'A ocurrido un error, favor de volver a internerlo, si el problema persiste favor de conctar con el administrador
					del sitio web: pedro@pemz.com.mx';
		}
		}

	}
	
?>