//
//  ViewController.swift
//  caclulator
//
//  Created by Ashar Afaq on 5/27/20.
//  Copyright © 2020 Ashar Afaq. All rights reserved.
//

import UIKit


class ViewController: UIViewController {
    var placehold = 0
   
    @IBOutlet weak var Value1: UITextField!
    @IBOutlet weak var Value2: UITextField!
    @IBOutlet weak var Result: UITextView!
    
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        Value1.delegate = self
        Value2.delegate = self
        Result.text = "0"
        Value1.text = "\(0)"
        
        Value2.text = "\(0)"
       //dataconnect
       
       
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    
   
    @IBAction func plusButton(_ sender: UIButton) {

        let plus = Double(Value1.text!)! + Double(Value2.text!)!
              Result.text = "\(plus)"
    }
    
        
    
    @IBAction func minusButton(_ sender: UIButton) {
      
    let minus = Double(Value1.text!)! - Double(Value2.text!)!
        Result.text = "\(minus)"
    }
    
    @IBAction func multButton(_ sender: UIButton) {
    let mult = Double(Value1.text!)! * Double(Value2.text!)!
        Result.text = "\(mult)"
    }
    

    @IBAction func divButton(_ sender: Any) {
    let div = Double(Value1.text!)! / Double(Value2.text!)!
        Result.text = "\(div)"
    }
    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        Value1.resignFirstResponder()
        Value2.resignFirstResponder()
    }
}
extension UIViewController : UITextFieldDelegate {
    public func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}
