//
//  main.swift
//  WordCounter
//
//  Created by Mu Yang on 2.4.2021.
//

import Foundation

let article = """
I've met so many who have tried and failed to learn Swift, many Who Who swift learn.
You have to Learn You.
"""
let seperators = CharacterSet(charactersIn: " ,.?!\n")
let words = article.components(separatedBy: seperators)

var wordCount = [String: Int]()
for word in words {
    if word.isEmpty { // due to ", "
        continue
    }
    
    let key = word.lowercased()
    /*if word.contains("'") {
        let len = word.firstIndex(of: "'")!
        key = String(word.prefix(upTo: len))
    }*/
    wordCount[key, default: 0] += 1
}

for (key, value) in wordCount {
    print("\(key): \(value)")
}


