//
//  ViewController.swift
//  PathApp
//
//  Created by Orozco, Dan (CA - Fredericton) on 2017-12-12.
//  Copyright © 2017 Orozco, Dan (CA - Fredericton). All rights reserved.
//

import UIKit
enum TestStatus{
    case start
    case done
}
class ViewController: UIViewController {
    
    @IBOutlet weak var questionLabel: UILabel!
    private var testStatus : TestStatus = .start
    private var currentQuestion: Question!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if testStatus == .start{
            handleStart()
        }
        handleQuestionUI()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    private func handleStart(){
        //load all labels and UI elements
        currentQuestion = DataManager.getFirstQuestion()
        
    }
    private func handleQuestionUI(){
        //display question
        questionLabel.text = currentQuestion.getQuestion()
        
        //determine question type
        var questionType = currentQuestion.getType()
        switch questionType{
            
        case .selectAnswer:
            <#code#>
        case .textField:
            <#code#>
        case .multiAnswer:
            <#code#>
        }
    }
}

