//
//  ViewController.swift
//  NoteTaker
//
//  Created by Vedat Dokuzkardeş on 7.11.2023.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var NameTXT: UITextField!
    @IBOutlet weak var DayTXT: UITextField!
    @IBOutlet weak var NAME: UILabel!
    @IBOutlet weak var DAY: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let sName = UserDefaults.standard.object(forKey: "ad")
        let sDay = UserDefaults.standard.object(forKey: "tarih")
        
        if let newName = sName as? String {
            NAME.text = newName
        }
        if let newDay = sDay as? String {
            DAY.text = newDay
        }
    }
    
    
    @IBAction func SaveBtn(_ sender: Any) {
        
        UserDefaults.standard.setValue(NameTXT.text!, forKey: "ad")
        UserDefaults.standard.setValue(DayTXT.text!, forKey: "tarih")
        
        NAME.text = "Name: \(NameTXT.text!)"
        DAY.text = "Birthday: \(DayTXT.text!)"
        
    }
    
    
    @IBAction func DeleteBtn(_ sender: Any) {
        
        let sName = UserDefaults.standard.object(forKey: "ad")
        let sDay = UserDefaults.standard.object(forKey: "tarih")
        
        if (sName as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "ad")
        }
        if (sDay as? String) != nil {
            UserDefaults.standard.removeObject(forKey: "tarih")
        }
    }
    

}

