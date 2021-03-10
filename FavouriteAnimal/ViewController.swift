//
//  ViewController.swift
//  FavouriteAnimal
//
//  Created by Olga Trofimova on 09.03.2021.
//

import UIKit

class ViewController: UIViewController, AnimalChoiceDelegate {
    

    @IBOutlet weak var label: UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        label.isHidden = true
        
        if let animalName = UserDefaults.standard.value(forKey: "animalName") {
            label.isHidden = false
            label.text = animalName as? String
        }
    }


    @IBAction func choisedAnimal(_ sender: Any) {
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toAnimal" {
            let animalVC = segue.destination as? AnimalViewController
            animalVC?.delegate = self
        }
    }

    
    func animalChoiced(animal: String) {
        label.isHidden = false
        label.text = "Your favourite animal is \(animal)"
        saveAnimal()
    }
    
    func saveAnimal() {
        UserDefaults.standard.set(label.text, forKey: "animalName")
    }
    
}

