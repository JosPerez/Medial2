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
        sAMedicamento.append(tfMedicamento.text!)
        sANotas.append(tfNotas.text!)
        sADate.append(dpHora.date)
        
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

