//
//  PerguntaViewController.swift
//  MyApp
//
//  Created by user269369 on 11/2/24.
//

import UIKit

class PerguntaViewController: UIViewController {

    var pontuacao = 0
    var perguntaAtual = 0
    
    @IBOutlet weak var tituloPergunta: UILabel!

    @IBAction func escolhaResposta(_ sender: UIButton) {
        print(sender.tag)
       
       if sender.tag == 0 {pontuacao -= 1}
       else if sender.tag == 2 {pontuacao += 1}
        
       if perguntaAtual < perguntas.count - 1 {
                    perguntaAtual += 1
                    configurarPerguntas()
       } else {
           navegaParaTelaResposta()
       }
    }
    
    
    @IBOutlet var botoesResposta: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configurarLayout()
        configurarPerguntas()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let resultadoVC = segue.destination as? ResultadoViewController
        else{return}
        resultadoVC.pontuacao = pontuacao
    }
    
    func configurarLayout(){
        tituloPergunta.numberOfLines = 0
        tituloPergunta.textAlignment = .center
        for botao in botoesResposta{
            botao.layer.cornerRadius = 20.0
        }
    }
    
    func configurarPerguntas(){
        tituloPergunta.text = perguntas[perguntaAtual].titulo
        for botao in botoesResposta{
            let tituloBotao = perguntas[perguntaAtual].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
        }
    }
    
    func navegaParaTelaResposta() {
        performSegue(withIdentifier: "irParaTelaResultado", sender: nil)
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
