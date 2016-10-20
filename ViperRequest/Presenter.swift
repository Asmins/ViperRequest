//
//  Presenter.swift
//  ViperRequest
//
//  Created by admin on 20.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa

class Presenter {
    
    var data: Driver<[User]>?
    var interactor = Interactor()
    var service = Service()
    
    func show(tableView:UITableView) {
        interactor.show()
        data = interactor.data
    }
}
