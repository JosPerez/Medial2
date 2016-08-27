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
        let cell = UITableViewCell(style: UITableViewCellStyle.Default ,reuseIdentifier: "Cell")
        
        cell.textLabel?.text = sAMedicamento[indexPath.row]
        
        return cell
    }
    override func viewDidAppear(animated: Bool) {
        
        tvAlarmas.reloadData()
    }

}
