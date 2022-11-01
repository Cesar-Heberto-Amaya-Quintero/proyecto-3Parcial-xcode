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
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 108
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        <#code#>
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        <#code#>
    }
}
