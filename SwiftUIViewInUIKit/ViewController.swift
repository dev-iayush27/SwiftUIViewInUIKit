//
//  ViewController.swift
//  SwiftUIViewInUIKit
//
//  Created by Ayush Gupta on 24/11/23.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {
    
    private lazy var cardView: UIView = {
        let view = UIView()
        view.backgroundColor = .white
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        title = "Welcome"
        
        displaySwiftUIView()
    }
    
    private func displaySwiftUIView() {
        let vc = UIHostingController(rootView: SwiftUIView(buyButtonAction: buyButtonAction))
        
        guard let swiftUIView = vc.view else { return }
        
        self.cardView = swiftUIView
        self.cardView.translatesAutoresizingMaskIntoConstraints = false
        
        addChild(vc)
        view.addSubview(self.cardView)
        
        NSLayoutConstraint.activate([
            self.cardView.topAnchor.constraint(equalTo: view.topAnchor),
            self.cardView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            self.cardView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            self.cardView.heightAnchor.constraint(greaterThanOrEqualToConstant: 0)
        ])
        
        vc.didMove(toParent: self)
    }
    
    private func buyButtonAction() {
        let vc = PaymentViewController()
        self.navigationController?.pushViewController(vc, animated: true)
    }
}
