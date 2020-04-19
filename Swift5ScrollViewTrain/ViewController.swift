//
//  ViewController.swift
//  Swift5ScrollViewTrain
//
//  Created by kamomeKUN on 2020/04/19.
// Copyright ©︎ 2020 kamomeKUN. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 画面のUIを設定
        configureSV()
    }
    
    func createContents() -> UIView {
        
        let contentsView = UIView()
        // 位置、サイズの設定
        contentsView.frame = CGRect(x: 0, y: 0, width: view.frame.size.width, height: 1200)
        
        let label = createLabel(contentsView: contentsView)
        contentsView.addSubview(label)
        
        return contentsView
        
    }
    
    func createLabel(contentsView: UIView) -> UILabel {
        
        let label = UILabel()
        
        // 位置、大きさを設定
        label.frame.size = CGSize(width: 255, height: 50)
        label.center = contentsView.center
        label.text = "StayHome"
        label.font = UIFont.systemFont(ofSize: 30.0)
        label.textAlignment = NSTextAlignment.center
        
        return label
    }
    
    func configureSV() {
        
        let subView = createContents()
        scrollView.addSubview(subView)
        
        scrollView.contentSize = subView.frame.size
    }


}

