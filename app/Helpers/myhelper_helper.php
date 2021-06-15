<?php
if (!function_exists('no')) {
    function no($currentPage, $perPage)
    {
        if (is_null($currentPage)) {
            $no = 1;
        } else {
            $no = 1 + ($perPage * ($currentPage - 1));
        }
        return $no;
    }
}
