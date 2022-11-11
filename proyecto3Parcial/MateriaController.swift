//
//  MateriaController.swift
//  proyecto3Parcial
//
//  Created by Alumno ULSA on 09/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class MateriaController: UIViewController {
    
    var clase : Materia?
    
    var callBackAsistencia : ((Materia) -> Void)?
    
    @IBOutlet weak var lblNombre: UILabel!
    @IBOutlet weak var lblHorario: UILabel!
    @IBOutlet weak var lblFecha: UILabel!
    @IBOutlet weak var lblSalon: UILabel!
    @IBOutlet weak var lblFaltas: UILabel!
    @IBOutlet weak var lblMaestro: UILabel!
    
    
    @IBOutlet weak var rate1: UIImageView!
    @IBOutlet weak var rate2: UIImageView!
    @IBOutlet weak var rate3: UIImageView!
    @IBOutlet weak var rate4: UIImageView!
    @IBOutlet weak var rate5: UIImageView!
    
    
    @IBOutlet weak var lblLeyenda: UILabel!
    @IBOutlet weak var lblComentario: UILabel!
    
    @IBOutlet weak var btnAsistencia: UIButton!
    
    override func viewDidLoad() {
        self.title = clase?.nombre
        lblHorario.text = clase?.horario
        lblFecha.text = clase?.fecha
        lblSalon.text = clase?.salon
        lblFaltas.text = clase?.faltas
        lblMaestro.text = clase?.maestro
        
        if (clase?.calificacionMaestro == "") {
            rate1.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate2.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            lblLeyenda.text = "Aún no has realizado la evaluación docente"
        }
        
        if (clase?.calificacionMaestro == "1") {
            rate2.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            lblLeyenda.isHidden = true
        }
        
        if (clase?.calificacionMaestro == "2") {
            rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            lblLeyenda.isHidden = true
        }
        
        if (clase?.calificacionMaestro == "3") {
            rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            lblLeyenda.isHidden = true
        }
        
        if (clase?.calificacionMaestro == "4") {
            rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            lblLeyenda.isHidden = true
        }
        
        if (clase?.calificacionMaestro == "5") {
            lblLeyenda.isHidden = true
        }
        
        if (clase?.comentarioMaestro == "") {
            lblComentario.text = "No has realizado ningún comentario"
        }
        
        if (clase?.asistenciaDia == true)
        {
            btnAsistencia.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            btnAsistencia.setTitle("Tomada", for: .normal)
            btnAsistencia.isEnabled = false
        }
    }
    
    @IBAction func doTapAsistencia(_ sender: Any) {
       
        if callBackAsistencia != nil {
            clase?.asistenciaDia = true
            callBackAsistencia!(clase!)
            self.navigationController?.popViewController(animated: true)
        }
    
    }
}
