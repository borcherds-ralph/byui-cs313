<?php

function getDoctors($docs) {
    
    $docDisplay = '';
// $docDisplay = print_r($docs);
    foreach ($docs as $key => $doctor) {
        if($key & 1) {
            $rowoddeven = 'odd';
        } else {$rowoddeven = 'even';} 
        $docDisplay .= "<article class='$rowoddeven doclist'>\n ";
        $docDisplay .= "<div id='docname'>$doctor[doctorlastname], $doctor[doctorfirstname]</div>\n";
        $docDisplay .= "<div>$doctor[docaddress1]</div>\n";
        $docDisplay .= "<div>$doctor[docaddress2]</div>\n";
        $docDisplay .= "<div>$doctor[docaddress3]</div>\n";
        $docDisplay .= "<div>$doctor[doccity], $doctor[docstate] $doctor[doczip]</div>\n";
        $docDisplay .= "</article>\n";
    }

    return $docDisplay;
}
