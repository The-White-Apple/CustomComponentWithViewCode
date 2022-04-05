//
//  ViewController.swift
//  CodeViewCustomView
//
//  Created by FRANCISCO SAMUEL DA SILVA MARTINS on 28/03/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var customView: CustomCardView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let customViewByCode = CustomCardView(frame: .zero)
        customViewByCode.translatesAutoresizingMaskIntoConstraints = false
        customViewByCode.backgroundColor = .red

        let screen = UIScreen.main.bounds

        self.view.addSubview(customViewByCode)

        NSLayoutConstraint.activate([
            customViewByCode.leadingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.leadingAnchor, constant: 10),
            customViewByCode.trailingAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.trailingAnchor, constant: -10),
            customViewByCode.topAnchor.constraint(equalTo: self.view.safeAreaLayoutGuide.topAnchor, constant: 10),
            customViewByCode.heightAnchor.constraint(equalToConstant: screen.height / 2)
        ])
        
        customViewByCode.configureComponentData(image: UIImage(systemName: "highlighter")!, text: "hello")
        self.customView.configureComponentData(image: UIImage(systemName: "lasso")!, text: "world")


    }

}
