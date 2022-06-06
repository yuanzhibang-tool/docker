<?php
function create_proxy_pwd($password){
    $options = ['cost' => 12];
    $authPwd = password_hash($password, PASSWORD_BCRYPT, $options);
    return $authPwd;
}
function replace_port($filePath,$port){
    $fileContent = file_get_contents($filePath);
    $fileContent = str_replace('$port$',$port,$fileContent);
    $file = fopen($filePath, "w") or die("Unable to open file!");
    fwrite($file, $fileContent);
    fclose($file);
}
$user = $argv[1];
$password = $argv[2];

$authPwd = create_proxy_pwd($password);
$authString = "$user:$authPwd";

$htpasswdPath = "/etc/apache2/sites-available/config";
if(!file_exists($htpasswdPath)){
    mkdir($htpasswdPath,0777,true);
}
$htpasswdFile = fopen("$htpasswdPath/.htpasswd", "w") or die("Unable to open file!");
fwrite($htpasswdFile, $authString);
fclose($htpasswdFile);
if(!isset($argv[3])){
    $port = 7789;
}
replace_port('/etc/apache2/ports.conf', $port);
replace_port('/etc/apache2/sites-available/config/proxy.conf', $port);
