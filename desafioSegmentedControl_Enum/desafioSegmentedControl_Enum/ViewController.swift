//
//  ViewController.swift
//  desafioSegmentedControl_Enum
//
//  Created by Grazi Berti on 07/10/20.
//

import UIKit

enum TipoSegment{
    static let pessoa = 0
    static let programador = 1
}

class ViewController: UIViewController {

    
    
    @IBOutlet weak var segmentedControlOptions: UISegmentedControl!
    
   
    @IBAction func changedSegmentedControlOptions(_ sender: Any) {
        tableViewList.reloadData()
    }
    
    @IBOutlet weak var tableViewList: UITableView!
    
    var arrayListPessoa = [Pessoa]()
    var arrayListProgramador = [Programador]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableViewList.delegate = self
        tableViewList.dataSource = self
        
        arrayListProgramador.append(Programador(name: "João", image: "1.jpg"))
        arrayListProgramador.append(Programador(name: "João", image: "1.jpg"))
        arrayListPessoa.append(Pessoa(name: "Pedro", image: "1.jpg"))
        arrayListPessoa.append(Pessoa(name: "Pedro", image: "1.jpg"))
        arrayListPessoa.append(Pessoa(name: "Pedro", image: "1.jpg"))
    }
}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
            if segmentedControlOptions.selectedSegmentIndex == TipoSegment.pessoa {
                if let viewController = UIStoryboard(name: "PessoaDetail", bundle: nil).instantiateInitialViewController() as? PessoaDetail {
                viewController.nome = arrayListPessoa[indexPath.row].name
                
                present(viewController, animated: true, completion: nil)
                }
            } else {
                if let viewController = UIStoryboard(name: "ProgramadorDetail", bundle: nil).instantiateInitialViewController() as? ProgramadorDetail {
                viewController.name = arrayListProgramador[indexPath.row].name
                
                navigationController?.pushViewController(viewController, animated: true)
                }
        }
        
    }
}
extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if segmentedControlOptions.selectedSegmentIndex == TipoSegment.pessoa {
            return arrayListPessoa.count
        }
            return arrayListProgramador.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: "ListTableViewCell", for: indexPath) as? ListTableViewCell {
            if segmentedControlOptions.selectedSegmentIndex == TipoSegment.pessoa {
                cell.setup(nome: arrayListPessoa[indexPath.row].name)
                return cell
            }
            cell.setup(nome: arrayListProgramador[indexPath.row].name)
            return cell
            
        }
            return UITableViewCell()
        }
}
        
    
    

