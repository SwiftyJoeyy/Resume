//
//  FirstPageView.swift
//  JoeMaghzalResume
//
//  Created by Joe Maghzal on 8/8/24.
//

import SwiftUI

struct FirstPageView: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            VStack(alignment: .leading, spacing: 2) {
                Text("JOE MAGHZAL")
                    .font(.pdf(.title, weight: .bold))
                    .foregroundStyle(.prime)
                Text("iOS Engineer")
                    .font(.pdf(.headline, weight: .bold))
                    .foregroundStyle(.second)
                HeaderItemsView(items: Header.items)
                    .fontWeight(.semibold)
                    .padding(.top, 2)
            }
            OnlineLinksView(items: Links.items)
                .section("FIND ME ONLINE")
            TableView(items: Experience.items)
                .section("EXPERIENCE")
        }.pdfStyle()
    }
}

#Preview {
    FirstPageView()
}
