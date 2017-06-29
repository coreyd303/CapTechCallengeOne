//
//  TableViewController.swift
//  CapTech Assigment 1
//
//  Created by Corey Davis on 6/23/17.
//  Copyright © 2017 Corey Davis. All rights reserved.
//

import UIKit

class TableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {


  @IBOutlet weak var tableView: UITableView!

  override func viewDidLoad() {
    super.viewDidLoad()
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
  }
  
  internal func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    let values = UserDefaults.standard.object(forKey: "dateList") as! Array<Date>
    return values.count
  }

  internal func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let values = UserDefaults.standard.object(forKey: "dateList") as! Array<Date>
    let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "Cell")

    let newDate = values[indexPath.row]
    let dateFormatter = DateFormatter()
    dateFormatter.timeStyle = DateFormatter.Style.none
    dateFormatter.dateStyle = DateFormatter.Style.medium

    let dateString = dateFormatter.string(from: newDate)
    cell.textLabel?.text = dateString
    return cell
  }

  @IBAction func removeRecord(_ sender: Any) {
    var values = UserDefaults.standard.object(forKey: "dateList") as! Array<Date>
    let index = (values.count - 1) 
    values.remove(at: index)
    UserDefaults.standard.set(values, forKey: "dateList")
    tableView.reloadData()
  }
}
