//
//  ViewController.swift
//  StaticFactoryMethod
//
//  Created by Samantha on 2020/2/19.
//  Copyright © 2020 Samantha. All rights reserved.
//  source: https://www.appcoda.com.tw/static-factory-method/

import UIKit

class ViewController: UIViewController {
     // 處理使用者動作的方法
     @IBAction func deleteButtonPressed(_ sender: UIBarButtonItem) {
  
         // 呈現確認刪除用的警告。
         present(
             .confirmationAlert(title: "刪除警告", message: "你確定要刪除這筆資料嗎？") {
                 self.deleteData()
             },
             animated: true, completion: nil
         )
     }
  
     // 刪除資料用的方法
     func deleteData() {
         // ...
     }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
}

extension UIViewController {
 
    static func confirmationAlert(title: String?, message: String?, handler: @escaping () -> Void) -> UIAlertController {
 
        // 產生一個 UIAlertController 物件。
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
 
        // 給 alertController 加上確認的選項。
        let confirmAction = UIAlertAction(title: "刪除", style: .destructive) { action in
            handler()
        }
        alertController.addAction(confirmAction)
 
        // 給 alertController 加上取消的選項。
        let cancelAction = UIAlertAction(title: "取消", style: .cancel, handler: nil)
        alertController.addAction(cancelAction)
 
        return alertController
    }
 
}
