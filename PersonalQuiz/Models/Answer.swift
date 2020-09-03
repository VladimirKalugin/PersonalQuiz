//
//  Answer.swift
//  PersonalQuiz
//
//  Created by Fuhrer_SS on 29.08.2020.
//  Copyright © 2020 myself. All rights reserved.
//

struct Answer {
    let text: String
    let type: AnimalType
}

enum AnimalType: Character {
    case dog = "🐶"
    case cat = "🐱"
    case rabbit = "🐰"
    case turtle = "🐢"
    
    var definition: String {
        switch self {
        case .dog:
            return "Вам нравится быть с друзьями. Вы окружаете себе людьми котрые ваи симпатичны и всегда готовы помочь."
        case .cat:
            return "Вы себе на уме. Любите гулять сами по себе. Вы цените одиночество."
        case .rabbit:
            return "Вам нравиться все мягкое. Вы здоровые и полны энергии."
        case .turtle:
            return "Ваша сила в мудрости. Медленный и вдумчивый выигрывает на дальних дистанциях."
        }
    }
}
