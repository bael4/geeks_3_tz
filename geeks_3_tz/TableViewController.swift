//
//  TableViewController.swift
//  geeks_3_tz
//
//  Created by Баэль Рыспеков on 15/3/23.
//


import UIKit

class TableViewController: UIViewController {

    private var users: [User] = []
    private let idCell = "cell"

    @IBOutlet weak var movieTableView: UITableView!
    
    
    
    override func viewDidLoad() {

        movieTableView.dataSource = self
    
        initData()
        self.title = "My Contacts"
        super.viewDidLoad()

       
    }
    
    
    private func initData(){
        users = [
            User(name: "Bael" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Azim" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Rafa" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Ula" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Dimn" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Adi" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Nur" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Yus" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Bek" , phoneNumber: "+996 507 409317", image: "cp"),
            User(name: "Dos" , phoneNumber: "+996 507 409317", image: "cp"),
        ]
    }
    



}

extension TableViewController: UITableViewDataSource {
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        users.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {

        let cell = UITableViewCell(style: .subtitle, reuseIdentifier: "cell")

        cell.textLabel?.text = users[indexPath.row].name
        cell.detailTextLabel?.text = users[indexPath.row].phoneNumber
        cell.imageView?.image = UIImage(named: users[indexPath.row].image)
        return cell
       

    }
    
    
    
    }
struct User {
    
    var name: String
    var phoneNumber: String
    var image: String
    
}
