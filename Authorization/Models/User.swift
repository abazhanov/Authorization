//
//  User.swift
//  Authorization
//
//  Created by Artem Bazhanov on 02.04.2021.
//

import Foundation


struct User {
    let login: String
    let password: String
    let name: String
    let surname: String
    let sex: Sex
    let old: Int
    let hobbi: [Hobbi]
    let photo: String
    
    static func getUsers() -> [User] {
        [
            User(
                login: "User",
                password: "Password",
                name: "Артем",
                surname: "Бажанов",
                sex: .male,
                old: 41,
                hobbi: [
                    Hobbi(title: "Фотография", description: "С раннего детства увлекался фотографий, помню ещё как заправляли пленку в барабан и макали фотобумагу в проявитель, закрепитель и фиксаж. Во время обучения в школе на УПК целый год ходил на фотодело и понял основные принципы фотографии. Активно начал заниматься фотографий году в 2010, купил первую зеркалку и понеслось! Свадьбы, юбилеи, репортажка. Остановился когда понял что нужно выбирать, либо двигаться дальше и заниматься фотографий, либо закончить и продолжит работать в ИТ. Выбрал второе, но страсть к фотографии осталась."),
                    Hobbi(title: "Велосипед", description: "Люблю кататься на велосипеде, но только как любитель. В бреветах и т.п. не участвую. В Нижнем Новгороде есть прекрасный парк Швейцария откуда открывается вид с горы на реку Ока и нижнюю часть города. Люблю кататься по тенистым аллеям и склонам."),
                    Hobbi(title: "Горные лыжи", description: "Зимой на смену велосипеду приходят горные лыжи. Мне повезло и в Нижнем Новгороде есть хоть и небольшие, но позволяющие кататься склоны. Наиболее любимое место для катания это поселок Хабарское.")
                    
                ],
                photo: "PhotoArtem"),
            User(
                login: "User_test",
                password: "Password_test",
                name: "Артем_test",
                surname: "Бажанов_test",
                sex: .male,
                old: 51,
                hobbi: [
                    Hobbi(title: "Фотография_test", description: "С раннего детсва увлекался фотографий, помню ещё как заправляли пленку в барабан и макали фотобумагу в проявитель, закрепитель и фиксаж. Во время обучения в школе на УПК целый год ходил на фотодело и понял основные принципы фотографии. Активно начал заниматься фотографий году в 2010, купил первую зеркалку и понеслось! Свадьбы, юбилеи, репортажка. Остановился когда понял что нужно выбирать, либо двигаться дальше и заниматься фотографий, либо закончить и продолжит работать в ИТ. Выбрал второе, но страсть к фотографии осталась."),
                    Hobbi(title: "Велосипед_test", description: "Люблю кататься на велосипеде, но только как любитель. В бреветах и т.п. не участвую. В Нижнем Новгороде есть прекрасный парк Швейцария откуда открывается вид с горы на реку Ока и нижнюю часть города. Люблю кататься по тенистым аллеям и склонам."),
                    Hobbi(title: "Горные лыжи_test", description: "Зимой на смену велосипеду приходят горные лыжи. Мне повезло и в Нижнем Новгороде есть хоть и небольшие, но позволяющие кататься склоны. Наиболее любимое место для катания это поселок Хабарское.")
                    
                ],
                photo: "PhotoArtem2")
        ]
    }
}

enum Sex: String {
    case male = "male"
    case female = "female"
}

struct Hobbi {
    let title: String
    let description: String
}
