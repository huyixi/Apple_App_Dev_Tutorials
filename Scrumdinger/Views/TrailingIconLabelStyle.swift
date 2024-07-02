//
//  TrailingIconLabelStyle.swift
//  Scrumdinger
//
//  Created by 胡一希 on 6/28/24.
//

import SwiftUI

struct TrailingIconLabelStyle: LabelStyle{
    func makeBody(configuration: Configuration) -> some View {
        HStack{
            configuration.title
            configuration.icon
        }
    }
}

extension LabelStyle where Self == TrailingIconLabelStyle{
    static var trailingIcon: Self {
        Self()
    }
}
