//
//  BigImage.swift
//  SlideshowApp
//
//  Created by 奥山翔平 on 2020/09/02.
//  Copyright © 2020 shohei.okuyama. All rights reserved.
//

import UIKit

class BigImage: UIViewController {
    
        var count = 0
    
        let images = [UIImage(named:"01")!,UIImage(named:"02")!,UIImage(named:"03")!,UIImage(named:"04")!,UIImage(named:"05")!]
    
    @IBOutlet weak var BigImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if(count == 1)
        {
            BigImage.image = images[0]
        }
        else if (count == 2)
        {
            BigImage.image = images[1]
        }
        else if (count == 3)
        {
            BigImage.image = images[2]
        }
        else if (count == 4)
        {
            BigImage.image = images[3]
        }
        else if (count == 5)
        {
            BigImage.image = images[4]
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
