//
//  ResultViewController.swift
//  buttonPushGame
//
//  Created by Kozasa Mizuki on 2019/10/13.
//  Copyright © 2019 Kozasa Mizuki. All rights reserved.
//

import UIKit

class ResultViewController: UIViewController {
    
    var pushCount: Int = 0
    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var resultLabel: UILabel!
    @IBOutlet weak var comment: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        label.font = label.font.withSize(30)
        resultLabel.font = resultLabel.font.withSize(60)
        resultLabel.text = String(pushCount)
        
        if pushCount > 70 {
            comment.text = "すごいぞ。やればできんじゃん。"
        } else if pushCount > 50 {
            comment.text = "まあまあだな。"
        } else {
            comment.text = "しょぼ。やる気あんの？"
        }
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
