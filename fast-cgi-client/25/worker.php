<?php

if ( error_log( "RUNNING\n", 3, '/var/www/worker.log' ) )
{
	echo 'Logged to worker.log';
}
