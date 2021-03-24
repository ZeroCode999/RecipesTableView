//
//  RecipeTableViewCell.swift
//  RecipesTableView
//
//  Created by User on 3/24/21.
//

import UIKit

class RecipeTableViewCell: UITableViewCell {
    @IBOutlet var iconImageView: UIImageView!
    @IBOutlet var recipeTitleLabel: UILabel!
    @IBOutlet var recipeIngredientsLabel: UILabel!

    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }
}
