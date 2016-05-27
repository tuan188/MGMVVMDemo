//
//  ProductListViewModelProtocol.swift
//  MGMVVMDemo
//
//  Created by Tuan Truong on 5/27/16.
//  Copyright © 2016 Tuan Truong. All rights reserved.
//

import UIKit

protocol ProductListViewModelProtocol: class {
    var products : [Product] { get }
    var productListDataSource: ProductListDataSource! { get set }
    var productsDidChange: ((ProductListViewModelProtocol) -> ())? { get set }
    init(products: [Product])
    func showProductList()
}
