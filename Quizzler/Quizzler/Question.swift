//
//  Question.swift
//  Quizzler
//
//  Created by Stefka Vacheva on 12.01.21.
//

import Foundation


struct Question {
    let text: String
    let answer: String
    
    init(q: String, a: String) {
        text = q
        answer = a
    }
}

