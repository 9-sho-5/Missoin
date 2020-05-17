//
//  ViewController.swift
//  MentorBook
//
//  Created by Kusunose Hosho on 2020/05/13.
//  Copyright © 2020 Kusunose Hosho. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var nameArray: [Name] = []
    
    @IBOutlet var nameLabel: UILabel!
    @IBOutlet var numberLabel: UILabel!
    
    //表示する番号
    var index: Int = 0
    
    func setUI() {
        numberLabel.text = nameArray[index].number
        nameLabel.text = nameArray[index].name
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //クラスで書いた順でないとエラーになる
        nameArray.append(Name(number: "１番目", name: "A"))
        nameArray.append(Name(number: "２番目",name: "B"))
        nameArray.append(Name(number: "３番目",name: "C"))
        nameArray.append(Name(number: "4番目",name: "D"))
        nameArray.append(Name(number: "5番目",name: "E"))
        
        
        setUI()
    }

    //巡回するようにindexの値の変更
    @IBAction func pre() {
        index = index - 1
        if index < 0 {
            index = nameArray.count - 1
        }
        setUI()
    }
    
    @IBAction func next() {
        index = index + 1
        if index == nameArray.count {
            index = 0
        }
        setUI()
    }
    
    @IBAction func one() {
        nameLabel.text = nameArray[0].name
        numberLabel.text = nameArray[0].number
        
        index = 0
    }

    @IBAction func two() {
        nameLabel.text = nameArray[1].name
        numberLabel.text = nameArray[1].number
        
        index = 1
    }
    
    @IBAction func three() {
        nameLabel.text = nameArray[2].name
        numberLabel.text = nameArray[2].number
        
        index = 2
    }
    
}
