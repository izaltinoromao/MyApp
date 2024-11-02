//
//  ResultadoViewController.swift
//  MyApp
//
//  Created by user269369 on 11/2/24.
//

import UIKit

class ResultadoViewController: UIViewController {

    var pontuacao: Int?
    
    @IBOutlet weak var textoPontuacao: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarResultado()
        // Do any additional setup after loading the view.
    }
    
    func configurarResultado() {
        guard let pontuacao = pontuacao
        else { return }
        textoPontuacao.text = "Pontuacao: \(pontuacao)"
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
