//
//  Trek.swift
//  Trekking
//
//  Created by Arman on 12/5/25.
//

import Foundation

struct Trek: Identifiable, Hashable {
    let id = UUID()
    let name: String
    let photo: String
    let distance: Double
}
