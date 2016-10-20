//
//  Service.swift
//  ViperRequest
//
//  Created by admin on 20.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit
import RxSwift
import SwiftyJSON
import RxCocoa
import RxAlamofire

class Service{

   // let url = URL(string:"https://api.soundcloud.com/me.json?oauth_token=1-258123-256695212-7b0617cfccc7b")
    
    //let token = Variable<String?>("")
    
    func requestMe(token:String) ->Observable<[User]> {
        return json(.get, "https://api.soundcloud.com/me.json?oauth_token=\(token)").retry(3).map{ responseData in
            let json = JSON(responseData)
            print(json)
            let name = json["full_name"].stringValue
            let nickName = json["username"].stringValue
            var user = [User]()
            user.append(User(userName: name, userNickName: nickName))
            return user
        }
    }
}
