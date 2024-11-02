//
//  ViewController.swift
//  MyApp
//
//  Created by user269369 on 10/26/24.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func botaoPressionado(_ sender: Any) {
        print("O botão foi pressionado")
    }
    
    @IBOutlet weak var botaoIniciarAvaliacao: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func configurarLayout(){
        botaoIniciarAvaliacao.layer.cornerRadius = 20.0
    }
}
