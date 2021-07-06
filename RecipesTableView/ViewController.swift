//
//  ViewController.swift
//  UITableView: practice
//
//  Created by User on 3/24/21.
//

import UIKit

class ViewController: UIViewController {
    var categories = RecipeCategory.allRecipes
    var numberOfLinesNotLimited = 0
    let reuseIdentifier = "recipe cell"
    
    @IBOutlet var tableView: UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "RecipeTableViewCell", bundle: nil), forCellReuseIdentifier: reuseIdentifier)
    }
    
}

extension ViewController: UITableViewDataSource, UITableViewDelegate {
    func numberOfSections(in tableView: UITableView) -> Int {
        return categories.count
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return categories[section].recipes.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: reuseIdentifier, for: indexPath) as! RecipeTableViewCell
        let recipe = categories[indexPath.section].recipes[indexPath.row]
        
        cell.recipeTitleLabel.text = recipe.title
        cell.recipeIngredientsLabel.text = recipe.ingredients
        cell.iconImageView.image = recipe.photo
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return categories[section].title
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return UITableView.automaticDimension
    }
}
