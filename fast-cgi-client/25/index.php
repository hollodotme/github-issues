<?php

// /var/www/index.php
require __DIR__ . '/vendor/autoload.php';

use hollodotme\FastCGI\Client;
use hollodotme\FastCGI\Requests\PostRequest;
use hollodotme\FastCGI\SocketConnections\UnixDomainSocket;

$connection = new UnixDomainSocket( '/var/run/php/php7.0-fpm.sock', 5000, 5000 );
$client     = new Client( $connection );
$content    = http_build_query( ['task' => 'SendMail', 'payload' => json_encode( '...' )] );

$request   = new PostRequest( '/var/www/worker.php', $content );
$requestId = $client->sendAsyncRequest( $request );
$response  = $client->readResponse( $requestId );
echo $response->getBody(), "\n";
