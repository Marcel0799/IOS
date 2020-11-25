//
//  ViewController.swift
//  HaloWelt
//
//  Created by Marcel Bienia on 13.11.20.
//

import UIKit

class ViewController: UIViewController {
    
    var zahl = 0

    @IBOutlet weak var lowerOutlet: UIButton!
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var higherOutler: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.text = String(0)
        lowerOutlet.layer.cornerRadius = 15
        higherOutler.layer.cornerRadius = 15
    }

    @IBAction func button(_ sender: UIButton) {
        zahl = zahl + 1
        label.text = String(zahl)
    }
    
    @IBAction func lower(_ sender: UIButton) {
        zahl = zahl - 1
        label.text = String(zahl)
    }
}

