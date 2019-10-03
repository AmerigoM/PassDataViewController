//
//  SecondViewController.swift
//  PassDataViewController
//
//  Created by Amerigo Mancino on 19/01/2019.
//  Copyright © 2019 Amerigo Mancino. All rights reserved.
//

import UIKit

// protocol
protocol CanReceive {
    func dataReceived(data: String);
}

class SecondViewController: UIViewController {
    
    var delegate : CanReceive?;
    
    var data : String = "";

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
    }
    
    
    @IBAction func sendDataBack(_ sender: Any) {
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
    }
    


}
