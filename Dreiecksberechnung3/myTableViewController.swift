//
//  myTableViewController.swift
//  Dreiecksberechnung3
//
//  Created by Joachim Vetter on 22.07.17.
//  Copyright © 2017 Joachim Vetter. All rights reserved.
//

import UIKit

class myTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

   
    @IBOutlet weak var myTableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        myTableView.dataSource = self
        myTableView.delegate = self
        myTableView.estimatedRowHeight = 0
        myTableView.estimatedSectionHeaderHeight = 0
        myTableView.estimatedSectionFooterHeight = 0
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 40
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let myCurrent = myTableView.dequeueReusableCell(withIdentifier: "myCell", for: indexPath)
        myCurrent.textLabel?.text = "Bayern München"
        return myCurrent
    }
}
