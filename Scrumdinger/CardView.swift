//
//  CardView.swift
//  Scrumdinger
//
//  Created by 胡一希 on 6/28/24.
//

import SwiftUI

struct CardView: View{
    let scrum: DailyScrum
    var body: some View {
        VStack(alignment: .leading){
         Text(scrum.title)
            .font(.headline)
        Spacer()
            HStack{
                Label("\(scrum.attendees.count)",systemImage: "person.3")
                Spacer()
                Label("\(scrum.lengthInMinutes)",systemImage: "clock")
            }
           
            
        }
    }
}

struct CardView_previews: PreviewProvider{
    static var scrum = DailyScrum.sampleData[0]
    static var previews: some View {
        CardView(scrum: scrum)
            .background(scrum.theme.mainColor)
            .previewLayout(.fixed(width: 400, height: 60))
    }
}