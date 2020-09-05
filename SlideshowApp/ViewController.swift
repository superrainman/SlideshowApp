//
//  ViewController.swift
//  SlideshowApp
//
//  Created by 奥山翔平 on 2020/09/02.
//  Copyright © 2020 shohei.okuyama. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    let images = [UIImage(named:"01")!,UIImage(named:"02")!,UIImage(named:"03")!,UIImage(named:"04")!,UIImage(named:"05")!]
    
    var count = 1
    //    let button = UIButton()
    var timer : Timer!
    var timer_sec: Float = 0
    
    @IBAction func unwind(_ segue: UIStoryboardSegue) {
    }
    
    @objc func updateTimer(_ timer: Timer) {
        if count == 5
        {
            count = 1
        }
        else{
            count += 1
        }
        buttonTapped()
    }
    
    
    @IBOutlet weak var PlayButtonString: UIButton!
    @IBOutlet weak var BackButtonOutlet: UIButton!
    @IBOutlet weak var NextButtonOutlet: UIButton!
    @IBOutlet weak var Image: UIButton!
    
    
    
    @IBAction func PlayButton(_ sender: Any) {
        if timer == nil{
        timer = Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(updateTimer(_:)), userInfo: nil, repeats: true)
            PlayButtonString.setTitle("■", for: .normal)
            BackButtonOutlet.isEnabled = false
            NextButtonOutlet.isEnabled = false
        }
        else{
            self.timer.invalidate()
            self.timer = nil
            PlayButtonString.setTitle("▶︎", for: .normal)
            BackButtonOutlet.isEnabled = true
            NextButtonOutlet.isEnabled = true
        }
        
    }
    
    @IBAction func BackButton(_ sender: Any) {
        if count == 1
        {
            count = 5
        }
        else{
            count -= 1
        }
        buttonTapped()
    }
    
    @IBAction func NextButton(_ sender: Any) {
        if count == 5
        {
            count = 1
        }
        else{
            count += 1
        }
        buttonTapped()
    }
    
    
    @IBAction func ImageButton(_ sender: Any) {
        //停止ボタンを押した時と同様の処理
        if timer != nil{
        self.timer.invalidate()
        self.timer = nil
        PlayButtonString.setTitle("▶︎", for: .normal)
        BackButtonOutlet.isEnabled = true
        NextButtonOutlet.isEnabled = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    
    func buttonTapped( )
    {
        print ("動作している")
        print (count)
        if(count == 1)
        {
            Image.setImage(images[0], for: .normal)
        }
        else if (count == 2)
        {
            Image.setImage(images[1], for: .normal)
        }
        else if (count == 3)
        {
            Image.setImage(images[2], for: .normal)
        }
        else if (count == 4)
        {
            Image.setImage(images[3], for: .normal)
        }
        else if (count == 5)
        {
            Image.setImage(images[4], for: .normal)
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        //BigImageクラスのcountにViewControllerクラスのcountを代入
        let bigImageViewer:BigImage = segue.destination as! BigImage
        bigImageViewer.count = count
    }
    
}

