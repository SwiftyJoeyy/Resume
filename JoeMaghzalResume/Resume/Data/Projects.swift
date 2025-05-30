//
//  Projects.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import Foundation

enum Projects: CaseIterable {
    case swift, networkKit, elementaryUI, macrosKit, doubleSlit
    
    static var items: [Project] {
        return allCases.map(\.item)
    }
}

extension Projects {
    var item: Project {
        switch self {
            case .elementaryUI:
                return Project(
                    title: "ElementaryUI",
                    link: LinkItem(
                        image: "github",
                        url: "https://github.com/buildexperience/ElementaryUI"
                    ),
                    body: "SwiftUI framework featuring developer-friendly APIs designed to streamline development by providing a set of basic components and view modifiers. It leverages the new Swift macros to simplify the creation of stylable views, environment values, and colors using hex codes."
                )
                
            case .networkKit:
                return Project(
                    title: "Swift Networking",
                    link: LinkItem(
                        image: "github",
                        url: "https://github.com/SwiftyJoeyy/swift-networking"
                    ),
                    body: "Swift Networking is a modern Swift networking library built entirely around a declarative programming model. From defining requests to configuring clients and handling responses, everything is expressed clearly and fluentlyy.\nInspired by Swift & SwiftUI’s design philosophy, it allows you to define network behavior in a way that is readable, modular, and test-friendly — all while keeping boilerplate to a minimum."
                )
                
            case .macrosKit:
                return Project(
                    title: "MacrosKit",
                    link: LinkItem(
                        image: "github",
                        url: "https://github.com/buildexperience/MacrosKit"
                    ),
                    body: "Swift framework designed to facilitate the creation and management of Swift macros. It provides a comprehensive set of tools and utilities for defining, implementing, and utilizing macros, streamlining code generation and reducing boilerplate."
                )
                
            case .swift:
                return Project(
                    title: "Contributing to Swift",
                    body: "Diving into the codebase of the Swift programming language with the goal of contributing to the project. It's an exciting challenge as I familiarize myself with the inner workings of Swift."
                )
                
            case .doubleSlit:
                return Project(
                    title: "Young's double slit model simulation",
                    body: "Under the guidance of Dr. Mario Tahchi, we developed a MATLAB simulation of Young's double slit experiment to investigate particle-wave duality. This project aims to deepen our comprehension of quantum mechanics by visualizing interference patterns produced by particles behaving as waves."
                )
        }
    }
}
