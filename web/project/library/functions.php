<?php

function getDoctors($docs) {
    
    $docDisplay = '';

    foreach ($docs as $key => $doctor) {
        if($key & 1) {
            $rowoddeven = 'odd';
        } else {$rowoddeven = 'even';} 
        $docDisplay .= "<article class='$rowoddeven'>";
        $docDisplay .= "<div id='docname'>$doctor[doctor_name]</div>";
        $docDisplay .= "</article>";
    }

    return $docDisplay;
}