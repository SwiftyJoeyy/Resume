//
//  ProjectsView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 09/08/2024.
//

import SwiftUI

struct ProjectsView: View {
    let items: [Project]
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            VStack(alignment: .leading, spacing: 10) {
                ForEach(items) { item in
                    VStack(alignment: .leading, spacing: 4) {
                        Text(item.title)
                            .foregroundStyle(.prime)
                            .font(.pdf(.headline, weight: .light))
                        if !item.links.isEmpty {
                            HStack(spacing: 10) {
                                ForEach(item.links) { link in
                                    LinkView(item: link)
                                }
                                Spacer()
                            }
                        }
                        VStack(alignment: .leading, spacing: 2) {
                            ForEach(item.bullets, id: \.self) { bullet in
                                HStack(alignment: .firstTextBaseline, spacing: 4) {
                                    Text("\u{2022}")
                                    Text(bullet)
                                        .fixedSize(horizontal: false, vertical: true)
                                }
                            }
                        }
                    }
                }
            }
        }
    }
}

struct Project: Identifiable {
    let id = UUID()
    let title: String
    var links: [LinkItem]
    let bullets: [String]
}

#Preview {
    ProjectsView(items: Projects.items)
}
