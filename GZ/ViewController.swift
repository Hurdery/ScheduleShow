//
//  ViewController.swift
//  GZ
//
//  Created by guazhac on 2018/11/22.
//  Copyright © 2018 st. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var rowCountAry: [Int] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        for _ in 0...6 {
            rowCountAry.append(Int(arc4random() % 6 + 2))
        }
        
        listTableV()
    }

    func listTableV() -> Void {
        
        let tabV = UITableView(frame: CGRect(x: 0, y: 0, width: 375, height: 667), style: .grouped)
        tabV.delegate = self
        tabV.dataSource = self
        tabV.separatorStyle = .none
        self.view.addSubview(tabV)

    }
}

extension ViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        var cell = tableView .dequeueReusableCell(withIdentifier: "identifier") as? listTableViewCell
        if cell == nil {
            cell = listTableViewCell(style: .default, reuseIdentifier: "identifier")
        }
        cell?.selectionStyle = .none
        cell?.isHideSomeLineByIndex(indexRow: indexPath.row, rowCount: rowCountAry[indexPath.section])
        return cell!
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return "2018.11.22 --  进度节点展示"
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return rowCountAry[section]
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 6
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
}

