//
//  TableViewController.swift
//  Medial
//
//  Created by Jose Eduardo Perez Martinez on 27/08/16.
//  Copyright © 2016 Jose Eduardo. All rights reserved.
//

import UIKit

var sAMedicamento = [String]()
var sANotas = [String]()
var sADate = [NSDate]()

class TableViewController: UITableViewController {

    @IBOutlet var tvAlarmas: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return sAMedicamento.count
    }
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) ->UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("cell", forIndexPath: indexPath) as! TableViewCell
        
        cell.lblMedicamento.text = sAMedicamento[indexPath.row]
        cell.lblNotas.text = sANotas[indexPath.row]
        let dateForm = NSDateFormatter()
        dateForm.dateFormat = "h : mm a"
        let dateString = dateForm.stringFromDate(sADate[indexPath.row])
        cell.lblDate.text = String(dateString)
        
        return cell
    }
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if(editingStyle == UITableViewCellEditingStyle.Delete)
        {
            sAMedicamento.removeAtIndex(indexPath.row)
            sANotas.removeAtIndex(indexPath.row)
            sADate.removeAtIndex(indexPath.row)
            
            NSUserDefaults.standardUserDefaults().setObject(sAMedicamento, forKey: "Medicamento")
            NSUserDefaults.standardUserDefaults().setObject(sANotas, forKey: "Notas")
            NSUserDefaults.standardUserDefaults().setObject(sADate, forKey: "Hora")
            
            tvAlarmas.reloadData()
        }
        
    }
    override func viewDidAppear(animated: Bool) {
        
        tvAlarmas.reloadData()
    }

}
