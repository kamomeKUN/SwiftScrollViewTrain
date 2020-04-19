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
    
    let numberOfPages = 5
    let colors: [UIColor] = [.yellow, .gray, .red, .blue, .brown]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 画面のUIを設定
        configureSV()
    }
    
    func createPages(page: Int) -> UIView {
        let pageView = UIView()
        let pageSize = scrollView.frame.size
        let positionX = pageSize.width * CGFloat(page)
        let position = CGPoint(x: positionX, y: 0)
        pageView.frame = CGRect(origin: position, size: pageSize)
        pageView.backgroundColor = colors[page]
        
        return pageView
    }
    
    func createContentsView() -> UIView {
        
        let contentsView = UIView()
        // 位置、サイズの設定
        let contentsWidth = scrollView.frame.width * CGFloat(numberOfPages)
        let contentsHeight = scrollView.frame.height
        contentsView.frame = CGRect(x: 0, y: 0, width: contentsWidth, height: contentsHeight)
        
        for i in 0 ..< numberOfPages {
            
            let pageView = createPages(page: i)
            contentsView.addSubview(pageView)
            
        }
        
        return contentsView
        
    }
    
    func configureSV() {
        
        scrollView.isPagingEnabled = true
        
        let subView = createContentsView()
        scrollView.addSubview(subView)
        
        scrollView.contentSize = subView.frame.size
    }


}

