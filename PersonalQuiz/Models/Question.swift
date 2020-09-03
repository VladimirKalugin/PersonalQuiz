//
//  Question.swift
//  PersonalQuiz
//
//  Created by Fuhrer_SS on 29.08.2020.
//  Copyright © 2020 myself. All rights reserved.
//

enum ResponceType {
    case single
    case multiple
    case ranged
}

struct Question {
    let text: String
    let type: ResponceType
    let answers:[Answer]
}

extension Question {
    static func getQuestions() -> [Question] {
        return [
            Question(text: "Какую пищу вы предпочитаете?",
                     type: .single,
                     answers: [
                        Answer(text: "Стейк", type: .dog),
                        Answer(text: "Рыба", type: .cat),
                        Answer(text: "Морковь", type: .rabbit),
                        Answer(text: "Кукуруза", type: .turtle)
            ]),
            Question(text: "Что вам нравиться больше?",
                     type: .multiple,
                     answers: [
                        Answer(text: "Плавать", type: .dog),
                        Answer(text: "Спать", type: .cat),
                        Answer(text: "Обниматься", type: .rabbit),
                        Answer(text: "Есть", type: .turtle)
            ]),
            Question(text: "Любите ли вы поездки на машине?",
                     type: .ranged,
                     answers: [
                        Answer(text: "Ненавижу", type: .cat),
                        Answer(text: "Нервничаю", type: .rabbit),
                        Answer(text: "Не замечаю", type: .turtle),
                        Answer(text: "Обожаю", type: .dog)
            ]),
        ]
    }
}
