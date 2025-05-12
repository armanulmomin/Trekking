//
//  TrekDetailScreen.swift
//  Trekking
//
//  Created by Arman on 12/5/25.
//

import SwiftUI

struct TrekDetailScreen: View {
    let trek: Trek
    @State private var zoomed: Bool = false
    var body: some View {
        VStack{
            Image(trek.photo)
                .resizable()
                .aspectRatio(contentMode: zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation{
                        zoomed.toggle()
                    }
                   
                }
                
            Text(trek.name)
                .font(.headline)
            Text("\(trek.distance.formatted()) miles")
            Spacer()
        }.navigationTitle(trek.name)
    }
}

#Preview {
    NavigationStack{
        TrekDetailScreen(trek: Trek(name: "Salmon Trail", photo: "one", distance: 6))
    }
    
}
