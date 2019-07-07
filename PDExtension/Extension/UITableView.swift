//
//  UITableView.swift
//  PDExtension
//
//  Created by Pardn Chiu on 2019/7/3.
//  Copyright © 2019 Pardn Co., Ltd. All rights reserved.
//

import Foundation
import UIKit

public struct PDSeparator {
    public var color: UIColor?, left: CGFloat, right: CGFloat;
    public init(_ color: UIColor?,_ left: CGFloat,_ right: CGFloat) {
        self.color = color;
        self.left  = left;
        self.right = right;
    };
};

public extension UITableView {
    
    var _header: UIView? { return self.tableHeaderView };
    var _footer: UIView? { return self.tableFooterView };
};

public extension UITableView {
    
    func set(protocol delegate: UITableViewDelegate,_ dataSource: UITableViewDataSource) {
        self.delegate   = delegate;
        self.dataSource = dataSource;
    };
    
    func set(separator style: UITableViewCell.SeparatorStyle,_ value: PDSeparator?) {
        self.separatorStyle       = style;
        self.separatorColor       = value?.color
        self.separatorInset.left  = (value?.left ?? 0);
        self.separatorInset.right = (value?.right ?? 0);
    }
    
    func set(footer view: UIView) { self.tableFooterView = view };
    func set(header view: UIView) { self.tableHeaderView = view };
    
    func set(cell value: AnyClass) { self.register(value.self, forCellReuseIdentifier: "\(value)") };
    func set(cells values: [AnyClass]) { values.forEach { self.register($0.self, forCellReuseIdentifier: "\($0)") } };
};

//@objc func separator(_ col: UIColor?, _ left: CGFloat, _ right: CGFloat) {
//    self.separatorStyle = .singleLine;
//    self.separatorInset = UIEdgeInsets.init(top: 0, left: left, bottom: 0, right: right);
//    self.separatorColor = col;
//};
//
//@objc func selection(_ single: Bool, _ multiple: Bool) {
//    self.allowsSelection = single;
//    self.allowsMultipleSelection = multiple;
//};