//
//  PessoaDetail.swift
//  desafioSegmentedControl_Enum
//
//  Created by Grazi Berti on 07/10/20.
//

import UIKit

class PessoaDetail: UIViewController {

    @IBOutlet weak var labelName: UILabel!
    
    var nome: String?
    
    @IBAction func buttonClose(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        labelName.text = nome
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
