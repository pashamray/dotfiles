<?php

try {
    $json = file_get_contents('http://ifconfig.co/json');
    $data = json_decode($json);
    echo sprintf('%s (%s)', $data->ip, $data->country);
} catch (\Exception $e) {
    echo 'undefined';
}
