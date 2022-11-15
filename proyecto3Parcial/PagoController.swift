//
//  PagoController.swift
//  proyecto3Parcial
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class PagoController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var pagos: [Pago]?
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 224
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pagos!.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPago") as? CeldaPagoController
        celda?.lblNombreSemestre.text = pagos![indexPath.row].semestre
        celda?.lblConcepto.text = pagos![indexPath.row].concepto
        celda?.lblReferencia.text = pagos![indexPath.row].referencia
        celda?.lblFecha.text = pagos![indexPath.row].fechaLimite
        
        if (pagos![indexPath.row].pagado == true){
            celda?.pagado.tintColor = UIColor(red: 216/255, green: 134/255, blue: 175/255, alpha: 1)
        } else
        {
            celda?.pagado.tintColor = UIColor(red: 191/255, green: 191/255, blue: 191/255, alpha: 1)
        }
        
        
        return celda!
    }
    
    override func viewDidLoad() {
        
    }
}
