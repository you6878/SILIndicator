//
//  ViewController.swift
//  HowlIndicator
//
//  Created by 유명식 on 2018. 6. 19..
//  Copyright © 2018년 유명식. All rights reserved.
//

import UIKit
import NVActivityIndicatorView

class ViewController: UIViewController,NVActivityIndicatorViewable {

    @IBAction func button(_ sender: Any) {
        startAnimating(CGSize(width: 30, height: 30), message: "Loading..", type: NVActivityIndicatorType(rawValue: 1))
        
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 1.5) {
            NVActivityIndicatorPresenter.sharedInstance.setMessage("Authenticating...")
        }
        DispatchQueue.main.asyncAfter(deadline: DispatchTime.now() + 3) {
            self.stopAnimating()
            self.performSegue(withIdentifier: "nextPage", sender: nil)
        }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

