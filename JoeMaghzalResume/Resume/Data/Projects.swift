//
//  Projects.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import Foundation

enum Projects: CaseIterable {
    case swift, coolSwift, networkKit, scrollUI
    
    static var items: [Project] {
        return allCases.map(\.item)
    }
}

extension Projects {
    var item: Project {
        switch self {
            case .networkKit:
                return Project(
                    title: "Swift Networking",
                    links: [
                        LinkItem(
                            image: "github",
                            url: "https://github.com/SwiftyJoeyy/swift-networking"
                        )
                    ],
                    bullets: [
                        "Modern Swift networking library built around a declarative programming model.",
                        "Inspired by Swift & SwiftUI's design philosophy, enabling developers to define network behavior in a readable, modular, and test friendly way while minimizing boilerplate.",
                        "Features type-safe request builders, comprehensive error handling, and seamless integration with Swift Concurrency."
                    ]
                )
            case .scrollUI:
                return Project(
                    title: "ScrollUI",
                    links: [
                        LinkItem(
                            image: "github",
                            url: "https://github.com/SwiftyJoeyy/ScrollUI"
                        )
                    ],
                    bullets: [
                        "SwiftUI framework for advanced scroll state observation and geometry tracking.",
                        "Provides declarative APIs to monitor scrolling behavior, content offsets, and visibility changes through custom property wrappers and view modifiers.",
                        "Implements coordinate space transformations to enable scroll-driven animations and effects."
                    ]
                )
                
            case .swift:
                return Project(
                    title: "Swift Compiler Contributor",
                    links: [
                        LinkItem(
                            image: "github",
                            url: "https://github.com/swiftlang/swift/pull/82601"
                        ),
                        LinkItem(
                            image: "github",
                            url: "https://github.com/swiftlang/swift/pull/85264"
                        )
                    ],
                    bullets: [
                        "Deep-diving into the Swift compiler's C++ codebase and contributing improvements to the language toolchain.",
                        "First PR (#82601) addresses compiler diagnostics for existential type constraints, improving error messaging when methods with Self references cannot be used on existential types.",
                        "Second PR (#85264) fixes incorrect fix-it suggestion for static member access on opaque types, implementing proper type(of:) wrapping instead of invalid generic substitution.",
                        "Regularly engage with Swift community through forums, following language evolution discussions and compiler implementation details.",
                        "Actively studying compiler architecture including the type checker, constraint solver, and semantic analysis phases."
                    ]
                )
                
            case .coolSwift:
                return Project(
                    title: "COOL Language Compiler",
                    links: [
                        LinkItem(
                            image: "github",
                            url: "https://github.com/SwiftyJoeyy/cool-swift"
                        )
                    ],
                    bullets: [
                        "Designed and implemented a compiler frontend for the COOL (Classroom Object-Oriented Language) programming language using Swift.",
                        "Developed lexical analyzer, recursive descent parser, and abstract syntax tree (AST) construction with full error recovery.",
                        "Implemented semantic analysis phase including symbol table management, type checking, and inheritance validation.",
                        "Leveraged Swift's type system and modern language features to create a maintainable and extensible compiler architecture."
                    ]
                )
        }
    }
}
