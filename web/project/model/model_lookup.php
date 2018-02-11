<?php

function getAllrecords(){
    $db = get_db();
    $sql = "SELECT dc.doctorFirstname, dc.doctorLastname, ad.docaddress1, ad.docaddress2, ad.docaddress3, ad.doccity, ad.docstate, ad.doczip FROM doclookup.doctors AS dc 
    RIGHT JOIN doclookup.addresses AS ad ON ad.doctor_id = dc.doctor_id
    RIGHT JOIN doclookup.doc_specialties AS ds ON dc.doctor_id = ds.doctor_id 
    JOIN doclookup.specialties AS sp ON sp.specialty_id = ds.id ORDER BY dc.doctorLastname";
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $doctors = $stmt->fetchAll();
    $stmt->closeCursor();
    return $doctors;
}

function getSpecialties() {
    $db = get_db();
    $sql = 'SELECT sp.specialty_name FROM doclookup.specialties AS sp JOIN doclookup.doc_specialties AS ds ON ds.specialties_id = sp.specialty_id GROUP BY sp.specialty_name ORDER BY sp.specialty_name ASC';
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $categories = $stmt->fetchAll();
    $stmt->closeCursor();
    return $categories;

}

function getCities() {
    $db = get_db();
    $sql = "SELECT doccity FROM doclookup.addresses GROUP BY doccity ORDER BY doccity ASC";
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $cities = $stmt->fetchAll();
    $stmt->closeCursor();
    return $cities;
}
function getDocsBySpecialty($specialty) {
    $db = get_db();
    $sql = "SELECT dc.doctorfisrtname,dc.doctorlastname, dc.doctor_address1, dc.doctor_address2, dc.doctor_address3, dc.doctor_city, dc.doctor_state, dc.doctor_zip FROM doctors AS dc RIGHT JOIN doc_specialties AS ds ON dc.id = ds.doctor_id JOIN specialties AS sp ON sp.specialty_id = ds.specialty_id WHERE sp.specialty_id = $specialty ORDER BY doctorlastname";
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $doctors = $stmt->fetchAll();
    $stmt->closeCursor();
    return $doctors;
}

function getDocsByCity($city) {
    $db = get_db();
    $sql = "SELECT dc.doctorfirstname, dc.doctorlastname, da.docaddress1, da.docaddress2, da.docaddress3, da.doccity, da.docstate, da.doczip FROM doclookup.doctors AS dc RIGHT JOIN doclookup.addresses AS da ON da.doctor_id = dc.doctor_id RIGHT JOIN doclookup.doc_specialties AS ds ON dc.doctor_id = ds.doctor_id JOIN doclookup.specialties AS sp ON sp.specialty_id = ds.specialties_id WHERE lower(da.doccity) = lower('$city') ORDER BY doctorlastname";
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $doctors = $stmt->fetchAll();
    $stmt->closeCursor();
    return $doctors;
}