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
    
    var calificacion : String = "0"
    
    var callBackAsistencia : ((Materia) -> Void)?
    
    var callBackEvaluacion : ((Materia) -> Void)?
    
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
    
    @IBOutlet weak var btnEvaluar: UIButton!
    
    @IBOutlet weak var lblLeyenda: UILabel!
    
    @IBOutlet weak var btnAsistencia: UIButton!
    
    @IBOutlet weak var txtComentario: UITextField!
    override func viewDidLoad() {
        self.title = clase?.nombre
        lblHorario.text = clase?.horario
        lblFecha.text = clase?.fecha
        lblSalon.text = clase?.salon
        lblFaltas.text = clase?.faltas
        lblMaestro.text = clase?.maestro
        txtComentario.text = clase?.comentarioMaestro
        
        if clase?.evaluado == true {
            txtComentario.isUserInteractionEnabled = false
        }
        
        if (clase?.calificacionMaestro == "") {
            
            lblLeyenda.text = "Aún no has realizado la evaluación docente"
        }
        
        if (clase!.calificacionMaestro != "")
        {
            btnEvaluar.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            btnEvaluar.setTitle("Evaluado", for: .normal)
            btnEvaluar.isEnabled = false
        }
        
        if (clase?.calificacionMaestro == "1") {
            rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            lblLeyenda.text = "Ya realizaste la evaluación"
        }
        
        if (clase?.calificacionMaestro == "2") {
            rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate2.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            lblLeyenda.text = "Ya realizaste la evaluación"
        }
        
        if (clase?.calificacionMaestro == "3") {
            rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate2.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate3.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            lblLeyenda.text = "Ya realizaste la evaluación"
        }
        
        if (clase?.calificacionMaestro == "4") {
            rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate2.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate3.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate4.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            lblLeyenda.text = "Ya realizaste la evaluación"
        }
        
        if (clase?.calificacionMaestro == "5") {
            rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate2.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate3.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate4.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            rate5.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
            lblLeyenda.text = "Ya realizaste la evaluación"
        }
        
        if (clase?.comentarioMaestro == "") {
            txtComentario.text = "No has realizado ningún comentario"
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
            btnAsistencia.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
            btnAsistencia.isEnabled = false
        }
    
    }
    
    
    @IBAction func doTapRate1(_ sender: Any) {
        rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate2.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        calificacion = "1"
    }
    
    
    @IBAction func daTapRate2(_ sender: Any) {
        rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate2.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate3.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        calificacion = "2"
    }
    
    
    @IBAction func doTapRate3(_ sender: Any) {
        rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate2.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate3.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate4.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        calificacion = "3"
    }
    
    
    @IBAction func doTapRate4(_ sender: Any) {
        rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate2.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate3.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate4.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate5.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        calificacion = "4"
    }
    
    
    @IBAction func doTapRate5(_ sender: Any) {
        rate1.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate2.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate3.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate4.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        rate5.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        calificacion = "5"
    }
    
    
    @IBAction func doTapEvaluar(_ sender: Any) {
        clase?.calificacionMaestro = calificacion
        clase?.comentarioMaestro = txtComentario.text!
        clase?.evaluado = true
        callBackAsistencia!(clase!)
        self.navigationController?.popViewController(animated: true)
    }
}
