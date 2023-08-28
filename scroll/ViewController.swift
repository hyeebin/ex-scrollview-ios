//
//  ViewController.swift
//  scroll
//
//  Created by hyebin on 2023/08/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var horizontalView: UIView!
        
    lazy var scrollView: UIView = {
        var view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()

    lazy var widthBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    lazy var widthStackView: UIStackView = {
        var view = UIStackView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        view.distribution = .fillEqually
        view.alignment = .fill
        return view
    }()
    
    // 할일
    // 1. programatically 로 세로 스크롤 만들기
    // 2. storyboard 로 가로 스크롤 만들기
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        addViews()
        applyConstraints()
    }
    
    fileprivate func addViews() {
        horizontalView.addSubview(scrollView)
        scrollView.addSubview(widthBaseView)
        widthBaseView.addSubview(widthStackView)
    }
    
    fileprivate func applyConstraints() {
        
    }
    
}

