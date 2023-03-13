//
//  ViewController.swift
//  utube_clone
//
//  Created by user on 20/02/23.
//

import UIKit

class ViewController: UIViewController {
    
    var apiService = ApiService()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        apiService.getListVideo{(result) in
            print(result)
        }
    }


}

