//
//  Question.swift
//  PathApp
//
//  Created by Orozco, Dan (CA - Fredericton) on 2017-12-14.
//  Copyright © 2017 Orozco, Dan (CA - Fredericton). All rights reserved.
//

import Foundation
struct Answer {
    var text: String
    var id : String
}
enum QuestionType{
    case selectAnswer
    case textField
    case multiAnswer
}

class Question{
    
    private var id: Int
       
    private var question: String
    private var responses : [Answer]
    private var type : QuestionType
    private var nextQuestionID: Int!
    private var possibleNextQuestions: [String : Int]
    private var storeAnswer : Bool!
    private var answer : Answer!{
        didSet{
            nextQuestionID = possibleNextQuestions[answer.id]
        }
    }
    
    init(id questionID: Int, question questionIn: String, responses responsesIn: [Answer], possibleNextQuestions possNextQuestionsIn: [String: Int], type: QuestionType){
        id = questionID
        question = questionIn
        responses = responsesIn
        possibleNextQuestions = possNextQuestionsIn
        self.type = type
    }
    
    func getID() -> Int {
        return id
    }
    func getQuestion() -> String{
        return question
    }
    func getAnswerOptions() -> [Answer]{
        return responses
    }
    func getSavedAnswer() -> Answer!{
        return answer
    }
    func getNextQuestionID() -> Int! {
        return nextQuestionID
    }
    func getType() -> QuestionType{
        return type
    }
    func setAnswer(answer: Answer) -> Bool{
        self.answer = answer
        return true
    }
    func update(responses: [Answer]){
        self.responses = responses
    }
    func update(possibleNextQuestions: [String: Int]){
        
    }
    
}
