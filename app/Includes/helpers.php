<?php

if (!function_exists('formateDate')) {
    function formateDate($timestamp = null)
    {
        return date('d.m.Y H:i:s', $timestamp ?? time());
    }
}
