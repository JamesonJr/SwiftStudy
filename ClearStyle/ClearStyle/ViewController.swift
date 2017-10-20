//
//  ViewController.swift
//  ClearStyle
//
//  Created by Eugenie Tyan on 27.09.17.
//  Copyright © 2017 Eugenie Tyan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView! // ! - что это значит?
    var ToDoItems = [ToDoItem] ()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        if ToDoItems.count > 0 {
            return
        }
        
        ToDoItems.append(ToDoItem (text: "feed my cat")) //append судя по всему аналогичен add в obj-c
        ToDoItems.append(ToDoItem (text: "prepare lunch"))
        ToDoItems.append(ToDoItem (text: "start running tomorrow"))
        ToDoItems.append(ToDoItem (text: "try to be more patience"))
        
        
    }
    
    func numberOfSectionsInTableView (tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView (tableView: UITableView, numberOfRowsInSection section: Int) -> Int { //не забыть узнать что
        return ToDoItems.count                                               //за хрень между двумя параметрами
    }
    
    func tableView (tableView: UITableView,
                    cellForRowAtIndexPath indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell",
                                                 for: indexPath) //as! UITableViewCell
        let item = ToDoItems [indexPath.row]
        cell.textLabel?.text = item.text
        return cell
    }


}

