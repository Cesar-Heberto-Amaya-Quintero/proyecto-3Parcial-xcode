//
//  ActualizarContactoController.swift
//  proyecto3Parcial
//
//  Created by Alumno ULSA on 04/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ActualizarContactoController: UIViewController {
    

    
    var alumno: Alumno?
    
    var callBackActualizar : ((Alumno) -> Void)?
    
    @IBOutlet weak var txtNombreContacto: UITextField!
    @IBOutlet weak var txtParentesco: UITextField!
    
    @IBOutlet weak var txtTelefono1: UITextField!
    
    @IBOutlet weak var txtTelefono2: UITextField!
    
    override func viewDidLoad() {
        if alumno != nil {
            txtNombreContacto.text = alumno?.nombreContacto
            txtParentesco.text = alumno?.parentesco
            txtTelefono1.text = alumno?.telefono1
            txtTelefono2.text = alumno?.telefono2
        }
    }
    
    
    @IBAction func doTapActualizar(_ sender: Any) {
        if callBackActualizar != nil {
            alumno?.nombreContacto = txtNombreContacto.text!
            alumno?.parentesco = txtParentesco.text!
            alumno?.telefono1 = txtTelefono1.text!
            alumno?.telefono2 = txtTelefono2.text!
            callBackActualizar!(alumno!)
            self.navigationController?.popViewController(animated: true)
        }
    }
}
