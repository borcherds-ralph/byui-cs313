<?php
function baseurl() {
    if ($_SERVER['HTTP_HOST'] == 'localhost') // or any other host
    {
        $basepath = '/cs313/web/project/';
   } else {
       $basepath = '/project';
   }
   return $basepath;
}

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

function makeSpecialties($specialties){
    // build category list for drop down list.
    // This must come after the navigation so that the $specialties variable has data
    $catList = "<datalist id='specialties'>";
    foreach ($specialties as $category) {
        $catList .= "<option value='" . $category['specialty_name'] . "'></option>";
    }
    $catList .= "</datalist>";
    return $catList;
}

function makeCities($cities){
    $catList = "<datalist id='cities'>";
    $catList .= "<option selected value=''></option>";
    foreach ($cities as $category) {
        $catList .= "<option value='" . $category['doccity'] . "'></option>";
    }
    $catList .= "</datalist>";
    return $catList;
}

function getDoctorsByCity($docs) {
    
    $docDisplay = '<section>';
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
    $docDisplay .= "</section>";
    return $docDisplay;
}