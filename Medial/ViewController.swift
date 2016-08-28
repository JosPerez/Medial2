//
//  ViewController.swift
//  Medial
//
//  Created by Jose Eduardo Perez Martinez on 27/08/16.
//  Copyright © 2016 Jose Eduardo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tfMedicamento: UITextField!
    @IBOutlet weak var tfNotas: UITextField!
    @IBOutlet weak var dpHora: UIDatePicker!
    
    @IBAction func btGuardar(sender: AnyObject) {
        if tfMedicamento.hasText(){
            
            sAMedicamento.append(tfMedicamento.text!)
            sANotas.append(tfNotas.text!)
            sADate.append(dpHora.date)
            tfMedicamento.text = ""
            tfNotas.text = ""
            
            let alert = UIAlertController(title: "Exito!",message: "Datos Guardados",preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "OK", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)
            
        
        }else {
            let alert = UIAlertController(title: "Datos",message: "Faltan Datos",preferredStyle: UIAlertControllerStyle.Alert)
            alert.addAction(UIAlertAction(title: "Revisar", style: UIAlertActionStyle.Default, handler: nil))
            self.presentViewController(alert, animated: true, completion: nil)

        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        self.view.endEditing(true)
    }


}

