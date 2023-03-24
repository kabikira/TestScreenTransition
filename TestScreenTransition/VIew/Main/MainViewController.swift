//
//  ViewController.swift
//  TestScreenTransition
//
//  Created by koala panda on 2023/03/24.
//

import UIKit

class MainViewController: UIViewController {
    @IBOutlet var FristDetailButton: UIButton!
    
    
    @IBAction func goFristDetail(_ sender: Any) {
        
        // nameで識別するとストーリーボード内に複数のストーリボードがあるから遷移できない
//        if let vc = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as? FristDetailViewController {
//            navigationController?.pushViewController(vc, animated: true)
//        }
        // 同じストーリーボードにあるときStoryboardIdentifierで設定する
        if let vc = storyboard?.instantiateViewController(withIdentifier: "FirstDetail") as? FristDetailViewController {
            navigationController?.pushViewController(vc, animated: true)
            // モダールで遷移
//            self.present(vc, animated: true)
        }
        
    }
    
    @IBAction func goSecondDetail(_ sender: Any) {
        // ViewControllerのみの場合
        let vc = SecondDetailViewController()
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    @IBAction func goThirdDetail(_ sender: Any) {
        if let vc = UIStoryboard(name: "ThirdDetail", bundle: nil).instantiateInitialViewController() as? ThirdDetailViewController {
            navigationController?.pushViewController(vc, animated: true)
        }
        // ストーリーボードIDでは遷移できなかった
//        if let vc = storyboard?.instantiateViewController(withIdentifier: "ThirdDetail") as? ThirdDetailViewController {
//            navigationController?.pushViewController(vc, animated: true)
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


