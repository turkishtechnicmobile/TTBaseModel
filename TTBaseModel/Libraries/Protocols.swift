//
//  Protocols.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 12.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation

public protocol Model: Codable {}
public protocol ViewModel {}
public protocol ItemViewModel {}
public protocol ListViewModel: ViewModel {
    associatedtype T: ItemViewModel
    
    var items: [T] { get }
    
    func numberOfSection() -> Int
    func numberOfRows(in section: Int) -> Int
    func item(at indexPath: IndexPath) -> T
    func deleteItem(at indexPath: IndexPath) -> T
    func didSelectItem(at indexPath: IndexPath)
    func didDeselectItem(at indexPath: IndexPath)
}

public protocol SectionItemViewModel: ItemViewModel {
    associatedtype T: ItemViewModel
    
    var items: [T] { get }
    
    var headerTitle: String? { get set }
    var footerTitle: String? { get set }
    func numberOfRows() -> Int
    func item(at indexPath: IndexPath) -> T
    func didSelectItem(at indexPath: IndexPath)
    func didDeselectItem(at indexPath: IndexPath)
}

public protocol DetailItemViewModel: ItemViewModel {
    var key: String { get set }
    var value: String { get set }
}

public protocol ViewModelSelectable {
    var isSelected: Bool { get set }
}

public protocol ConfigurableCell {
    static var nibName: String { get }
    static var identifier: String { get }
    func configure(with itemViewModel: ItemViewModel)
}

public protocol Coordinator {}
