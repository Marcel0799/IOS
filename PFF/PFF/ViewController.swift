//
//  ViewController.swift
//  PFF
//
//  Created by Marcel Bienia on 22.11.20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet var tableView: UITableView!
    
    let myData = ["first","second","third","four","five","six","seven","eight","nine","ten"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nib = UINib(nibName: "Auto", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "Auto")
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    // functions
    @IBAction func addAction(_ sender: UIButton) {
        
        print("add pressed")
        
        self.performSegue(withIdentifier: "addSegue", sender: self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let auto = tableView.dequeueReusableCell(withIdentifier: "Auto", for: indexPath) as! Auto
        auto.name.text = myData[indexPath.row]
        auto.bild.backgroundColor = .red
        return auto
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped")
    }

}

