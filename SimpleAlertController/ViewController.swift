//
//  ViewController.swift
//  SimpleAlertController
//
//  Created by D7702_10 on 2019. 4. 10..
//  Copyright © 2019년 D7702_10. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

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
        
        let delAction = UIAlertAction(title: "Delete", style: .destructive, handler: nil)
        
        alertController.addAction(camAction)
        alertController.addAction(cancelAction)
        alertController.addAction(libAction)
        alertController.addAction(delAction)
        alertController.addAction(saveAction)
        
        present(alertController, animated: true, completion: nil)
        
    }
    
}

