//
//  ViewController.swift
//  scroll
//
//  Created by hyebin on 2023/08/20.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var horizontalView: UIView!
        
    lazy var scrollView: UIScrollView = {
        var view = UIScrollView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.alwaysBounceVertical = false
        view.isDirectionalLockEnabled = true
        return view
    }()

    lazy var widthBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
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
    
    lazy var redBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemRed
        return view
    }()
    
    lazy var orangeBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemOrange
        return view
    }()
    
    lazy var yellowBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemYellow
        return view
    }()
    
    lazy var greenBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemMint
        return view
    }()
    
    lazy var skyBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemCyan
        return view
    }()
    
    lazy var blueBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        return view
    }()
    
    lazy var purpleBaseView: UIView = {
        var view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemIndigo
        return view
    }()
    
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
        
        widthStackView.addArrangedSubview(redBaseView)
        widthStackView.addArrangedSubview(orangeBaseView)
        widthStackView.addArrangedSubview(yellowBaseView)
        widthStackView.addArrangedSubview(greenBaseView)
        widthStackView.addArrangedSubview(skyBaseView)
        widthStackView.addArrangedSubview(blueBaseView)
        widthStackView.addArrangedSubview(purpleBaseView)
    }
    
    fileprivate func applyConstraints() {
        let scrollViewConstraints = [
            scrollView.leadingAnchor.constraint(equalTo: horizontalView.leadingAnchor),
            scrollView.trailingAnchor.constraint(equalTo: horizontalView.trailingAnchor),
            scrollView.topAnchor.constraint(equalTo: horizontalView.topAnchor),
            scrollView.bottomAnchor.constraint(equalTo: horizontalView.bottomAnchor),
        ]
         
        let widthBaseViewConstraints = [
            widthBaseView.leadingAnchor.constraint(equalTo: scrollView.leadingAnchor),
            widthBaseView.trailingAnchor.constraint(equalTo: scrollView.trailingAnchor),
            widthBaseView.topAnchor.constraint(equalTo: scrollView.topAnchor),
            widthBaseView.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor),
            widthBaseView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
        ]

        let widthStackViewConstraints = [
            widthStackView.leadingAnchor.constraint(equalTo: widthBaseView.leadingAnchor),
            widthStackView.trailingAnchor.constraint(equalTo: widthBaseView.trailingAnchor),
            widthStackView.topAnchor.constraint(equalTo: widthBaseView.topAnchor),
            widthStackView.bottomAnchor.constraint(equalTo: widthBaseView.bottomAnchor)
        ]
        
        let redBaseViewConstraints = [
            redBaseView.widthAnchor.constraint(equalToConstant: 200),
            redBaseView.heightAnchor.constraint(equalTo: scrollView.heightAnchor),
        ]
        
        NSLayoutConstraint.activate(scrollViewConstraints)
        NSLayoutConstraint.activate(widthBaseViewConstraints)
        NSLayoutConstraint.activate(widthStackViewConstraints)
        NSLayoutConstraint.activate(redBaseViewConstraints)
        
        let width = widthBaseView.widthAnchor.constraint(equalTo: scrollView.widthAnchor)
        width.priority = UILayoutPriority(250)
        width.isActive = true
    }
}

