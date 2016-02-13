//
//  Answers.swift
//  Dev8Ball
//
//  Created by Chris Woodard on 2/13/16.
//  Copyright © 2016 CW. All rights reserved.
//

import Foundation

let answers = [
    "That's Out of Scope",
    "Wrong Sprint",
    "Requirements Unclear",
    "Should Only Take An Hour",
    "It's 90% Done",
    "It's 98% Done",
    "You Changed the Scope",
    "Works on My Machine",
    "Ship It!",
    "It Needs Refactoring",
    "It Needs A Rewrite"
]

func pickRandomAnswer() -> String {
    srand(UInt32(time(nil)))
    let i:Int = Int(rand()%Int32(answers.count))
    return answers[i]
}

