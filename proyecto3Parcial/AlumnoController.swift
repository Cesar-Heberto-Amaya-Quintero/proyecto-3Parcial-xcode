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
    
    var alumno: Alumno?
    
    var pagos: [Pago]?
    
    override func viewDidLoad() {
        
        
        lblNombre.text = alumno?.nombre
        imgFoto.layer.cornerRadius = imgFoto.bounds.size.width / 2.0
        //imgFoto.layer.cornerRadius = 50
        imgFoto.image = UIImage(named: alumno!.foto)
        lblMatricula.text = alumno?.matricula
        lblNombreContacto.text = alumno?.nombreContacto
        lblParentesco.text = alumno?.parentesco
        lblTelefono1.text = alumno?.telefono1
        lblTelefono2.text = alumno?.telefono2
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "actualizarContacto" {
            let destino = segue.destination as! ActualizarContactoController
            destino.alumno = alumno
            
            destino.callBackActualizar = actualizarContacto
        } else if segue.identifier == "pagos" {
            let destino = segue.destination as! PagoController
            destino.pagos = pagos
        }
    }
    
    func actualizarContacto (alumno: Alumno) {
        
        lblNombreContacto.text = alumno.nombreContacto
        lblParentesco.text = alumno.parentesco
        lblTelefono1.text = alumno.telefono1
        lblTelefono2.text = alumno.telefono2
    }
    
    
}
