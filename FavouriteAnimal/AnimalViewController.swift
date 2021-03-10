//
//  AnimalViewController.swift
//  FavouriteAnimal
//
//  Created by Olga Trofimova on 09.03.2021.
//

import UIKit

class AnimalViewController: UIViewController {
    
    weak var delegate: AnimalChoiceDelegate?

    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func animalWasTapped(_ sender: UIButton) {
        //получаем текстовое значение из нажатой кнопки
        
        let animal = sender.titleLabel?.text
        
        guard let choicedAnimal = animal else { return }
        
        //даем знать делегату, что что-то произошло и запускаем функцию по его обработке
        delegate?.animalChoiced(animal: choicedAnimal)
        
//        navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
        
    }
    

}
