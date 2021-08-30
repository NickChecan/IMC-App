//
//  ViewController.swift
//  IMC
//
//  Created by Checan Nicholas C on 29/08/21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var tfWeight: UITextField!
    @IBOutlet weak var tfHeight: UITextField!
    
    @IBOutlet weak var lbResult: UILabel!
    @IBOutlet weak var ivResult: UIImageView!
    
    @IBOutlet weak var viResult: UIView!
    var imc: Double = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        if let weight =  Double(tfWeight.text!), let height = Double(tfHeight.text!) {
            imc = weight / (height*height)
            //imc = weight / pow(height, 2)
            showResults()
        }
    }
    
    func showResults() {
        var result: String = ""
        var image: String = ""
        
        switch imc {
        case 0..<16:
            result = "Magreza"
            image = "ab aixo"
        case 16..<18.5:
            result = "Abaixo do Peso"
            image = "abaixo"
        case 18.5..<25 :
            result = "Peso ideal"
            image = "ideal"
        case 25..<30:
            result = "Sobrepeso"
            image = "sobre"
        default:
            result = "Obesidade"
            image = "obesidade"
        }
        lbResult.text = result
        ivResult.image = UIImage(named: image)
        viResult.isHidden = false
    }
    
}

