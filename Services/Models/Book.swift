//
//  Book.swift
//  Services
//
//  Created by Артём Мошнин on 15/2/21.
//

import Foundation

struct Book: Identifiable {
    let id = UUID().uuidString
    let title: String
    let author: String
    let numberOfPages: Int
}
