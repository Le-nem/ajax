<?php

class Connect
{
    public static function co()
    {
        return new PDO("mysql:host=localhost;dbname=exoajax", "root", "");
    }
}
