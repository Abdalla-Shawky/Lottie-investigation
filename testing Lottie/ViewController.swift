//
//  ViewController.swift
//  testing Lottie
//
//  Created by Abdalla Ahmed Shawky Abdo on 20.06.23.


import UIKit

class ViewController: UIViewController, UITableViewDataSource {

  let tableView = UITableView()

  override func viewDidLoad() {
    super.viewDidLoad()
    tableView.dataSource = self
    let nib = UINib(nibName: "\(CustomTableViewCell.self)", bundle: nil)
    tableView.register(nib, forCellReuseIdentifier: "\(CustomTableViewCell.self)")

    tableView.translatesAutoresizingMaskIntoConstraints = false
    view.addSubview(tableView)

    tableView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
    tableView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    tableView.leftAnchor.constraint(equalTo: view.leftAnchor).isActive = true
    tableView.rightAnchor.constraint(equalTo: view.rightAnchor).isActive = true
  }

  func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
    10
  }

  func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCell(withIdentifier: "\(CustomTableViewCell.self)", for: indexPath) as! CustomTableViewCell
    return cell
  }

}

