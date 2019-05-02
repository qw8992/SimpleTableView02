//
//  ViewController.swift
//  SimpleTableView02
//
//  Created by D7703_29 on 2019. 5. 2..
//  Copyright © 2019년 D7703_29. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
    
    @IBOutlet weak var myTableView: UITableView!
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        myTableView.dataSource = self
        
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return 5
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        let sec = indexPath.section
        
        cell.textLabel?.text = "section : \(sec)"
        
        cell.detailTextLabel?.text = "Row : \(row)"
        
        
        
        return cell
    }
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{

        if section == 0 {
            return "Section Header1"
        } else{
            return "Section Header2"
        }
        
    }
    
    
    public func numberOfSections(in tableView: UITableView) -> Int{
        return 2;
        
    }
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?{
        if section == 0 {
            return "Section Footer 1"
        } else{
            return "Section Footer 2"
        }
    }
    


}

