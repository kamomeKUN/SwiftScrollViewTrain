//
//  ScrollViewController.swift
//  Swift5ScrollViewTrain
//
//  Created by kamomeKUN on 2020/04/19.
// Copyright ©︎ 2020 kamomeKUN. All rights reserved.
//

import UIKit

class ScrollViewController: UIViewController {
    
    let colors: [UIColor] = [.green, .yellow, .red]
    let btnCount: Int = 3

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupScrollView()

    }
    
    func setupScrollView() {
        
        let scrollView = UIScrollView()
        scrollView.isPagingEnabled = true
        
        // 位置・サイズの指定
        scrollView.frame = CGRect(x: 0, y: view.safeAreaInsets.bottom, width: view.frame.size.width, height: 200.0)
        scrollView.contentSize = CGSize(width: scrollView.frame.size.width * 3, height: scrollView.frame.size.height)
        
        for i in 0 ..< btnCount {
            let btn = createButton(scrollView: scrollView, num: i)
            scrollView.addSubview(btn)
        }
        
        self.view.addSubview(scrollView)
        
    }
    
    func createButton(scrollView: UIView, num: Int) -> UIButton{
        let btn = UIButton()
        let width = scrollView.frame.size.width
        let height = scrollView.frame.size.height
        btn.frame = CGRect(x: width * CGFloat(num), y: scrollView.frame.origin.y, width: width, height: height)
        btn.backgroundColor = colors[num]
        btn.tag = num + 1
        btn.addTarget(self, action: #selector(self.click(_:)), for: .touchUpInside)
        
        return btn
    }
    
    @objc func click(_ sender: UIButton) {
        print(sender.tag)
    }

}
