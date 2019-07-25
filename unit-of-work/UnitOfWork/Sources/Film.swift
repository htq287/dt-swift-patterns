//
//  Film.swift
//  UnitOfWork
//
//  Created by Hung Truong on 7/11/19.
//

import Foundation

public struct Film: Equatable {
    
    let id: String
    let title: String
    let director: String
    let pos: Double
    
    public init(id: String, title: String, director: String) {
        self.id = id
        self.title = title
        self.director = director
        self.pos = -1
    }
}
