<?php
// error_reporting(0);
$loader = include __DIR__ . '/vendor/autoload.php';

use Hoborg\SGallery\Application;

$console = new Application();
var_dump('test');
$console->setApplicationRoot(__DIR__ . '/vendor/hoborglabs/sgallery');
$console->setConfigurationOverride(__DIR__ . '/sgallery.properties');
$console->addExtensionPath(__DIR__ . '/sgallery');
$console->run();