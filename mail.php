<?php
 
	class Correo {		

	public function Enviar($nombre,$candidato,$reclutador,$reclutador2,$jefe) {

	include 'PHPMailer/PHPMailerAutoload.php';
		$mail = new PHPMailer;
		$mail->IsSMTP();
		$mail->IsHTML(true);
		$mail->Charset = 'ISO-8859-1';
		$mail->SMTPAuth = true;
		$mail->SMTPSecure = 'tls';
		$mail->Host = 'mail.gmx.com';
		$mail->Port = 587;
		$mail->Username = 'paguayo@gmx.com';
		$mail->Password = 'Diana-12';
		$mail->From = 'paguayo@gmx.com';
		$mail->FromName = 'Servicio de BeConsulting';
		$mail->Subject = 'Nuevo CV';
		$mail->Body = 'Buen día,<br><br><strong>'.$nombre.'</strong> a 
						agregado su curriculum a la plataforma<br><br><i>
						¡Gracias por tu registo!';
		$mail->AltBody = '';
		$mail->AddAddress($candidato);
		$mail->AddCC($reclutador);
		$mail->AddCC($reclutador2);
		$mail->AddBCC($jefe);
		$mail->Send();

		}

	}

	/*include 'PHPMailer/PHPMailerAutoload.php';
        $mail = new PHPMailer;
        $mail->IsSMTP();
        $mail->IsHTML(true);
        $mail->Charset = 'UTF-8';
        $mail->SMTPAuth = true;
        $mail->SMTPSecure = 'ssl';
        $mail->Host = 'mail.tmaq.mx';
        $mail->Port = 465;
        $mail->Username = 'correo@tmaq.mx';
        $mail->Password = '0c30m3hd1r';
        $mail->From = 'correo@tmaq.mx';
        $mail->FromName = 'Servicio de BeConsulting';
        $mail->Subject = 'Nuevo CV';
        $mail->Body = '<strong>'.$nombre.'</strong> a agrega su curriculum a la plataforma';
        $mail->AltBody = 'contenido del mensaje';
        $mail->AddAddress('karla_kyp@hotmail.com');
        $mail->AddCC('paguayo@gmx.com');
        $mail->Send();*/


?>