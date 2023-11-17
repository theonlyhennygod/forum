//
//  Post.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/6/23.
//

import Foundation

struct ForumTopic: Identifiable {
    let id = UUID()
    var title: String
    let author: String
    let content: String
}
