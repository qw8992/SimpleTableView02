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
    var animals = ["cat", "Bird" , "Horse", "Pig", "Whale"]
    var year = ["3", "5", "10", "2", "6"]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        myTableView.dataSource = self
        
    }
    
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int{
        return animals.count
    }
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell{
        let cell = myTableView.dequeueReusableCell(withIdentifier: "RE", for: indexPath)
        let row = indexPath.row
        
        cell.textLabel?.text = animals[row]
        
        cell.detailTextLabel?.text = year[row]
        
        cell.imageView?.image = UIImage(named: animals[row])
        
        return cell
    }
    public func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String?{

        if section == 0 {
            return "Animal Farm"
        } else{
            return "Animal Farm2"
        }
        
    }
    
    
    public func numberOfSections(in tableView: UITableView) -> Int{
        return 2;
        
    }
    public func tableView(_ tableView: UITableView, titleForFooterInSection section: Int) -> String?{
        if section == 0 {
            return "End of Animal Farm1"
        } else{
            return "End of Animal Farm2"
        }
    }
    


}

