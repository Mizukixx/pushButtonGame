//
//  ViewController.swift
//  buttonPushGame
//
//  Created by Kozasa Mizuki on 2019/10/13.
//  Copyright © 2019 Kozasa Mizuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var timer: Timer = Timer()
    var timeCount: Float = 10.0
    var pushCount: Int = 0
    @IBOutlet weak var timerLabel: UILabel!
    
    @IBAction func start() {
        
        timer = Timer.scheduledTimer(withTimeInterval: 0.05, repeats: true) { _ in
            
            if self.timer.isValid == true {
            /* 制限時間をラベルに表示 */
            self.timeCount = self.timeCount - 0.05
            self.timerLabel.text = String(format: "%.2f",self.timeCount)
            }
            
            if self.timeCount <= 0 {
                self.performSegue(withIdentifier: "toResult", sender: nil)
                self.timer.invalidate()
            }
        }
        
    }
    @IBAction func pushButton() {
        self.pushCount += 1
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        timerLabel.font = timerLabel.font.withSize(45)
        
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let resultViewController: ResultViewController = segue.destination as! ResultViewController
        resultViewController.pushCount = self.pushCount
    }


}

