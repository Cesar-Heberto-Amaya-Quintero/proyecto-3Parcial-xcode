//
//  AlumnoController.swift
//  proyecto3Parcial
//
//  Created by Alumno ULSA on 01/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class AlumnoController: UIViewController {
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblMatricula: UILabel!
    @IBOutlet weak var lblNombreContacto: UILabel!
    @IBOutlet weak var lblParentesco: UILabel!
    @IBOutlet weak var lblTelefono2: UILabel!
    @IBOutlet weak var lblTelefono1: UILabel!
    
    @IBOutlet weak var imgFoto: UIImageView!
    var alumno: [Alumno] = [Alumno(nombre: "César Heberto Amaya Quintero",foto:"fotoPrueba", matricula: "199112", nombreContacto: "Heberto Amaya Licea", parentesco: "Padre", telefono1: "6449988999", telefono2: "6442014287")]
    
    override func viewDidLoad() {
        
        
        lblNombre.text = alumno[0].nombre
        imgFoto.layer.cornerRadius = 20
        imgFoto.image = UIImage(named: alumno[0].foto)
        lblMatricula.text = alumno[0].matricula
        lblNombreContacto.text = alumno[0].nombreContacto
        lblParentesco.text = alumno[0].parentesco
        lblTelefono1.text = alumno[0].telefono1
        lblTelefono2.text = alumno[0].telefono2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "actualizarContacto" {
            let destino = segue.destination as! ActualizarContactoController
            destino.alumno = alumno [0]
            
            destino.callBackActualizar = actualizarContacto
        }
    }
    
    func actualizarContacto (alumno: Alumno) {
        
        lblNombreContacto.text = alumno.nombreContacto
        lblParentesco.text = alumno.parentesco
        lblTelefono1.text = alumno.telefono1
        lblTelefono2.text = alumno.telefono2
    }
    
    
}
