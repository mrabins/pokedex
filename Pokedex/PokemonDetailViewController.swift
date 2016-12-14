//
//  PokemonDetailViewController.swift
//  Pokedex
//
//  Created by Mark Rabins on 12/9/16.
//  Copyright © 2016 self.edu. All rights reserved.
//

import UIKit

class PokemonDetailViewController: UIViewController {
    
    
    // ImageViews
    @IBOutlet weak var mainImage: UIImageView!
    @IBOutlet weak var currentEvoImage: UIImageView!
    @IBOutlet weak var nextEvoImage: UIImageView!

    // Labels
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    @IBOutlet weak var typeLabel: UILabel!
    @IBOutlet weak var defenseLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var pokedexLabel: UILabel!
    @IBOutlet weak var weightLabel: UILabel!
    @IBOutlet weak var attackLabel: UILabel!
    @IBOutlet weak var evoLabel: UILabel!
    
    // Global properties
    var pokemon: Pokemon!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = pokemon.name.capitalized
        
        let image = UIImage(named: "\(pokemon.pokedexID)")
        mainImage.image = image
        currentEvoImage.image = image
        pokedexLabel.text = "\(pokemon.pokedexID)"
    
        pokemon.downloadPokemonDetails {
            // This block of code will only run once the network call is complete

            self.updateUI()
        }
        
    }
    
    func updateUI() {
        descriptionLabel.text = pokemon.description
        typeLabel.text = pokemon.type
        defenseLabel.text = pokemon.defense
        heightLabel.text = pokemon.height
        pokedexLabel.text = "\(pokemon.pokedexID)"
        weightLabel.text = pokemon.weight
        attackLabel.text = pokemon.attack
        typeLabel.text = pokemon.type
    }

   
    @IBAction func backButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
}
