//
//  ViewController.swift
//  SecondKadaiApp
//
//  Created by 伊藤敬 on 2022/12/12.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var textField1: UITextField!
    @IBOutlet weak var textField2: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toNext"{
            //sequeから遷移先のResultViewControllerを取得する
            let next:ResultViewController = segue.destination as! ResultViewController
            next.lastName = textField1.text!
            next.firstName = textField2.text!
        }
    }
    
    @IBAction func unwind(_ segue: UIStoryboardSegue){
        
    }
}

