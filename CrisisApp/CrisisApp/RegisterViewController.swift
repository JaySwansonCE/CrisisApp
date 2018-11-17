//
//  RegisterViewController.swift
//  CrisisApp
//
//  Created by Jay Swanson on 11/17/18.
//  Copyright © 2018 MentalHealth. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var userUsernameTextField: UITextField!
    @IBOutlet weak var userPasswordTextField: UITextField!
    @IBOutlet weak var userRePasswordTextField: UITextField!
    
    @IBAction func registerButtonPressed(_ sender: AnyObject) {
        
        /*
 Get Usernames and Passwords to check fields
 */
        let userUsername = userUsernameTextField.text
        let userPassword = userPasswordTextField.text
        let userPasswordConfirm = userRePasswordTextField.text
        
        
        if(userPassword != userPasswordConfirm){
            displayAlert(userMessage: "Passwords do not match");
            return;
        }
        
        /*StoreData that is inputted by the user */
        UserDefaults.standard.set(userUsername, forKey: "userUsername");
        UserDefaults.standard.set(userPassword, forKey: "userPassword");
        UserDefaults.standard.synchronize();
        
        
        /*Registration Complete */
        var myAlert = UIAlertController(title: "Alert", message: "Registration Successful!", preferredStyle: UIAlertController.Style.alert);
        
        let actionOk = UIAlertAction(title: "Ok", style: UIAlertAction.Style.default){
            action in
            self.dismiss(animated: true, completion:nil);
        }
        
        myAlert.addAction(actionOk);
        self.present(myAlert, animated:true, completion: nil);
        
    }
    
    func displayAlert(userMessage: String){
        var myAlert = UIAlertController(title: "Alert", message: "Passwords Do Not Match", preferredStyle: UIAlertController.Style.alert);
        
        let okAction = UIAlertAction(title:"Ok", style: UIAlertAction.Style.default, handler:nil);
        
        myAlert.addAction(okAction);
        
        self.present(myAlert, animated: true,completion: nil);
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
