//
//  UpdatingProduct.swift
//  CleanArchitecture
//
//  Created by Tuan Truong on 6/29/20.
//  Copyright © 2020 Sun Asterisk. All rights reserved.
//

import UIKit

protocol UpdatingProduct {
    var productGateway: ProductGatewayType { get }
}

extension UpdatingProduct {
    func updateProduct(_ product: Product) -> Observable<Void> {
        return productGateway.update(product)
    }
}
