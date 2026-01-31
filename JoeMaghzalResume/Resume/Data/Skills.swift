//
//  Skills.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 08/08/2024.
//

import Foundation

enum Skills: CaseIterable {
    case languages, compiler, apple, architecture
    
    static var items: [SkillSet] {
        return allCases.map(\.item)
    }
}

extension Skills {
    var item: SkillSet {
        switch self {
            case .languages:
                return SkillSet(
                    title: "Languages & Core",
                    skills: [
                        "Swift", "C++", "Objective-C", "Swift Macros", "Swift Concurrency", "Structured Concurrency", "Swift Evolution Proposals", "IR Generation", "LLDB"
                    ]
                )
                
            case .compiler:
                return SkillSet(
                    title: "Compiler Engineering",
                    skills: [
                      "Swift Compiler Internals", "LLVM", "Type Inference", "Type Systems", "Constraint Solving", "Compiler Diagnostics", "Parsing", "Lexical Analysis", "AST Design", "Semantic Analysis", "Type Checking", "Language Design"
                    ]
                )
                
            case .apple:
                return SkillSet(
                    title: "Apple Development",
                    skills: [
                        "SwiftUI", "UIKit", "AppKit", "WatchKit", "Combine", "WidgetKit", "ActivityKit", "CoreData", "SwiftData", "CoreML", "AVKit"
                    ]
                )
                
            case .architecture:
                return SkillSet(
                    title: "Architecture & Tools",
                    skills: [
                        "Framework Development", "API Design", "SPM", "Modular Architecture", "MVVM", "Swift Testing", "XCTest", "Instruments", "DocC", "Git", "Rest APIs", "CloudKit", "App Attest", "Unit Testing"
                    ]
                )
        }
    }
}
