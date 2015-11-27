//
//  ViewController.swift
//  Map
//
//  Created by Doona on 2015. 11. 27..
//  Copyright © 2015년 Doona. All rights reserved.
//

import UIKit

class firstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBOutlet weak var mapViewButton: UIButton!
    @IBAction func moveMapView(sender: AnyObject) {
        // 화면을 전환할 뷰 컨트롤러 객체를 스토리 보드에서 StoryboardID 정보를 이용하여 읽어온다.
        let uvc = self.storyboard!.instantiateViewControllerWithIdentifier("SecondVC")
        //화면을 전환할 때 애니메이션 정의
        uvc.modalTransitionStyle = UIModalTransitionStyle.CrossDissolve
        
        //인자값으로 받은 뷰 컨트롤러로 화면 전환
        self.presentViewController(uvc, animated: true, completion: nil)
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

