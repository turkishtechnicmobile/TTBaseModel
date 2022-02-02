//
//  BaseViewModel.swift
//  TTBaseModel
//
//  Created by Remzi YILDIRIM on 17.02.2020.
//  Copyright © 2020 Turkish Technic. All rights reserved.
//

import Foundation
import TTBaseApp

open class BaseFirstViewModel: ViewModel {
    @Inject public var dateFormat: TTDateFormat
    
    // MARK: - State Notifiers
    public var state: TTDynamic<TableViewState> = TTDynamic(.loading)
    public private(set) var errorState: TTDynamic<ErrorState> = TTDynamic(.idle)
    
    public init() { }
    
    open func willAppear() { }
    open func willDisapper() { }
    open func didAppear() { }
    open func didDisapper() { }
    
    public func isValidEmployeeID(_ employeeID: String) -> Bool {
        return employeeID.count >= 6
    }
    
    public func getDateString(from date: Date) -> String {
        return dateFormat.format(date: date)
    }
    
    public func getHour(from date: Date) -> Int? {
        return dateFormat.hours(from: date)
    }
    
    public func getMinute(from date: Date) -> Int? {
        return dateFormat.minutes(from: date)
    }
    
    public func dateBySetting(hour: Int?, minute: Int?, of date: Date) -> Date {
        return dateFormat.dateBySetting(hour: hour, minute: minute, of: date)
    }
    
    public func dateByAdding(component: Calendar.Component, value: Int, to date: Date) -> Date {
        return dateFormat.dateByAdding(component: component, value: value, to: date)
    }
    
    public func combineDateWithTime(date: Date, with time: Date) -> Date? {
        return dateFormat.combine(date: date, with: time)
    }
    
    /// check trax date validation
    public func isValidTrax(date: Date, with time: Date) -> Bool {
        guard let dateTime = combineDateWithTime(date: date, with: time) else { return false }
        return dateTime <= dateFormat.currentDate
    }
    
    public func showError(title: String? = nil, message: String? = nil) {
        errorState.value = .error(title: title, message: message)
    }
    
    public func showWarning(title: String? = nil, message: String? = nil) {
        errorState.value = .warning(title: title, message: message)
    }
}

public extension BaseFirstViewModel {
    class func formatEmployeeID(_ employeeID: String) -> String {
        let employeeID = employeeID.trimmingCharacters(in: .whitespacesAndNewlines).uppercased()
        if employeeID.hasPrefix("0") {
            return "\(Constants.employeeIDPrefix)\(employeeID.dropFirst())"
        }
        return employeeID.hasPrefix(Constants.employeeIDPrefix) ? employeeID : "\(Constants.employeeIDPrefix)\(employeeID)"
    }
    
    class func convertBoolToCharYN(_ value: Bool?) -> String? {
        guard let value = value else { return nil }
        return value ? Constants.Chars.y : Constants.Chars.n
    }
    
    class func convertYNToBool(_ value: String?) -> Bool? {
        guard let value = value else { return nil }
        return value == Constants.Chars.y
    }
    
    class func convertBoolToYesNo(_ value: Bool?) -> String? {
        guard let value = value else { return nil }
        return value ? Constants.yes : Constants.no
    }
    
    class func convertYesNoToBool(_ value: String?) -> Bool {
        guard let value = value else { return false }
        return value == Constants.yes
    }
}

// MARK: - Base View Model
open class BaseViewModel: BaseFirstViewModel {
    @Inject public var service: APIGatewayService
    @Inject public var persistent: TTPersistent
    @Inject public var download: Download
    
    public let disposeBag = TTDisposeBag()
    public let dispatchGroup = DispatchGroup()
    
    deinit {
        debugPrint("***** deinit \(String(describing: BaseViewModel.self))")
    }
    
    public override init() { }
}

// MARK: Base First List
open class BaseFirstListViewModel<T: ItemViewModel>: BaseFirstViewModel, ListViewModel {
    public typealias T = T
    public var items: [T] = []
    
    public private(set) var selectRows: TTDynamic<[IndexPath]> = TTDynamic([IndexPath]())
    public private(set) var reloadRows: TTDynamic<[IndexPath]> = TTDynamic([IndexPath]())
    public private(set) var deleteRows: TTDynamic<[IndexPath]> = TTDynamic([IndexPath]())
    
    public override init() { }
    
    open func numberOfSection() -> Int {
        return 1
    }
    
    open func numberOfRows(in section: Int) -> Int {
        return items.count
    }
    
    open func item(at indexPath: IndexPath) -> T {
        return items[indexPath.item]
    }
    
    @discardableResult
    open func deleteItem(at indexPath: IndexPath) -> T {
        return items.remove(at: indexPath.item)
    }
    
    // override this method when needed differen operation
    open func didSelectItem(at indexPath: IndexPath) {
        selectItem(at: indexPath, isSelected: true)
    }
    
    // override this method when needed differen operation
    open func didDeselectItem(at indexPath: IndexPath) {
        selectItem(at: indexPath, isSelected: false)
    }
    
    open func selectDeselectItem(at indexPath: IndexPath) {
        if var selectableItem = item(at: indexPath) as? ViewModelSelectable {
            selectableItem.isSelected = !selectableItem.isSelected
        }
    }
    
    private func selectItem(at indexPath: IndexPath, isSelected: Bool) {
        guard var selectableItem = item(at: indexPath) as? ViewModelSelectable else { return }
        selectableItem.isSelected = isSelected
    }
}

// MARK: - Base List
open class BaseListViewModel<T: ItemViewModel>: BaseViewModel, ListViewModel {
    public typealias T = T
    public var items: [T] = []
    
    public private(set) var selectRows: TTDynamic<[IndexPath]> = TTDynamic([IndexPath]())
    public private(set) var reloadRows: TTDynamic<[IndexPath]> = TTDynamic([IndexPath]())
    public private(set) var deleteRows: TTDynamic<[IndexPath]> = TTDynamic([IndexPath]())
    
    open func numberOfSection() -> Int {
        return 1
    }
    
    open func numberOfRows(in section: Int) -> Int {
        return items.count
    }
    
    open func item(at indexPath: IndexPath) -> T {
        return items[indexPath.item]
    }
    
    @discardableResult
    open func deleteItem(at indexPath: IndexPath) -> T {
        return items.remove(at: indexPath.item)
    }
    
    // override this method when needed different operation
    open func didSelectItem(at indexPath: IndexPath) {
        selectItem(at: indexPath, isSelected: true)
    }
    
    // override this method when needed different operation
    open func didDeselectItem(at indexPath: IndexPath) {
        selectItem(at: indexPath, isSelected: false)
    }
    
    private func selectItem(at indexPath: IndexPath, isSelected: Bool) {
        guard var selectableItem = item(at: indexPath) as? ViewModelSelectable else { return }
        selectableItem.isSelected = isSelected
    }
    
    open func stateSuccess() {
        state.value = items.isEmpty ? .empty : .populate
    }
}

// MARK: - Base Section
open class BaseSectionItemViewModel<T: ItemViewModel>: SectionItemViewModel {
    public typealias T = T
    public var headerTitle: String?
    public var footerTitle: String?
    public var items: [T] = []
    
    public init(headerTitle: String? = nil, footerTitle: String? = nil) {
        self.headerTitle = headerTitle
        self.footerTitle = footerTitle
    }
    
    open func numberOfRows() -> Int {
        return items.count
    }
    
    open func item(at indexPath: IndexPath) -> T {
        return items[indexPath.row]
    }
    
    open func didSelectItem(at indexPath: IndexPath) {
        selectItem(at: indexPath, isSelected: true)
    }
    
    open func didDeselectItem(at indexPath: IndexPath) {
        selectItem(at: indexPath, isSelected: false)
    }
    
    private func selectItem(at indexPath: IndexPath, isSelected: Bool) {
        guard var selectableItem = item(at: indexPath) as? ViewModelSelectable else { return }
        selectableItem.isSelected = isSelected
    }
}

open class BaseSectionListViewModel<T: SectionItemViewModel>: BaseListViewModel<T> {
    
    override open func numberOfSection() -> Int {
        return items.count
    }
    
    override open func numberOfRows(in section: Int) -> Int {
        return items[section].numberOfRows()
    }
    
    override open func item(at indexPath: IndexPath) -> T {
        return items[indexPath.section]
    }
    
    @discardableResult
    override open func deleteItem(at indexPath: IndexPath) -> T {
        return items.remove(at: indexPath.item)
    }
    
    // override this method when needed differen operation
    override open func didSelectItem(at indexPath: IndexPath) {
        if var selectableItem = item(at: indexPath).item(at: indexPath) as? ViewModelSelectable {
            selectableItem.isSelected = true
        }
    }
    
    // override this method when needed differen operation
    override open func didDeselectItem(at indexPath: IndexPath) {
        if var selectableItem = item(at: indexPath).item(at: indexPath) as? ViewModelSelectable {
            selectableItem.isSelected = false
        }
    }
}
