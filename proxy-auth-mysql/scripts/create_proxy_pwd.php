 <?php
function create_proxy_pwd($password){
    $options = ['cost' => 12];
    $authPwd = password_hash($password, PASSWORD_BCRYPT, $options);
    return $authPwd;
}

$password = "F2pkto4GtRPAqTpY";
$auth_pwd = create_proxy_pwd($password);
echo $auth_pwd;