//
//  ViewController.swift
//  01-iamrich
//
//  Created by Juanse Colina on 2022-12-01.
//

import UIKit

class ViewController: UIViewController{
    //Propertys
    
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var imageDiamond: UIImageView!
    @IBOutlet weak var pushButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading this view, typically from a nib
    }
    
    
    //Methods
    
    @IBAction func pressedButton(_ sender: UIButton) {
    
        let controller = UIAlertController(title: "I am rich", message: """
                        Im a Rich,
                        I deserve it.
                        I am good, healthy and successfull
                        """, preferredStyle: .actionSheet)
        
        let action = UIAlertAction(title: "OK", style: .default) { action in
            print("He pulsado el boton OK.")
        }
        
        controller.addAction(action)
        
        //ejemplo rechazar
        let action2 = UIAlertAction(title: "Borrar", style: .destructive, handler: { (action) in
            print("He pulsadp el boton de Borrar.")
        })

        controller.addAction(action2)
        //ejemplo cancelar
        let action3 = UIAlertAction(title: "Cancelar", style: .cancel){ _ in
            print("He pulsado el boton de cancelar.")
        }

        controller.addAction(action3)
        
        self.show(controller, sender: nil)
        
        
        
    }
    
    
    
}
