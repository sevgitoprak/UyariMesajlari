//
//  ViewController.swift
//  UyariMesajlari
//
//  Created by Macbook on 24.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var password2TextField: UITextField!
    
    func alertOlustur(titleGirdisi: String, messageGirdisi: String)
    {
        let uyariMesaji = UIAlertController(title: titleGirdisi, message: messageGirdisi, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { UIAlertAction in
            //OK Button'una tıklanınca olacaklar
            print("ok button tıklandı")}
        uyariMesaji.addAction(okButton)
        self.present(uyariMesaji, animated: true, completion: nil)
    }
    
    @IBAction func signUpTiklandi(_ sender: Any) {
        
        if emailTextField.text == ""
        {
            //emailini girmemişsin
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Email eksik!")
            
        }
        else if passwordTextField.text == ""
        {
            //parolanı girmemişsin
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parola eksik!")
            
        }
        else if passwordTextField.text != password2TextField.text {
            //parolalar uyuşmuyor
            alertOlustur(titleGirdisi: "Hata!", messageGirdisi: "Parolalar uyuşmuyor!")
            
        }
        else
        {
            //başarılı kayıt oluşturuldu
            alertOlustur(titleGirdisi: "Tebrikler", messageGirdisi: "Kullanıcı oluşturuldu")
           
        }
        
        }
        
    }
    
    



