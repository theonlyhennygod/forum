//
//  DateFormatter.swift
//  forum
//
//  Created by Argenis De La Rosa on 11/9/23.
//

import Foundation

extension DateFormatter {
    static var postDateFormatter: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateStyle = .medium
        formatter.timeStyle = .short
        return formatter
    }()
}
