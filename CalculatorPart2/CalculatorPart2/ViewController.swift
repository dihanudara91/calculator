//
//  ViewController.swift
//  CalculatorPart2
//
//  Created by HEWA DEWAGE DIHAN UDARA SANDARUWAN on 21/09/2562 BE.
//  Copyright © 2562 HEWA DEWAGE DIHAN UDARA SANDARUWAN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    var displayNumber:Double = 0;
    var PriviousNum:Double = 0 ;
    var Math = false
    var total = 0;
    @IBOutlet weak var label: UILabel!
    
    @IBAction func numbers(_ sender: UIButton)
    {
        if Math == true
               {
                label.text = String(sender.tag-1)
                displayNumber = Double(label.text!)!
                Math = false
               }
        else
        {
            label.text=label.text! + String(sender.tag-1)
                   displayNumber = Double(label.text!)!
                   
        }

       
    }
    @IBAction func buttons(_ sender: UIButton)
    {
       
        
        if label.text != "" && sender.tag != 11 && sender.tag != 16
        {
            PriviousNum = Double(label.text!)!
            
            if sender.tag == 12 // Divide
            {
                label.text = "/";
            }
            else if sender.tag == 13 // Multiply
            {
                label.text = "X";
            }
            else if sender.tag == 14 // Minus
            {
                label.text = "-";
            }
            else if sender.tag == 15 // Plus
            {
                label.text = "+";
            }
            total = sender.tag
            Math = true;
        }
        
        else if sender.tag == 16
        {
            if total == 12
            {
                if label.text == String(0)
                {
                    label.text = "Error"
                }
                else 
                {
                    label.text = String(PriviousNum / displayNumber)
                }
                
            }
            else if total == 13
            {
                label.text = String(PriviousNum *  displayNumber)
            }
                       
            else if total == 14
            {
                label.text = String(PriviousNum - displayNumber)
            }
            else if total == 15
            {
                label.text = String(PriviousNum +  displayNumber)
            }
                      
        }
        
        else if sender.tag == 11
        {
            label.text = ""
            PriviousNum = 0 ;
            displayNumber = 0 ;
            total = 0 ;
            
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

