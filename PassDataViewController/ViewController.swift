//
//  ViewController.swift
//  PassDataViewController
//
//  Created by Amerigo Mancino on 12/01/2019.
//  Copyright © 2019 Amerigo Mancino. All rights reserved.
//

import UIKit

// inherit from the protocol
class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "goToSecondScreen", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if(segue.identifier == "goToSecondScreen") {
            // reference to the destination
            let secondVC = segue.destination as! SecondViewController
            // we set its data property
            secondVC.data = textField.text!
            // we set ourself as the delegate of the SecondViewController
            secondVC.delegate = self
        }
    }
    
    
    // function to conform the class to the protocol
    // this method is triggered when the data are sent back
    func dataReceived(data: String) {
        label.text = data
    }
    
}

