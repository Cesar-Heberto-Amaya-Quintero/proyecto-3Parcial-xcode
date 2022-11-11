//
//  EvaluacionController.swift
//  proyecto3Parcial
//
//  Created by Alumno ULSA on 11/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class EvaluacionController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var materias : [Materia]?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 370
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return materias!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaEvaluacion") as? CeldaEvaluacionController
        celda?.lblMateria.text = materias![indexPath.row].nombre
        celda?.lblDocente.text = materias![indexPath.row].maestro
        return celda!
    }
    
}
