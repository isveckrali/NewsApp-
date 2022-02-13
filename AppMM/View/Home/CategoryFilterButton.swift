//
//  CategoryFilterButton.swift
//  AppMM
//
//  Created by Mehmet Can Seyhan on 2022-02-11.
//

import SwiftUI

enum CategoryFilterOptions: Int, CaseIterable {
    case following
    case popular
    case explore
    
    var title: String {
        switch self {
        case .following:
            return "Following"
        case .popular:
            return "Popular"
        case .explore:
            return "Explore"
        }
    }
}

struct CategoryFilterButton: View {
    
    //MARK: - PROPERTIES
    @Binding var selectedOption: CategoryFilterOptions
    @EnvironmentObject var readCategoty: ReadCategory
    private let tabSpacing = CGFloat(40)
    private func tabWidht(at index: Int) ->  CGFloat {
            let label = UILabel()
            label.text = CategoryFilterOptions(rawValue: index)?.title
            return label.intrinsicContentSize.width
        }
        
    private var leadingPadding: CGFloat {
        var padding: CGFloat = 0
        for i in 0..<CategoryFilterOptions.allCases.count {
            if i < selectedOption.rawValue {
                padding += tabWidht(at: i) + tabSpacing
            }
        }
        return padding
    }
        
        private let underlineWidth = UIScreen.main.bounds.width / CGFloat(CategoryFilterOptions.allCases.count)
        
        private var padding: CGFloat {
            let rawValue = CGFloat(selectedOption.rawValue)
            let count = CGFloat(CategoryFilterOptions.allCases.count)
            return ((UIScreen.main.bounds.width / count) * rawValue) + 16
        }
    
    //MARK: -BODY
    var body: some View {
        VStack(alignment: .leading)  {
                    HStack {
                        ForEach(CategoryFilterOptions.allCases, id: \.self) { option in
                            Button(action: {
                                self.selectedOption = option
                                readCategoty.filterCategory(option)
                            }, label: {
                                Text(option.title)
                                    .frame(width: underlineWidth - 8)
                                    .foregroundColor(.white)
                            }) //: BUTTON
                        } //: LOOP
                    } //: HSTAKC
                    
                    Rectangle()
                        .frame(width: underlineWidth - 32, height: 3, alignment: .center)
                        .foregroundColor(colorPink)
                        .padding(.leading, padding)
                        .animation(.spring())
                } //: VSTACK        
            }
}

//MARK: - PREVIEW
struct CategoryFilterButton_Previews: PreviewProvider {
    static var previews: some View {
        CategoryFilterButton(selectedOption: .constant(.following))
    }
}
