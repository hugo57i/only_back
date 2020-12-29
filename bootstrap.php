<?php
require_once "vendor/autoload.php";

use Doctrine\ORM\Tools\Setup;
use Doctrine\ORM\EntityManager;

date_default_timezone_set('Europe/Paris');

$isDevMode = true;
$config = Setup::createYAMLMetadataConfiguration(array(__DIR__ . "/config/yaml"), $isDevMode);

$conn = array(
    'host' => "ec2-3-248-4-172.eu-west-1.compute.amazonaws.com",
    'driver' => 'pdo_pgsql',
    'user' => "wugyddtxfojmup",
    'password' => "9ea5a8a516797fbb57646484c65d60c5f2a610b689668c347f60c29ac3144eb6",
    'dbname' => "d3a3u5os1bgi6k",
    'port' => 5432,
);

$entityManager = EntityManager::create($conn, $config);