//Example to show how protocol is being useful in classes
// Class Quiz confirms to the Protocol QuestionGenerator

import UIKit

class Question{
    var questionType : QuestionType
    var query : String
    var answer : String
    
    init(type :QuestionType,query : String, answer : String ) {
        self.questionType = type
        self.query = query
        self.answer = answer
    }
}

enum QuestionType : String  {
    case trueFalse = "The sky is blue"
    case multipleChoice = "Who is uggliest in Beatle ? John, Rapo , Drake or Beiber"
    case shortAnswer = "Which city is the capital of Canada?"
    case essay = "In 50 words, explain molecular fushion"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

enum AnswerType: String{
    case trueFalse = "True"
    case multipleChoice = "John"
    case shortAnswer = "Ottawa"
    case essay = " Molecular Fushion happens when daddy molecule and mommy molecule loves each other veryyyy much"
    
    static let types = [trueFalse, multipleChoice, shortAnswer, essay]
}

protocol QuestionGenerator {
    func generateQuestions() -> Question
}

class Quiz : QuestionGenerator {
    func generateQuestions() -> Question {
        let randomNumber = Int(arc4random_uniform(4))
        let randomType = QuestionType.types[randomNumber]
        let randomQuery = randomType.rawValue
        let randomAnswer = AnswerType.types[randomNumber].rawValue
        let question = Question(type: randomType, query: randomQuery, answer: randomAnswer)
        return question
    }
}


let quiz = Quiz()
let question = quiz.generateQuestions()

print("Question Type : \(question.questionType) \nQuery :\(question.query) \nAnswer : \(question.answer) ")
