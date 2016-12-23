//
//  Recipes + populate.swift
//  AC3.2-Unit5-MidUnitAssesment
//
//  Created by Karen Fuentes on 12/23/16.
//  Copyright © 2016 C4Q. All rights reserved.
//

import Foundation

extension Recipes {
    func populate(from recipeDict: [String: Any]) {
        guard let title = recipeDict["title"] as? String,
            let ingredients = recipeDict["ingredients"] as? String,
            let url = recipeDict["href"] as? String else {return}
        self.title = title
        self.ingredients = ingredients
        self.url = url
    }
}
