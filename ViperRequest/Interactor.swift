//
//  Interactor.swift
//  ViperRequest
//
//  Created by admin on 20.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import Foundation
import RxSwift
import RxCocoa
import RxAlamofire

class Interactor {
    
    var service: Service?
    let token = Variable("1-258123-256695212-401f20a07e02e")
    
    var data: Driver<[User]>?
 
    func show() {
        let service = Service()
        self.service = service
        data = self.token.asObservable().throttle(0.1, scheduler: MainScheduler.instance).distinctUntilChanged()
        .flatMapLatest{
            service.requestMe(token: $0)
            }.asDriver(onErrorJustReturn: [])
    }
}
