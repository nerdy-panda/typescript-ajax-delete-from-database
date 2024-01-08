<?php
function getProductUpdatedAt(?string $updatedAt):string {
    if (is_string($updatedAt))
        return $updatedAt;
    return '<i clas="fa fas"></i>';
}
