//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Fuhrer_SS on 01.09.2020.
//  Copyright © 2020 myself. All rights reserved.
//

import UIKit


class ResultsViewController: UIViewController {
    
    //MARK: - IBOutlet
    @IBOutlet var animalFaceLabel: UILabel!
    @IBOutlet var discriptionLabel: UILabel!
    
    //MARK: - Private property
    private var countOfDogs = 0
    private var countOfCats = 0
    private var countOfRabbits = 0
    private var countOfTurtles = 0
    
    //MARK: - Public property
    var userAnswers: [Answer] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationItem.hidesBackButton = true
        updateResult()
    }
}


//MARK: - Private func
extension ResultsViewController {
    
    private func updateResult() {
        
        var dictionaryOfAnimals: [AnimalType: Int] = [:]
        let animals = userAnswers.map { $0.type }
        
        for animal in animals {
            if let animalTypeCount = dictionaryOfAnimals[animal] {
                dictionaryOfAnimals.updateValue(animalTypeCount + 1, forKey: animal)
            } else {
                dictionaryOfAnimals[animal] = 1
            }
        }
        
        let sortedDictionaryOfAnimal = dictionaryOfAnimals.sorted { $0.value > $1.value }
        guard let mostFrequencyAnimal = sortedDictionaryOfAnimal.first?.key else {return}
        
//        // Extra solution
//        let mostFrequencyAnimal = Dictionary(grouping: userAnswers, by: { $0.type} )
//            .sorted(by: {$0.value.count > $1.value.count})
//            .first?.key
//
        updateUI(with: mostFrequencyAnimal )
    }
    
    private func updateUI(with animal: AnimalType) {
        animalFaceLabel.text = "Вы - \(animal.rawValue)"
        discriptionLabel.text = animal.definition
    }
}
