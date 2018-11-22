//
//  listTableViewCell.swift
//  GZ
//
//  Created by guazhac on 2018/11/22.
//  Copyright © 2018 st. All rights reserved.
//

import UIKit

class listTableViewCell: UITableViewCell {

    var tlineV: CALayer!
    var blineV: CALayer!

    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        
        super .init(style: style, reuseIdentifier: reuseIdentifier)
        self.backgroundColor = UIColor.init(red: 236/255.0, green: 235/255.0, blue: 236/255.0, alpha: 1)
        
        let whiteV = UIView(frame: CGRect(x: 80, y: 10, width: 280, height: 80))
        whiteV.backgroundColor = .white
        whiteV.layer.cornerRadius = 5
        self.addSubview(whiteV)
        
        let circleV = UIView(frame: CGRect(x: 20, y: whiteV.center.y - 15, width: 30, height: 30))
        circleV.backgroundColor = .green
        circleV.layer.cornerRadius = 15
        self.addSubview(circleV)
        
        tlineV = CALayer()
        tlineV.frame = CGRect(x: circleV.center.x, y: circleV.frame.maxY, width: 1, height: 100 - circleV.frame.maxY)
        tlineV.backgroundColor = UIColor.red.cgColor
        self.layer .addSublayer(tlineV)
        
        blineV = CALayer()
        blineV.frame = CGRect(x: circleV.center.x, y: 0, width: 1, height: 100 - circleV.frame.maxY)
        blineV.backgroundColor = UIColor.red.cgColor
        self.layer .addSublayer(blineV)
        
    }
    
    func isHideSomeLineByIndex(indexRow: Int, rowCount: Int){

        if indexRow == rowCount - 1 {
            tlineV.isHidden = true
        }else {
            tlineV.isHidden = false
        }

        if indexRow == 0 {
            blineV.isHidden = true
        }else {
            blineV.isHidden = false
        }
        
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
