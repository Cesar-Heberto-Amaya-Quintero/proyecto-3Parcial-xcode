//
//  HorarioController.swift
//  proyecto3Parcial
//
//  Created by Alumno on 11/1/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class HorarioController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var materias: [Materia] = []
    
    var comidas: [Comida] = []
    
    var pagos: [Pago] = []
    
    var alumno: Alumno? = Alumno(nombre: "César Heberto Amaya Quintero",foto:"fotoPrueba", matricula: "199112", nombreContacto: "Heberto Amaya Licea", parentesco: "Padre", telefono1: "6449988999", telefono2: "6442014287")
    
    override func viewDidLoad() {
        //INICIALIAZACION MATERIAS
        materias.append(Materia(nombre: "Programación de Dispositivos Móviles", horario: "7:00 - 10:00 a.m.", asistenciaDia: false, faltas: "0"))
        materias.append(Materia(nombre: "Mercadotecnia", horario: "10:00 - 11:00 a.m.", asistenciaDia: false, faltas: "0"))
        materias.append(Materia(nombre: "Tratamiento de la imagen", horario: "11:00 - 13:00 p.m.", asistenciaDia: false, faltas: "0"))
        
        //INICIALIAZACION COMIDAS
        comidas.append(Comida(nombre: "Hamburguesa", foto: "hamburguesa", precio: "30.00", rate: "4.5/5"))
        comidas.append(Comida(nombre: "Pizza", foto: "pizza", precio: "25.00", rate: "4.8/5"))
        comidas.append(Comida(nombre: "Sándwich", foto: "pizza", precio: "23.00", rate: "4.3/5"))
        comidas.append(Comida(nombre: "Sándwich", foto: "pizza", precio: "23.00", rate: "4.3/5"))
        comidas.append(Comida(nombre: "Sándwich", foto: "pizza", precio: "23.00", rate: "4.3/5"))
        comidas.append(Comida(nombre: "Sándwich", foto: "pizza", precio: "23.00", rate: "4.3/5"))
        comidas.append(Comida(nombre: "Sándwich", foto: "pizza", precio: "23.00", rate: "4.3/5"))
        comidas.append(Comida(nombre: "Sándwich", foto: "pizza", precio: "23.00", rate: "4.3/5"))
        
        //INICIALIAZACION PAGOS
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Inscripción", referencia: "1991121202207", fechaLimite: "22-Julio-2022", cantidadPagar: "$10,190.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Primera colegiatura", referencia: "1991122202208", fechaLimite: "26-Agosto-2022", cantidadPagar: "$3,118.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Segunda colegiatura", referencia: "1991122202209", fechaLimite: "15-Septiembre-2022", cantidadPagar: "$3,118.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Tercera colegiatura", referencia: "1991122202210", fechaLimite: "14-Octubre-2022", cantidadPagar: "$3,118.00", pagado: true))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Cuarta colegiatura", referencia: "1991122202211", fechaLimite: "11-Noviembre-2022", cantidadPagar: "$3,118.00", pagado: false))
        pagos.append(Pago(semestre: "Agosto - Diciembre 2022", concepto: "Quinta colegiatura", referencia: "1991122202212", fechaLimite: "05-Diciembre-2022", cantidadPagar: "$3,118.00", pagado: false))
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaMateria") as? CeldaMateriaController
        celda?.lblNombre.text = materias[indexPath.row].nombre
        celda?.lblHorario.text = materias[indexPath.row].horario
        
        return celda!
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "infoAlumno" {
            let destino = segue.destination as! AlumnoController
            destino.alumno = alumno
            destino.pagos = pagos
        } else if segue.identifier == "menuCafeteria" {
            let destino = segue.destination as! ComidaController
            destino.comidas = comidas
        }
    }
    
    
}
