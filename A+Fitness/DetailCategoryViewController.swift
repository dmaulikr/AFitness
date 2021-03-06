//
//  DetailCategoryViewController.swift
//  A+Fitness
//
//  Created by Feihong Zhao on 2017-04-03.
//  Copyright © 2017 Feihong Zhao. All rights reserved.
//

import UIKit
import SnapKit
import iMaster

class DetailCategoryViewController: UIViewController {
    
    let detailCategoryView: DetailCategoryView = DetailCategoryView(frame: .zero, collectionViewLayout: UICollectionViewFlowLayout())
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpView()
    }
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        navigationController?.isNavigationBarHidden = false
        navigationController?.navigationBar.barTintColor = .clear
        
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: UIBarMetrics.default)
        navigationController?.navigationBar.shadowImage = UIImage()
        navigationController?.navigationBar.isTranslucent = true
        navigationController?.view.backgroundColor = UIColor.clear
        
        navigationController?.navigationBar.tintColor = myColor.white
        
    }
    func setUpView(){        
        view.addCustomView(detailCategoryView)
        detailCategoryView.snp.makeConstraints { (mk) in
            mk.top.equalToSuperview()
            mk.right.equalToSuperview()
            mk.bottom.equalToSuperview()
            mk.left.equalToSuperview()
        }
    }
    
}
