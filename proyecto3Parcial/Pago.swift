//
//  Pago.swift
//  proyecto3Parcial
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 Alumno. All rights reserved.

class Pago {
    var semestre : String
    var concepto : String
    var referencia : String
    var fechaLimite :String
    var cantidadPagar : String
    var pagado : Bool
    
    init(semestre: String, concepto: String, referencia: String, fechaLimite: String, cantidadPagar: String,pagado: Bool) {
        self.semestre = semestre
        self.concepto = concepto
        self.referencia = referencia
        self.fechaLimite = fechaLimite
        self.cantidadPagar = cantidadPagar
        self.pagado = pagado
    }
}
