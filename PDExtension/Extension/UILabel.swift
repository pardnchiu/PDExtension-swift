//
//  UILabel.swift
//  PDExtension
//
//  Created by Pardn Chiu on 2019/7/3.
//  Copyright © 2019 Pardn Co., Ltd. All rights reserved.
//

import Foundation
import UIKit

public extension UILabel {
    
    var str: String { return (self.text ?? "") };
    var tColor: UIColor { return (self.textColor) };
};

public extension UILabel {
    
    func set(padding top: CGFloat,_ left: CGFloat,_ bottom: CGFloat,_ right: CGFloat) {
        self.frame = self.frame.inset(by: UIEdgeInsets(top, left, bottom, right));
    };
    
    func clear() { self.text = nil };
    
    func set(text value: String) { self.text = value };
    func set(alignment value: NSTextAlignment) { self.textAlignment = value };
    func set(breakMode value: NSLineBreakMode) { self.lineBreakMode = value };
    func set(line value: Int) { self.numberOfLines = value };
    func set(fitWidth value: Bool) { self.adjustsFontSizeToFitWidth = value };
    
    func set(textColor value: UIColor) { self.textColor = value };
    func set(textColor r: CGFloat,_ g: CGFloat,_ b: CGFloat) { self.textColor = UIColor(rgb: r, g, b) };
    func set(textColor r: CGFloat,_ g: CGFloat,_ b: CGFloat,_ a: CGFloat) { self.textColor = UIColor(rgb: r, g, b, a) };
    func set(textColor hex: String) { self.textColor = UIColor(hex: hex) };
    func set(textColor hex: String,_ a: CGFloat) { self.textColor = UIColor(hex: hex, a) };
    
    func set(font value: UIFont) { self.font = value };
    func set(font size: CGFloat,_ name: String) { self.font = UIFont(name: name, size: size) ?? UIFont.systemFont(ofSize: size) };
    func set(font size: CGFloat,_ weight: UIFont.Weight) { self.font = .systemFont(ofSize: size, weight: weight) };
    func set(fontItalic size: CGFloat) { UIFont.italicSystemFont(ofSize: size) };
};
