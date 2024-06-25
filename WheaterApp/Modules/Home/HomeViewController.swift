//
//  HomeViewController.swift
//  WheaterApp
//
//  Created by MacBook Air MII  on 25/06/24.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet weak var currentWeatherView: UIView!
    @IBOutlet weak var forecastWeatherView: UIView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setView()
    }

    private func setView() {
        setupTopView()
        setupBottomView()
    }
    
    private func setupTopView() {
        roundedCorner(view: currentWeatherView)
    }
    
    private func setupBottomView() {
        roundedCorner(view: forecastWeatherView)
    }
}


extension HomeViewController {
    
    private func roundedCorner(view: UIView) {
        view.layer.cornerRadius = 16
        view.layer.borderWidth = 1
        view.layer.borderColor = UIColor(named: "ScarpaFlow")?.withAlphaComponent(0.5).cgColor
    }
    
}
