<?php

namespace App\Controller;

class FestivalController extends AbstractController
{

    public function index()
    {
        $secret = '6Ld5fNAaAAAAAOKYlFfR7wi-idO-V7zb1PYBMgvQ';
        if (isset($_POST['submit'])) {
            if (isset($_POST['g-recaptcha-response'])) {
                $recaptcha = new \ReCaptcha\ReCaptcha($secret);
                $resp = $recaptcha->verify($_POST['g-recaptcha-response']);
                if ($resp->isSuccess()) {
                    $success = "Your booking have been taken in account";
                    return $this->twig->render('Festival/festival.html.twig',[
                        'success' => $success
                    ]);
                } else {
                    $errors = "Please validate the CAPTCHA";
                    return $this->twig->render('Festival/festival.html.twig',[
                        'error' => $errors
                    ]);
                }
            } else {
                var_dump('Captcha not filled');
            }
        }
        return $this->twig->render('Festival/festival.html.twig');
    }
}
