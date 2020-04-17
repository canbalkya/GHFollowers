//
//  UITableView+Ext.swift
//  GHFollowers
//
//  Created by Can Balkaya on 4/13/20.
//  Copyright © 2020 Can Balkaya. All rights reserved.
//

import UIKit

extension UITableView {
    func reloadDataOnMainThread() {
        DispatchQueue.main.async {
            self.reloadData()
        }
    }
    
    func removeExcessCells() {
        tableFooterView = UIView(frame: .zero)
    }
}
