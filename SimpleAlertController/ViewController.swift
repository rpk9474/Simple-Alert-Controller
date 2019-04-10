//
//  ViewController.swift
//  SimpleAlertController
//
//  Created by D7702_10 on 2019. 4. 10..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var button2Text: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    }


    @IBAction func buttonPressed(_ sender: Any) {
        let alertController = UIAlertController(title: "카메라", message: "Take a Picture", preferredStyle: .actionSheet)
        
        let camAction = UIAlertAction(title: "Camera", style: .default, handler: nil)
        
        let libAction = UIAlertAction(title: "Library", style: .default, handler: nil)
        
        let saveAction = UIAlertAction(title: "Save", style: .default, handler: nil)
        
        let cancelAction = UIAlertAction(title: "Cancel", style: .cancel, handler: nil)
        
//        let delAction = UIAlertAction(title: "Delete", style: .default, handler: {
//            (action: UIAlertAction) -> Void in // 리턴값 void
//            self.view.backgroundColor = UIColor.blue
//        })
        
        // 후행 클로저 (trailing closure)
        let delAction = UIAlertAction(title: "Delete", style: .default) {
            (action: UIAlertAction) -> Void in // 리턴값 void
            self.view.backgroundColor = UIColor.blue
        }
        
        
        alertController.addAction(camAction)
        alertController.addAction(cancelAction)
        alertController.addAction(libAction)
        alertController.addAction(delAction)
        alertController.addAction(saveAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
    
    @IBAction func AlertButton2(_ sender: Any) {
        
        let alertController2 = UIAlertController(title: "Hello LHB", message: "What do you want to do?", preferredStyle: .alert)
        
        let ok = UIAlertAction(title: "OK", style: .default) {
            (action: UIAlertAction) -> Void in
            self.button2Text.text = "LHB"
        }
        
        alertController2.addAction(ok)
        
        present(alertController2, animated: true, completion: nil)
    }
    
}

