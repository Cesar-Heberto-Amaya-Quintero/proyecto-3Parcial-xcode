//
//  Materia.swift
//  proyecto3Parcial
//
//  Created by Alumno on 11/1/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

class Materia {
    var nombre : String
    var horario : String
    var asistenciaDia : Bool
    var faltas: String
    
    init(nombre: String, horario: String, asistenciaDia: Bool, faltas: String) {
        self.nombre = nombre
        self.horario = horario
        self.asistenciaDia = asistenciaDia
        self.faltas = faltas
    }
}
