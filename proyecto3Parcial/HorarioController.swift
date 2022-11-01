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
    
    override func viewDidLoad() {
        materias.append(Materia(nombre: "Programación de Dispositivos Móviles", horario: "7:00 - 10:00 a.m.", asistenciaDia: false, faltas: "0"))
        materias.append(Materia(nombre: "Mercadotecnia", horario: "10:00 - 11:00 a.m.", asistenciaDia: false, faltas: "0"))
        materias.append(Materia(nombre: "Tratamiento de la imagen", horario: "11:00 - 13:00 p.m.", asistenciaDia: false, faltas: "0"))
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
}
