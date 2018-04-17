//
//  ViewController.swift
//  Alret Controler 03
//
//  Created by D7703_21 on 2018. 4. 17..
//  Copyright © 2018년 D7703_21. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    
    @IBAction func buttonPressed(_ sender: Any) {
        let myAlert = UIAlertController(title: "알림", message: "설정된시간이 되었습니다.", preferredStyle: .alert)
        
        let okAction = UIAlertAction(title: "확인", style: .default, handler:
        {( myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.red
        })
        
        let cancelAction = UIAlertAction(title: "취소", style: .cancel, handler:
        {(myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.white
        })
        
        let testAction = UIAlertAction(title: "Delete", style: .destructive, handler:
        {(myAction: UIAlertAction) -> Void in
            self.view.backgroundColor = UIColor.green
        })
        
        myAlert.addAction(okAction)
        myAlert.addAction(cancelAction)
        myAlert.addAction(testAction)
        
        present(myAlert, animated: true, completion: nil)
        
    }
    

}
