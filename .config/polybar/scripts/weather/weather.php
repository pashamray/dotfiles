<?php

/**
 * Get weather for polybar
 * 
 * create file apikey with APPID and run script
 * 
 * weather.php Odessa,UA 
 */

$city = $argv[1];
$apiKey = trim(file_get_contents(__DIR__ . '/apikey'));

$url = "https://api.openweathermap.org/data/2.5/weather";

$parameters = [
  'q' => $city,
  'units' => 'metric',
  'APPID' => $apiKey
];

$headers = [
  'Accepts: application/json'
];

$queryString = http_build_query($parameters); // query string encode the parameters

$request = "{$url}?{$queryString}"; // create the request URL

$curl = curl_init(); // Get cURL resource
// Set cURL options
curl_setopt_array($curl, array(
  CURLOPT_URL => $request,            // set the request URL
  CURLOPT_HTTPHEADER => $headers,     // set the headers 
  CURLOPT_RETURNTRANSFER => 1         // ask for raw response instead of bool
));

try {

$response = curl_exec($curl); // Send the request, save the response
curl_close($curl); // Close request

$data = json_decode($response);

    $temp = $data->main->temp;
    echo sprintf('%s°C', $temp);
} catch (\Exception $e) {
    echo 'undefined';
}

?>
