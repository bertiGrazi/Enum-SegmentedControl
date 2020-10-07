//
//  ListTableViewCell.swift
//  desafioSegmentedControl_Enum
//
//  Created by Grazi Berti on 07/10/20.
//

import UIKit

class ListTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var labelNome: UILabel!
    
    
    
    func setup(nome: String) {
        labelNome.text = nome
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
