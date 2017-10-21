//
//  ColorsViewController.swift
//  Colors
//
//  Created by Holt Skinner on 10/19/17.
//  Copyright © 2017 Holt Skinner. All rights reserved.
//

import UIKit

class ColorsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {

    // dictionary to pair UIColors with names, because you can't get the name from a color 😔
    let colors: [(UIColor, String)] = [(.red, "red"), (.orange, "orange"), (.yellow, "yellow"), (.green, "green"), (.blue, "blue"), (.purple, "purple"), (.brown, "brown")]

    @IBOutlet weak var colorsTableView: UITableView!

    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "colorCell", for: indexPath)
        cell.backgroundColor = colors[indexPath.row].0
        cell.textLabel?.text = colors[indexPath.row].1
        cell.selectionStyle = .none
        return cell
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? ColorDetailViewController,
           let row = colorsTableView.indexPathForSelectedRow?.row {
            destination.color = colors[row]
        }
    }

}
