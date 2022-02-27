//
//  FruitNutrients.swift
//  Fructus
//
//  Created by osama refae on 26/01/2022.
//

import SwiftUI

struct FruitNutrients: View {
    
    // MARK: - PROPERTIES
    
    var fruit: Fruit
    let nutrients: [String] = ["المؤلف", "القصة", "Fat", "Protein", "Vitamins", "Minerals"]
    
    // MARK: - BODY
    
    var body: some View {
        GroupBox() {
            
            DisclosureGroup("التفاصيل") {
                ForEach(0..<nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical, 2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
            }
        } //: BOX
    }
}

// MARK: - PREVIEW

struct FruitNutrients_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrients(fruit: fruitData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
