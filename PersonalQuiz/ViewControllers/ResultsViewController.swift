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
        print(userAnswers)
        showResult(userAnswers)
    }
    
    //MARK: - Private func
    private func showResult(_ answers: [Answer]) {
        for animal in answers {
            switch animal.type {
            case .dog:
                countOfDogs += 1
                if countOfDogs >= 2 {
                    animalFaceLabel.text = "Вы - \(animal.type.rawValue)"
                    discriptionLabel.text = animal.type.definition
                }
            case .cat:
                countOfCats += 1
                if countOfCats >= 2 {
                    animalFaceLabel.text = "Вы - \(animal.type.rawValue)"
                    discriptionLabel.text = animal.type.definition
                }
            case .rabbit:
                countOfRabbits += 1
                if countOfRabbits >= 2 {
                    animalFaceLabel.text = "Вы - \(animal.type.rawValue)"
                    discriptionLabel.text = animal.type.definition
                }
            case .turtle:
                countOfTurtles += 1
                if countOfTurtles >= 2 {
                    animalFaceLabel.text = "Вы - \(animal.type.rawValue)"
                    discriptionLabel.text = animal.type.definition
                }
            }
        }
    }
}
