//
//  MockFilmRepository.swift
//  UnitOfWorkTests
//
//  Created by Hung Truong on 7/11/19.
//

import Foundation
import UnitOfWork

internal class MockFilmRepository {
    
    fileprivate let database: FilmDatabase
    fileprivate let context: Dictionary<String, Array<Film>>
    internal var repository: FilmRepository
    
    init() {
        self.context = Dictionary<String, Array<Film>>()
        self.database = FilmDatabase()
        self.repository = FilmRepository(context: context, filmDatabase: database)
    }
}
