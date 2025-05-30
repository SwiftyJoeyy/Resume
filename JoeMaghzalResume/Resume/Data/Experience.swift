//
//  Experience.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 8/8/24.
//

import SwiftUI

enum Experience: CaseIterable {
    case toters, montyMobile, bimPOS
    
    static var items: [TableItem] {
        return allCases.map(\.item)
    }
}

extension Experience {
    var bullets: [String] {
        switch self {
            case .toters:
                return [
                    "Optimizing Performance & Scalability: Utilizing profiling and debugging techniques to ensure applications are highly responsive, reliable, and can scale effectively under real-world conditions.",
                    "Code Excellence & Security: Championing high code quality standards, conducting thorough and constructive code reviews, and integrating best practices to secure applications and maintain their robustness.",
                    "Cross-functional Collaboration: Partnering with product managers, designers, and backend engineers to refine requirements and ensure seamless integration of features, always striving for optimal user experiences.",
                    "Architectural & UX Insights: Offering valuable feedback on architectural decisions, UX improvements, and performance optimizations to enhance the overall app experience.",
                    "Driving Development Strategy: Contributing to the team’s success by actively participating in project roadmaps, brainstorming solutions, and offering technical insights on both new and existing features.",
                    "Building the Future Team: Conducting interviews and assessing top iOS engineering talent to help build and strengthen a high-performance development team.",
                    "Ensuring Operational Reliability: Quickly identifying, debugging, and resolving production issues to minimize user disruption and maintain a high level of reliability.",
                    "Innovation & Continuous Improvement: Staying ahead of industry trends, adopting new technologies and best practices, and pushing the envelope on what iOS applications can achieve, ensuring the app and development workflow are always evolving."
                ]
            case .montyMobile:
                return [
                    "Modernized our architecture by integrating Combine into the MVVM stack, streamlining data flow and state management.",
                    "Spearheaded the development of key product features, consistently optimizing for speed and responsiveness.",
                    "Integrated backend services and third-party APIs, ensuring reliable data pipelines and seamless real-time updates.",
                    "Conducted in-depth debugging, testing, and profiling to boost app stability, performance, and memory efficiency.",
                    "Collaborated closely with designers, PMs, and backend engineers to align technical execution with product vision.",
                    "Promoted adherence to coding standards & ensured code consistency by conducting code reviews, & providing guidance to team members on collaborative projects.",
                ]
            case .bimPOS:
                return [
                    "Sustained and modernized legacy codebases by maintaining and updating apps in both Objective-C and Swift, ensuring long-term stability and compatibility.",
                    "Built platform-optimized experiences for Apple Watch, iPhone, and iPad, adapting features to meet each device’s specific user needs.",
                    "Enhanced app functionality and engagement through the development of Widgets and improvements in accessibility.",
                    "Managed the full deployment cycle for App Store releases—including submissions, updates, and ensuring adherence to Apple’s review guidelines."
                ]
        }
    }
    var item: TableItem {
        switch self {
            case .toters:
                return TableItem(
                    title: "iOS Engineer",
                    subTitle: "Toters",
                    link: LinkItem(url: "https://www.totersapp.com"),
                    bullets: bullets,
                    date: "11/2023 - Present",
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
