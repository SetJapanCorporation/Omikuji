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
        /* ここから記述 */
        
        // 4未満(0~3)のランダムな数字を生成します
        let randNum = arc4random_uniform(4)
        
        // randNumの数値によって異なる処理を行います
        switch randNum {
        case 0: // randNumが0の場合
            resultLabel.text = "凶" // resultLabelのテキストを凶に変更
        case 1: // randNumが1の場合
            resultLabel.text = "吉" // resultLabelのテキストを吉に変更
        case 2: // randNumが2の場合
            resultLabel.text = "中吉" // resultLabelのテキストを中吉に変更
        case 3: // randNumが3の場合
            resultLabel.text = "大吉" // resultLabelのテキストを大吉に変更
        default: // それ以外の場合
            break // 何もしません
        }
        
        /* ここまで記述 */
    }

}

