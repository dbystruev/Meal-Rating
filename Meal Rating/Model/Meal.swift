//
//  Meal.swift
//  Meal Rating
//
//  Created by Denis Bystruev on 12/02/2019.
//  Copyright © 2019 Denis Bystruev. All rights reserved.
//

import UIKit

struct Meal {
    var name: String
    var photo: UIImage
    var notes: String
    var rating: Int
    var timestamp: Date
    
    var stars: String {
        var starRating = ""
        
        guard 0 < rating else { return starRating }
        
        for _ in 1...min(rating, 10) {
            starRating += "⭐️"
        }
        
        return starRating
    }
    
    var date: String {
        let formatter = DateFormatter()
        formatter.dateStyle = .short
        formatter.timeStyle = .none
        return formatter.string(from: self.timestamp)
    }
    
    static func load() -> [Meal] {
        return [
            Meal(name: "Завтрак", photo: UIImage(named: "breakfast")!, notes: "Очень вкусный завтрак", rating: 10, timestamp: Date()),
            Meal(name: "Обед", photo: UIImage(named: "lunch")!, notes: "Неплохой обед", rating: 8, timestamp: Date()),
            Meal(name: "Полдник", photo: UIImage(named: "dinner")!, notes: "Сытный полдник", rating: 7, timestamp: Date()),
            Meal(name: "Ужин", photo: UIImage(named: "supper")!, notes: "Отличный ужин", rating: 9, timestamp: Date()),
        ]
    }
}
