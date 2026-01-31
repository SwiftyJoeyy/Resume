//
//  SkillsView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 08/08/2024.
//

import SwiftUI

struct SkillsView: View {
    let skills: [SkillSet]
    var body: some View {
        VStack(alignment: .leading, spacing: 5) {
            ForEach(skills) { skill in
                VStack(alignment: .leading, spacing: 1) {
                    Text(skill.title)
                        .foregroundStyle(.prime)
                        .font(.pdf(.smallHeadline))
                    Text(skill.skills.joined(separator: " • "))
                        .fixedSize(horizontal: false, vertical: true)
                }
            }
        }
    }
}

#Preview {
    SkillsView(skills: Skills.items)
}

struct SkillSet: Identifiable {
    let id = UUID()
    let title: String
    let skills: [String]
}
