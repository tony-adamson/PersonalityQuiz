//
//  Question.swift
//  PersonalityQuiz
//
//  Created by Антон Адамсон on 02.03.2023.
//

import Foundation

struct Question {
    var text: String
    var type: ResponseType
    var answers: [Answer]
}

enum ResponseType {
case single, multiple, ranged
}

struct Answer {
    var text: String
    var type: AnimalType
}

enum AnimalType: Character {
case dog = "🐶", cat = "🐱", rabbit = "🐰", turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вы невероятно общительны. Вы окружаете себя с людьми, которых вы любите и наслаждаетесь занятиями с друзьями"
        case .cat:
            return "Озорная, но кроткая, вам нравится делать что-то на своих условиях"
        case .rabbit:
            return "вы любите все мягкое. Вы здоровы и полны энергии"
        case .turtle:
            return "Ты мудр не по годам, и ты сосредоточиться на деталях. Медленный и устойчивый выигрывает гонки"
        }
    }
}
