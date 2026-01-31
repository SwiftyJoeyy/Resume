//
//  Experience.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 8/8/24.
//

import SwiftUI

enum Experience: CaseIterable {
    case anghami, toters, montyMobile, bimPOS
    
    static var items: [TableItem] {
        return allCases.map(\.item)
    }
}

extension Experience {
    var bullets: [String] {
        switch self {
            case .anghami:
                return [
                    "Architected and implemented modern networking infrastructure using Swift macros for the app rewrite, designing type-safe, declarative APIs that reduced boilerplate by 25% and improved compile-time validation.",
                    "Designed a high performance download system with scheduler architecture supporting priority queuing, parallel download control which reduced downloads issues by 80% and improved download speed by 35%.",
                    "Led design system modernization project with 2 mid-level engineers, architecting a SwiftUI inspired style-based component library that reduced implementation complexity by 70% and improved design consistency across our applications.",
                    "Integrated iOS 26 liquid glass materials into OSN+ UI, adopting the latest system-provided visual effects APIs to modernize the app's aesthetic and align with platform design language.",
                    "Mentored engineers through pair programming sessions and code reviews, reducing PR complexity and driving 3x performance improvements in animations through systematic refactoring and optimization.",
                ]
            case .toters:
                return [
                    "Spearheaded technical modernization by architecting and planning team-wide migration from UIKit to SwiftUI, designing the MVVM architecture pattern to be adopted, and introducing Swift Concurrency to improve code maintainability and development velocity while reducing callback complexity by 60%.",
                    "Led performance optimization initiatives that reduced app launch time by 35% and improved crash-free rate from 95% to 99.5%, across 500K+ active users.",
                    "Implemented modular SPM infrastructure, AppAttest security integration, and owned CI/CD pipeline management while conducting code reviews for 10 iOS engineers.",
                    "Partnered cross-functionally beyond development: collaborated with product team on requirements definition, advised UI/UX team on interface design, and mentored engineers on technical implementation.",
                    "Conducted technical interviews and evaluated iOS engineering candidates, contributing to hiring decisions that strengthened team capabilities."
                ]
            case .montyMobile:
                return [
                    "Migrated 20+ screens to Combine-based MVVM, reducing state-related bugs by 45% while optimizing API integration patterns that decreased response handling time by 30%.",
                    "Enhanced app stability through debugging and profiling, achieving 25% reduction in memory footprint and resolving critical performance bottlenecks.",
                    "Championed code quality through reviews and mentorship, establishing coding standards that improved team productivity and reduced technical debt."
                ]
            case .bimPOS:
                return [
                    "Maintained and modernized legacy codebases across Objective-C and Swift, ensuring stability and compatibility with latest iOS releases.",
                    "Developed multi-platform experiences for Apple Watch, iPhone, and iPad with WidgetKit extensions and full VoiceOver accessibility compliance.",
                    "Managed App Store release lifecycle including submissions and updates, maintaining 100% approval rate."
                ]
        }
    }
    var item: TableItem {
        switch self {
            case .anghami:
                return TableItem(
                    title: "Senior iOS Engineer",
                    subTitle: "Anghami & OSN+",
                    link: LinkItem(url: "https://www.anghami.com"),
                    bullets: bullets,
                    date: "8/2025 - Present",
                    location: "Zalka, Lebanon"
                )
            case .toters:
                return TableItem(
                    title: "iOS Engineer",
                    subTitle: "Toters",
                    link: LinkItem(url: "https://www.totersapp.com"),
                    bullets: bullets,
                    date: "11/2023 - 8/2025",
                    location: "Zalka, Lebanon"
                )
            case .montyMobile:
                return TableItem(
                    title: "iOS Developer",
                    subTitle: "Monty Mobile",
                    link: LinkItem(url: "https://montymobile.com"),
                    bullets: bullets,
                    date: "03/2022 - 10/2023",
                    location: "Beirut, Lebanon"
                )
            case .bimPOS:
                return TableItem(
                    title: "iOS Developer",
                    subTitle: "BIM POS",
                    link: LinkItem(url: "https://bimpos.com"),
                    bullets: bullets,
                    date: "11/2021 - 03/2022",
                    location: "Beirut, Lebanon"
                )
        }
    }
}
