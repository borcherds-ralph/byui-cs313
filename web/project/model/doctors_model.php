<?php

function addDoctor($docFName, $docLName, $docEmail){
    $db = get_db();
    $sql = 'INSERT INTO doclookup.doctors (firstname, lastname, email) VALUES (:firstname, :lastname, :email)';
    $stmt = $db->prepare($sql);
    $stmt->bindValue(':firstname', $docFName, PDO::PARAM_STR);
    $stmt->bindValue(':lastname', $docLName, PDO::PARAM_STR);
    $stmt->bindValue(':email', $docEmail, PDO::PARAM_STR);
    $stmt->execute();
    $rowsChanged = $stmt->rowCount();
    $stmt->closeCursor();
    return $rowsChanged;
}

function addDocAddress($docAddress1, $docAddress2, $docCity, $docState, $docZip){


}

function addDocSpec($docid, $docSpecId){
    
}

function editDoctor($docid) {
    $db = get_db();
    $sql = 'DELETE doclookup.doctors SET firstname = :firstname, lastname = :lastname, email = :email WHERE clientId = :clientId';
    $stmt = $db->prepare($sql);
    $stmt->bindValue(':firstname', $firstname, PDO::PARAM_STR);
    $stmt->bindValue(':lastname', $lastname, PDO::PARAM_STR);
    $stmt->bindValue(':email', $email, PDO::PARAM_STR);
    $stmt->bindValue(':clientId', $clientId, PDO::PARAM_INT);
    $stmt->execute();
    $rowsChanged = $stmt->rowCount();
    $stmt->closeCursor();
    return $rowsChanged;

}


function deleteDoctor($docid){
    $db = get_db();
    $sql = 'DELETE doclookup.doctors SET firstname = :firstname, lastname = :lastname, email = :email WHERE clientId = :clientId';
    $stmt = $db->prepare($sql);
    $stmt->bindValue(':firstname', $firstname, PDO::PARAM_STR);
    $stmt->bindValue(':lastname', $lastname, PDO::PARAM_STR);
    $stmt->bindValue(':email', $email, PDO::PARAM_STR);
    $stmt->bindValue(':clientId', $clientId, PDO::PARAM_INT);
    $stmt->execute();
    $rowsChanged = $stmt->rowCount();
    $stmt->closeCursor();
    return $rowsChanged;

}

function deleteDocAddress($docid){
    $db = get_db();
    $sql = 'DELETE doclookup.doctors SET firstname = :firstname, lastname = :lastname, email = :email WHERE clientId = :clientId';
    $stmt = $db->prepare($sql);
    $stmt->bindValue(':firstname', $firstname, PDO::PARAM_STR);
    $stmt->bindValue(':lastname', $lastname, PDO::PARAM_STR);
    $stmt->bindValue(':email', $email, PDO::PARAM_STR);
    $stmt->bindValue(':clientId', $clientId, PDO::PARAM_INT);
    $stmt->execute();
    $rowsChanged = $stmt->rowCount();
    $stmt->closeCursor();
    return $rowsChanged;

}

function deleteDocSpecialty($docid){
    $db = get_db();
    $sql = 'DELETE doclookup.doctors SET firstname = :firstname, lastname = :lastname, email = :email WHERE clientId = :clientId';
    $stmt = $db->prepare($sql);
    $stmt->bindValue(':firstname', $firstname, PDO::PARAM_STR);
    $stmt->bindValue(':lastname', $lastname, PDO::PARAM_STR);
    $stmt->bindValue(':email', $email, PDO::PARAM_STR);
    $stmt->bindValue(':clientId', $clientId, PDO::PARAM_INT);
    $stmt->execute();
    $rowsChanged = $stmt->rowCount();
    $stmt->closeCursor();
    return $rowsChanged;

}

function modDoctor($docid){
    $db = get_db();
    $sql = 'UPDATE doclookup.doctors SET firstname = :firstname, lastname = :lastname, email = :email WHERE clientId = :clientId';
    $stmt = $db->prepare($sql);
    $stmt->bindValue(':firstname', $firstname, PDO::PARAM_STR);
    $stmt->bindValue(':lastname', $lastname, PDO::PARAM_STR);
    $stmt->bindValue(':email', $email, PDO::PARAM_STR);
    $stmt->bindValue(':clientId', $clientId, PDO::PARAM_INT);
    $stmt->execute();
    $rowsChanged = $stmt->rowCount();
    $stmt->closeCursor();
    return $rowsChanged;

}