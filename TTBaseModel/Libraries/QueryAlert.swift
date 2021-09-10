//
//  QueryAlert.swift
//  NMBaseModel
//
//  Created by MnzfM on 16.09.2019.
//  Copyright © 2019 MnzfM. All rights reserved.
//

import UIKit

open class QueryAlert  {
    
    public typealias UIAlertActionHandler = ((UIAlertAction) -> Void)?
    
    class public func alertSingle(title:String,
                     description:String,
                     buttonTitle:String)  {
        
        let alert = UIAlertController(title: NSLocalizedString(title, comment: ""),
                                      message: NSLocalizedString(description, comment: ""),
                                      preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: NSLocalizedString(buttonTitle, comment: ""), style: .default, handler: { (action: UIAlertAction!) in
            
        }))
        
        DispatchQueue.main.async {
            UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
        }
    }
    
    class public func alertSingleWithClosure(title:String,
                                description:String,
                                buttonTitle:String,
                                closure:@escaping (_ rightAction:Bool)->Void)  {
        
        let alert = UIAlertController(title: NSLocalizedString(title, comment: ""),
                                      message: NSLocalizedString(description, comment: ""),
                                      preferredStyle: UIAlertController.Style.alert)
        
        
        alert.addAction(UIAlertAction(title: buttonTitle, style: .default, handler: { (action: UIAlertAction!) in
            
            closure(true)
            
        }))
        
        UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
    }
    
    
    class public func alertDouble(title:String,
                     description:String,
                     CancelBtnTitle:String,
                     closureCancel: UIAlertActionHandler = nil,
                     RbuttonTitle:String,
                     closure:UIAlertActionHandler = nil)  {
        
        let alert = UIAlertController(title: NSLocalizedString(title, comment: ""),
                                      message: NSLocalizedString(description, comment: ""), preferredStyle: UIAlertController.Style.alert)
        
        alert.addAction(UIAlertAction(title: CancelBtnTitle, style: .default, handler: closureCancel))
        alert.addAction(UIAlertAction(title: RbuttonTitle, style: .default, handler: closure))
        
        
        UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
    }
    
    public class func alert(title:String?,
                            description:String?,
                            cancelButtonTitle:String?,
                            okButtonTitle:String,
                            handler:@escaping (_ isCancelled: Bool)-> Void) {
        
        // AlertController creation must be in main thread
        DispatchQueue.main.async {
            let alert = UIAlertController(title: title,
                                          message: description, preferredStyle: UIAlertController.Style.alert)
            
            if let cancelButtonTitle = cancelButtonTitle {
                alert.addAction(UIAlertAction(title: cancelButtonTitle, style: .default, handler: { (action: UIAlertAction!) in
                    handler(true)
                }))
            }
            
            alert.addAction(UIAlertAction(title: okButtonTitle, style: .default, handler: { (action: UIAlertAction!) in
                handler(false)
            }))
            UIApplication.topViewController()?.present(alert, animated: true, completion: nil)
        }
    }
}

extension UIApplication {
    open class func topViewController(base: UIViewController? = UIApplication.shared.keyWindow?.rootViewController) -> UIViewController? {
        if let nav = base as? UINavigationController {
            return topViewController(base: nav.visibleViewController)
        }
        if let tab = base as? UITabBarController {
            if let selected = tab.selectedViewController {
                return topViewController(base: selected)
            }
        }
        if let presented = base?.presentedViewController {
            return topViewController(base: presented)
        }
        return base
    }
}
