//
//  DataManager.swift
//  PathApp
//
//  Created by Orozco, Dan (CA - Fredericton) on 2017-12-14.
//  Copyright © 2017 Orozco, Dan (CA - Fredericton). All rights reserved.
//

import Foundation

class DataManager {
    
    private static var savedQuestions = [Int: Question]()
    
    private static var questionBank : [Int: Question]!
    
    static func getNextQuestion(id: Int) -> Question!{
        return questionBank[id]
    }
    static func saveAnsweredQuestion(question: Question){
        savedQuestions[question.getID()] = question
    }
    static func getAnswerFromSaved(question id: Int) -> Answer!{
        return savedQuestions[id]!.getSavedAnswer()
    }
    static func getFirstQuestion()-> Question!{
        return questionBank[1]
    }
    static func createQuestions(){
        var questions = [Int: Question]()
        
        
        questionBank = questions
    }
}
