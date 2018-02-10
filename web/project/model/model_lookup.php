<?php

function getAllrecords(){
    $db = get_db();
    $sql = "SELECT dc.doctorFirstname, dc.doctorLastname, ad.docaddress1, ad.docaddress2, ad.docaddress3, ad.doccity, ad.docstate, ad.doczip FROM doctors AS dc 
    RIGHT JOIN addresses AS ad ON ad.doctor_id = dc.doctor_id
    RIGHT JOIN doc_specialties AS ds ON dc.doctor_id = ds.doctor_id 
    JOIN specialties AS sp ON sp.specialty_id = ds.id ORDER BY dc.doctorLastname";
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $doctors = $stmt->fetchAll();
    $stmt->closeCursor();
    return $doctors;
}

function getCategories() {
    $db = get_db();
    $sql = 'SELECT specialty_name FROM specialties ORDER BY specialty_name';
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $categories = $stmt->fetchAll();
    $stmt->closeCursor();
    return $categories;

}

function getAllDocsByCategory($category) {
    $db = get_db();
    $sql = "SELECT dc.doctor_name, dc.doctor_address1, dc.doctor_address2, dc.doctor_address3, dc.doctor_city, dc.doctor_state, dc.doctor_zip FROM doctors AS dc RIGHT JOIN doc_specialties AS ds ON dc.id = ds.doctor_id JOIN specialties AS sp ON sp.specialty_id = ds.specialty_id WHERE sp.specialty_id = $category ORDER BY doctor_name";
    $stmt = $db->prepare($sql);
    $stmt->execute();
    $doctors = $stmt->fetchAll();
    $stmt->closeCursor();
    return $doctors;
}