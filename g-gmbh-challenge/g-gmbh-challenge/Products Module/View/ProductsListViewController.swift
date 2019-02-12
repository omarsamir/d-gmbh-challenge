//
//  ProductsListViewController.swift
//  g-gmbh-challenge
//
//  Created by Omar Samir on 2/12/19.
//  Copyright © 2019 Omar Samir. All rights reserved.
//

import UIKit

class ProductsListViewController: BaseViewController,UITableViewDelegate,UITableViewDataSource {
    
    @IBOutlet weak var productsTableView: UITableView!
    var products: [Product]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        productsTableView.delegate = self
        productsTableView.dataSource = self
        // Do any additional setup after loading the view.
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return products.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
    }
}
