//
//  ContentView.swift
//  Trekking
//
//  Created by Arman on 12/5/25.
//

import SwiftUI

struct ContentView: View {
    let Treks = [
        Trek(name: "Salmon Trail", photo: "one", distance: 6),
        Trek(name: "Tom Trail", photo: "two", distance: 9.2),
        Trek(name: "Tamaran Trail", photo: "three", distance: 10.6)
    ]
    var body: some View {
        NavigationStack{
            List(Treks){ trek1 in
                NavigationLink(value: trek1)
                {
                    TrekRow(trek: trek1)
                }
               
                
            }.navigationTitle("Trekking")
                .navigationDestination(for: Trek.self)
            { trek in
                
                TrekDetailScreen(trek: trek)
            }
        }
       
    }
}

#Preview {
    ContentView()
}

struct TrekRow: View {
    let trek: Trek
    var body: some View {
        HStack {
            Image(trek.photo)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .clipShape(RoundedRectangle(cornerRadius: 16, style: .continuous))
                .frame(width: 100, height: 100)
            VStack(alignment: .leading){
                Text(trek.name)
                Text("Distance = \(trek.distance.formatted())")
            }
            
        }
    }
}
