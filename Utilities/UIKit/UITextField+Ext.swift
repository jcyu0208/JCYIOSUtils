//
//  UITextField+Ext.swift
//  Utilities
//
//  Created by Juan Carlos Yu on 11/07/2018.
//  Copyright © 2018 Ximity Inc. All rights reserved.
//

import Foundation

extension UITextField {
    
    /// Creates an image to the right of a text field with padding
    public func rightIcon(image: UIImage) {
        let imageView = UIImageView(image: image)
        if let size = imageView.image?.size {
            imageView.frame = CGRect(x: 0, y: 0, width: size.width + 10.0, height: size.height)
        }
        
        imageView.contentMode = .center
        rightView = imageView
        rightViewMode = .always
    }
}

public struct ToolbarButton {
    var target: Any
    var action: Selector
    var title: String
}
/// Creates a toolbar for the UITextField
extension UITextField {
    public func registerToolbar(left: ToolbarButton? = nil,
                         center: ToolbarButton? = nil,
                         right: ToolbarButton? = nil) {
        
        let toolbar: UIToolbar = UIToolbar()
        toolbar.barStyle = .default
        var items: [UIBarButtonItem] = []
        
        if let left = left {
            let button: UIBarButtonItem = UIBarButtonItem(title: left.title, style: .plain, target: left.target, action: left.action)
            items.append(button)
        } else {
            items.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil))
        }
        
        if let center = center {
            let button: UIBarButtonItem = UIBarButtonItem(title: center.title, style: .plain, target: center.target, action: center.action)
            items.append(button)
        } else {
            items.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil))
        }
        
        if let right = right {
            let button: UIBarButtonItem = UIBarButtonItem(title: right.title, style: .plain, target: right.target, action: right.action)
            items.append(button)
        } else {
            items.append(UIBarButtonItem(barButtonSystemItem: .flexibleSpace, target: self, action: nil))
        }
        
        toolbar.sizeToFit()
        toolbar.items = items
        toolbar.tintColor = #colorLiteral(red: 0.5289999843, green: 0, blue: 0.6669999957, alpha: 1)
        self.inputAccessoryView = toolbar
    }
    
    public func addCancel() -> ToolbarButton {
        return ToolbarButton(target: self, action: #selector(cancelButtonTapped), title: "Cancel")
    }
    
    @objc
    public func cancelButtonTapped() { self.resignFirstResponder() }
}
