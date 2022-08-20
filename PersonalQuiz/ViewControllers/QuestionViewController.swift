//
//  QuestionViewController.swift
//  PersonalQuiz
//
//  Created by Дмитрий on 18.08.2022.
//

import UIKit

class QuestionViewController: UIViewController {
    @IBOutlet weak var questionLabel: UILabel!
    
    @IBOutlet weak var singleStackView: UIStackView!
    @IBOutlet var singleButtons: [UIButton]!
    
    @IBOutlet weak var multipleStackView: UIStackView!
    @IBOutlet var multipleLabel: [UILabel]!
    @IBOutlet var multipleSwitch: [UISwitch]!
    
    @IBOutlet weak var rangedStackView: UIStackView!
    @IBOutlet var rangedLabel: [UILabel]!
    
    @IBOutlet weak var rangedSlider: UISlider!
    @IBOutlet weak var questionProgressView: UIProgressView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    @IBAction func singleAnswerButtonPressed(_ sender: UIButton) {
    }
    
    @IBAction func multipleAnswerButtonPressed() {
    }
    
    @IBAction func rangedAnsweButtonPressed() {
    }
}
