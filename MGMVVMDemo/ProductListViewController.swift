//
//  ProductListViewController.swift
//  MGMVVMDemo
//
//  Created by Tuan Truong on 5/27/16.
//  Copyright © 2016 Tuan Truong. All rights reserved.
//

import UIKit

class ProductListViewController: UITableViewController {
    
    var viewModel: ProductListViewModelProtocol! {
        didSet {
            self.viewModel.productsDidChange = { [unowned self] viewModel in
                self.tableView.dataSource = self.viewModel.productListDataSource
                self.tableView.reloadData()
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        viewModel.showProductList()
    }
}
