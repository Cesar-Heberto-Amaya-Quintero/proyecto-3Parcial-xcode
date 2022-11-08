//
//  ComidaController.swift
//  proyecto3Parcial
//
//  Created by Alumno ULSA on 08/11/22.
//  Copyright © 2022 Alumno. All rights reserved.
//

import UIKit

class ComidaController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout{
    
    var comidas :  [Comida]?
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return comidas!.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let celda = collectionView.dequeueReusableCell(withReuseIdentifier: "celdaComida", for: indexPath) as? CeldaComidaController
        celda?.lblNombre.text = comidas![indexPath.item].nombre
        celda?.lblPrecio.text = comidas![indexPath.item].precio
        celda?.lblRate.text = comidas![indexPath.item].rate
        celda?.imgComida.image = UIImage(named: comidas![indexPath.item].foto)
        
        //ESTILOS
        celda?.mascara.layer.cornerRadius = 50
        
        celda?.layer.cornerRadius = 10
        
        return celda!
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 165, height: 200)
    }
    
    override func viewDidLoad() {
       
    }
    
}
