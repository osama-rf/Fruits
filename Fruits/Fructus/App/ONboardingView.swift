//
//  OnboardingView.swift
//  Fructus
//
//  Created by osama refae on 24/01/2022.
//

import SwiftUI

struct OnboardingView: View {
    // MARK: PROPERTIES

    var fruits: [Fruit] = fruitData

    // MARK: - BODY

    var body: some View {
        TabView{
            ForEach(fruits[1...5]) { item in
                //FruitCardView()
                FruitCardView(fruit: item)
            } //: LOOP

        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
    }
}

// MARK: - PREVIEW

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView(fruits: fruitData)
            .preferredColorScheme(.dark)
    }
}
