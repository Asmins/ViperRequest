//
//  ViewController.swift
//  ViperRequest
//
//  Created by admin on 20.10.16.
//  Copyright © 2016 Mozi. All rights reserved.
//

import UIKit
import RxAlamofire
import RxCocoa
import RxSwift

class ViewController: UIViewController {
    
    @IBOutlet var tableView: UITableView!
    @IBOutlet var textField: UITextField!
    var presenter = Presenter()
    var data:Driver<[User]>?
    var variable = Variable("")
    var service = Service()
    var dipose = DisposeBag()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.text = "1-258123-256695212-401f20a07e02e"
        presenter.show(tableView: tableView)
        presenter.data?.drive(tableView.rx.items(cellIdentifier: "Cell")) {_,user,cell in
            cell.detailTextLabel?.text = user.userName
            cell.textLabel?.text = user.userNickName
        }
    }
    // Do any additional setup after loading the view, typically from a nib.
}


