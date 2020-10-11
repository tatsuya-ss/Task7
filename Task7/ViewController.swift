//
//  ViewController.swift
//  Task7
//
//  Created by 坂本龍哉 on 2020/10/11.
//

import UIKit

class ViewController: UIViewController,UITabBarDelegate,UITextFieldDelegate {
   
    @IBOutlet private weak var textField1: UITextField!
    @IBOutlet private weak var textField2: UITextField!
    @IBOutlet private weak var calcButton: UIButton!
    @IBOutlet private weak var resultLabel: UILabel!
    @IBOutlet private weak var tabBar: UITabBar!
    
    var ans = String()

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        textField1.keyboardType = .numberPad
        textField2.keyboardType = .numberPad

        
        view.backgroundColor = UIColor.red
        tabBar.delegate = self
        textField1.delegate = self
        textField2.delegate = self

    }
    
       @IBAction func calcButtonAction(_ sender: Any) {
        let num1 = Double(textField1.text!) ?? 0
        let num2 = Double(textField2.text!) ?? 0

        func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem){
            
            switch item.tag{
            case 0:
                view.backgroundColor = UIColor.red
                resultLabel.text = String(num1 + num2)

                
    //            calcButtonAction((Any).self)
    //
    //            ans = String((Double(textField1.text!) ?? 0) + (Double(textField2.text!) ?? 0))
                
            case 1:
                view.backgroundColor = UIColor.blue
                resultLabel.text = String(num1 - num2)

    //            tag1CalcAction((Any).self)
    //            ans = String((Double(textField1.text!) ?? 0) - (Double(textField2.text!) ?? 0))

                
            default:
                return
            }
        }
        resultLabel.text = String(num1 + num2)
        
        

        textField1.endEditing(true)
        textField2.endEditing(true)
    }

    
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
            view.endEditing(true)
        }
    


}

