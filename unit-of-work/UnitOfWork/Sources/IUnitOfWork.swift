//
//  IUnitOfWork.swift
//  UnitOfWork
//
//  Created by Hung Truong on 7/11/19.
//

import Foundation

protocol IUnitOfWork {
    
    associatedtype T
    
    func registerNew(object: T) -> Void
    func registerModified(object: T) -> Void
    func registerDeleted(object: T) -> Void
    func commit() -> Void
}
