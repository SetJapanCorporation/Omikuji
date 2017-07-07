//
//  ViewController.swift
//  Omikuji
//
//  Created by 共有 on 2017/07/07.
//  Copyright © 2017年 共有. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    /// 占い結果を表示するラベル
    @IBOutlet weak var resultLabel: UILabel!
    /// 占うボタン
    @IBOutlet weak var fortuneButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    /// 占うボタンがタップされたときの処理
    @IBAction func didTapedFortuneButton(_ sender: Any) {
        // 0~3のランダムな数字を生成します
        let randNum = arc4random_uniform(4)
        
        // randNumの数値によって占い結果をラベルに表示します
        switch randNum {
        case 0:
            resultLabel.text = "凶"
        case 1:
            resultLabel.text = "吉"
        case 2:
            resultLabel.text = "中吉"
        case 3:
            resultLabel.text = "大吉"
        default:
            break
        }
    }

}

