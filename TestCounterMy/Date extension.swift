//
//  Date func.swift
//  TestCounterMy
//
//  Created by Dmitry on 20.11.2023.
//

import UIKit

 extension Date {
    var fullDate:String {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "Дата: dd.MM.YY Время: HH:mm:ss"
        return dateFormatter.string(from: Date())
    }
}

