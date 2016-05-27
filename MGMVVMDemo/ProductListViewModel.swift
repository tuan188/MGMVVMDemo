//
//  ProductListViewModel.swift
//  MGMVVMDemo
//
//  Created by Tuan Truong on 5/27/16.
//  Copyright © 2016 Tuan Truong. All rights reserved.
//

import UIKit

class ProductListViewModel: ProductListViewModelProtocol {
    private(set) var products: [Product]
    
    var productListDataSource: ProductListDataSource! {
        didSet {
            self.productsDidChange?(self)
        }
    }
    
    var productsDidChange: ((ProductListViewModelProtocol) -> ())?
    
    required init(products: [Product]) {
        self.products = products
    }
    
    func showProductList() {
        productListDataSource = ProductListDataSource(products: products)
    }
}
