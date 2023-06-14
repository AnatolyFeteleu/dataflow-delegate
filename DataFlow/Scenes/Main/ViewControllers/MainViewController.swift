//
//  MainViewController.swift
//  DataFlow
//
//  Created by Анатолий Фетелеу on 06.04.2023.
//

import UIKit

class MainViewController: UIViewController {
    
    private let mainView = MainView()
    private let tableView = UITableView()
    
    override func loadView() {
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        configureButtonActions()
    }

}

extension MainViewController {
    private func configureButtonActions() {
        mainView.detailButtonView.addTarget(self, action: #selector(tappedDetailbutton), for: .touchUpInside)
    }
    
    @objc func tappedDetailbutton() {
        let detailViewContoller = DetailViewController()
        detailViewContoller.delegate = self
        navigationController?.pushViewController(detailViewContoller, animated: true)
    }
}


extension MainViewController: ButtonSelectionDelegate {
    
    func didSelectButtonWith(_ label: String) {
        mainView.labelView.text = label
    }
    
}
