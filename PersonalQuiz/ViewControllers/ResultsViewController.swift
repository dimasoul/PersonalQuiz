//
//  ResultsViewController.swift
//  PersonalQuiz
//
//  Created by Дмитрий on 18.08.2022.
//

import UIKit

class ResultsViewController: UIViewController {
    @IBOutlet weak var animalTypeLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    var answers: [Answer]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.hidesBackButton = true
        updateResult()
    }
    
}

// MARK: - Private Methods
extension ResultsViewController {
    
    private func updateResult() { // вся логика программы
        var frequencyOfAnimals: [AnimalType: Int] = [:] // Создали пустой словарь с этими типами
        let animals = answers.map { $0.type } //перебирает весь массив с типом тайп
        
        for animal in animals {
            if let animalTypeCount = frequencyOfAnimals[animal] {
                frequencyOfAnimals.updateValue(animalTypeCount, forKey: animal) // обновляем значение у словаря по ключу
            } else {
                frequencyOfAnimals[animal] = 1
            }
        }
        let sortedFrequencyOfAnimals = frequencyOfAnimals.sorted { $0.value > $1.value } // сортируем наш словарь по ззначению
        guard let mostFrequencyAnimal = sortedFrequencyOfAnimals.first?.key else { return }
        
        updateUI(with: mostFrequencyAnimal)
    }

    private func updateUI(with animal: AnimalType?) {  // отображение программы
        animalTypeLabel.text = "Вы - \(animal?.rawValue ?? "🐶")!"
        descriptionLabel.text = animal?.definition ?? ""
    }
}
