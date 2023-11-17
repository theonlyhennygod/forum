//
//  Post.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/9/23.
//

import Foundation

struct Post: Identifiable {
    var id = UUID()
    var content: String
    var date: Date
}

extension Post {
    func formattedDate() -> String {
        return DateFormatter.postDateFormatter.string(from: date)
    }
}
