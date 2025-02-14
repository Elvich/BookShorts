//
//  Item.swift
//  Book Shorts
//
//  Created by Maksim Gritsuk on 12.02.2025.
//

import Foundation
import SwiftData

@Model
final class Item {
    var timestamp: Date
    
    init(timestamp: Date) {
        self.timestamp = timestamp
    }
}
