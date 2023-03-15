//
//  ViewController.swift
//  geeks_3_tz
//
//  Created by Баэль Рыспеков on 14/3/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var loginButton: UIButton!
    @IBOutlet weak var numberTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        
  
        
        numberTextField.returnKeyType = .next
     keyBoardSetup()
       
    }


    @IBAction func loginAction(_ sender: Any) {
  
        if numberTextField.text?.isEmpty ?? true
        {

            numberTextField.layer.borderWidth = 1
            numberTextField.layer.borderColor = UIColor.red.cgColor
            numberTextField.placeholder = "заполните поле"
               }
               else{

                   let vc: TableViewController = storyboard?.instantiateViewController(withIdentifier: "TableViewController") as!TableViewController
                         self.navigationController?.pushViewController(vc, animated: true)
               }
        if numberTextField.text!.count > 0{
            numberTextField.layer.borderColor = UIColor.white.cgColor
                    }
    
    }
    
    private func  keyBoardSetup(){
        
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
               view.addGestureRecognizer(tapGesture)
        
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillShow(notification: )), name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.addObserver(self, selector: #selector(keyboardWillHide), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    
    @objc private func hideKeyboard() {
           view.endEditing(true)
       }
    
    
    @objc private func keyboardWillShow(notification: NSNotification){
        if let keybordFrame: NSValue = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? NSValue {
            let keyboardHeight = keybordFrame.cgRectValue.height
            let bottomSpace = self.view.frame.height - (loginButton.frame.origin.y + loginButton.frame.height)
            self.view.frame.origin.y -= keyboardHeight - bottomSpace
        }
    }
    
    
    @objc private func keyboardWillHide(){
        self.view.frame.origin.y = 0
    }
    
    deinit{
        NotificationCenter.default.removeObserver(self,name: UIResponder.keyboardWillShowNotification,object: nil)
        NotificationCenter.default.removeObserver(self,name: UIResponder.keyboardWillShowNotification,object: nil)
    }

}

