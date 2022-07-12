//
//  ViewController.swift
//  horoscope
//
//  Created by Wagner Barboza Goulart on 11/07/22.
//

import UIKit

private let signosIdentifier = "signosID"

class SignList: UITableViewController {

    let signos: [String] = ["Áries", "Touro", "Gêmeos", "Câncer", "Leão", "Virgem", "Libra", "Escorpião", "Sagitário", "Capricórnio", "Aquário", "Peixes"]
    
    let meaning: [String] = ["O Ariano é um chato", "Taurino é um gordo", "Geminiano é um porre", "Cancer é o signo do amor da minha vida então +10 pontos para grifinólia.", "Leão acha que é bonito por causa do signo mas é feio", "Virgem ( nerdola ) ", "Mano da balancinha ( mangolão )", "Dizem que gosta de da uma trepada, desconfio.", "Signo esquecido", "AQUI ESTÁ O MELHOR SIGNO DOS ZODIACOS, AQUELE QUE OCUPA O TOPO DOS CLANS, AQUELE QUE REINA SOBRE TODOS. O MELHOR!! O ESCOLHIDOS, O INABALÁVEL, OS CAPRICORNIANOS NASCIDOS NO DIA 18/01, o resto não presta.", "Receptáculo de peixe", "O Peixe"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return signos.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: signosIdentifier, for: indexPath)
        cell.textLabel?.text = signos[indexPath.row]
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        tableView.deselectRow(at: indexPath, animated: true)
        
        let alertController = UIAlertController(title: "Sobre o Signo: \(signos[indexPath.row])", message: meaning[indexPath.row], preferredStyle: .alert)
        
        let close  = UIAlertAction(title: "Fechar", style: .default, handler: nil)
        
        alertController.addAction(close)
        
        present(alertController, animated: true, completion: nil)
    }

}

