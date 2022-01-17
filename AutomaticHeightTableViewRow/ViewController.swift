//
//  ViewController.swift
//  AutomaticHeightTableViewRow
//
//  Created by George Philip Malayil on 17/01/22.
//

// Photo by Tyler Lastovich from Pexels


import UIKit

class ViewController: UIViewController {

    @IBOutlet var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let contentCell = tableView.dequeueReusableCell(withIdentifier: "ContentCell") as! ContentCell
        contentCell.loadImage()
        
        contentCell.setNeedsLayout()
        contentCell.layoutIfNeeded()
    
        return contentCell
    }
}

