//
//  Alumno.swift
//  proyecto3Parcial
//
//  Created by Alumno ULSA on 01/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Alumno {
    var nombre : String
    var foto : String
    var matricula : String
    var nombreContacto : String
    var parentesco: String
    var telefono1: String
    var telefono2: String
    
    init(nombre: String, foto: String, matricula: String, nombreContacto: String, parentesco: String, telefono1: String, telefono2: String) {
        self.nombre = nombre
        self.foto = foto
        self.matricula = matricula
        self.nombreContacto = nombreContacto
        self.parentesco = parentesco
        self.telefono1 = telefono1
        self.telefono2 = telefono2
        
    }
}
