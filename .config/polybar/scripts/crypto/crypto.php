<?php

/**
 * cpypto.php bitcoin
 */

$coin = $argv[1];

$url = "https://api.coinmarketcap.com/v1/ticker/{$coin}/";

$parameters = [
  'start' => '1',
  'limit' => '1',
  'convert' => 'USD'
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

$response = curl_exec($curl); // Send the request, save the response
curl_close($curl); // Close request

$data = json_decode($response)[0];

//$symbol = $data->symbol;
$price = round($data->price_usd, 2);

echo sprintf('%s', $price);

?>

