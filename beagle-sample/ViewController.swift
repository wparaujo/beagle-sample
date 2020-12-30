//
//  ViewController.swift
//  beagle-sample
//
//  Created by Wesley Araujo on 23/12/20.
//  Copyright © 2020 Wesley Araujo. All rights reserved.
//

import UIKit
import Beagle
import BeagleSchema

class ViewController: UIViewController {
    
    @IBOutlet weak var contentTableView: UITableView!
    
    private let datasource = ["Título1", "Título2", "Título3", "Título4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        contentTableView.dataSource = self
        contentTableView.delegate = self
    }
    
    @IBAction func adBannerDidTapped(_ sender: Any) {
        let screenViewController = Beagle.screen(
            .declarative(
                Screen(style: Style(backgroundColor: "#953131"), child: AdScreen(adId: Int.random(in: 0...2)).buildChild())
//                Screen(child: AdScreen(adId: Int.random(in: 0...2)).buildChild())
            )
        )
        present(screenViewController, animated: true)
    }
    
}

extension ViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        datasource.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GenericCell", for: indexPath) as! GenericTableViewCell
        cell.titleLabel.text = datasource[indexPath.row]
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 60
    }
}

extension ViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, viewForFooterInSection section: Int) -> UIView? {
        return UIView()
    }
}

