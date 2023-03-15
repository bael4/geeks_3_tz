//
//  TableViewController.swift
//  geeks_3_tz
//
//  Created by Баэль Рыспеков on 15/3/23.
//


import UIKit

class TableViewController: UIViewController {

    private var users: [String:String] = [:]
    private let idCell = "cell"

    @IBOutlet weak var movieTableView: UITableView!
    
    
    
    override func viewDidLoad() {

        movieTableView.dataSource = self
        movieTableView.delegate = self
//        movieTableView.register(UITableViewCell.self, forCellReuseIdentifier: idCell)
        initData()
        self.title = "My Contacts"
        super.viewDidLoad()

       
    }
    
    private func initData(){
        
    }
    



}

extension TableViewController: UITableViewDataSource, UITableViewDelegate {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        20
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: idCell)
//        let cell = tableView.dequeueReusableCell(withIdentifier: idCell, for: indexPath)
        cell.textLabel?.text = "Bael Ryspekov"
        cell.detailTextLabel?.text = "+996 507 409 317"
        cell.imageView?.image = UIImage(named: "cp")
//        cell.imageView?.layer.cornerRadius = 10
//        cell.imageView?.layer.borderWidth = 1
        cell.imageView?.layer.borderColor = UIColor.red.cgColor
        print("i am create \(indexPath.row)")
        return cell
       

    }



//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        print()
//    }

    

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
return 50
    }
    
    
    }
