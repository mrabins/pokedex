//
//  PokemonDetailViewController.swift
//  Pokedex
//
//  Created by Mark Rabins on 12/9/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var pokemonImage: UIImageView!
    
    var pokemon: Pokemon!
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        nameLabel.text = pokemon.name
    }

   
}
