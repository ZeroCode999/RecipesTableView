//
//  Recipe.swift
//  UITableView: practice
//
//  Created by User on 3/24/21.
//

import UIKit

struct RecipeCategory {
    var title: String
    var recipes: [Recipe]
}

struct Recipe {
    var photo: UIImage?
    var title: String
    var ingredients: String
}

extension RecipeCategory {
    static var allRecipes: [RecipeCategory] {
        return [
            RecipeCategory(title: "Soups", recipes: [
                Recipe(photo: UIImage(named: "soup-1"),
                       title: "Soup: Kharcho",
                       ingredients: "chicken, rice, onion, carrot, garlic"),
                
                Recipe(photo: nil,
                       title: "Favorite Soup",
                       ingredients: "olive oil, carrots, celery, onion, garlic, thyme, salt, chicken, egg noodles, parsley"),
                
                Recipe(photo: UIImage(named: "soup-2"),
                       title: "Soup: Borsch",
                       ingredients: "meat, beet, onion, white cabbage, roots"),
                
                Recipe(photo: nil,
                       title: "Soup: Chicken Garlic",
                       ingredients: "chicken, vermicelli, onion, carrots, potatoes")
            ]),
            
            RecipeCategory(title: "Meat Dishes", recipes: [
                Recipe(photo: UIImage(named: "meat-1"),
                       title: "Meat roll",
                       ingredients: "ground beef, bulb onions, eggs, potato starch, dried garlic"),
                
                Recipe(photo: nil,
                       title: "Meat omelet",
                       ingredients: "eggs, minced meat, greens, vegetable oil"),
            ]),
            
            RecipeCategory(title: "Desserts", recipes: [
                Recipe(photo: UIImage(named: "dessert-1"),
                       title: "Dessert in a glass",
                       ingredients: "milk, sugar, white chocolate, butte, cocoa powder"),
                
                Recipe(photo: nil,
                       title: "Fit dessert",
                       ingredients: "cottage cheese, apple, egg yolk, vanilla")
            ]),
        ]
    }
}
