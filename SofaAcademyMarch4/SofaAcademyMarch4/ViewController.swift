//
//  ViewController.swift
//  SofaAcademyMarch4
//
//  Created by Luka Vukelić on 06.04.2022..
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate{

    @IBOutlet weak var table: UITableView!
//    interface builder
    
    struct App {
        let title: String
        let imageName: String
    }
    let data : [App] = [
        App(title:"facebook", imageName: "facebook"),
        App(title:"instagram", imageName: "instagram"),
        App(title:"snapchat", imageName: "snap"),
        App(title:"tiktok", imageName: "tiktok"),
        App(title:"youtube", imageName: "yt"),
        App(title:"wap", imageName: "wap"),
        App(title:"link", imageName: "link"),
        App(title:"facebook", imageName: "facebook"),
        App(title:"instagram", imageName: "instagram"),
        App(title:"snapchat", imageName: "snap"),
        App(title:"tiktok", imageName: "tiktok"),
        App(title:"youtube", imageName: "yt"),
        App(title:"wap", imageName: "wap"),
        App(title:"link", imageName: "link")
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let app = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for:indexPath) as! CustomTableViewCell
        cell.label.text = app.title
        cell.label.textColor = .systemIndigo
        cell.label.isHighlighted = true
        cell.label.shadowColor = .systemGray2
        cell.label.shadowOffset.width = 2
        NSLayoutConstraint.activate([
        cell.label.widthAnchor.constraint(equalToConstant: 60)
        ])
        cell.iconImageView.image = UIImage(named: app.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if let cell = tableView.cellForRow(at: indexPath) {
            
            if cell.accessoryType == .none {
                cell.accessoryType = .checkmark
                
            } else {
                cell.accessoryType = .none
            }
        }

        tableView.deselectRow(at: indexPath, animated: true)
    }
    
}

