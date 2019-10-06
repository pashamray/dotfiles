<?php

$json = file_get_contents('http://ifconfig.co/json');
$data = json_decode($json);

//print_r($data);

echo sprintf('%s (%s)', $data->ip, $data->country); 

