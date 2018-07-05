//
//  NewsFeedSourceVC.swift
//  NewsFeed
//
//  Created by Raja on 05/07/18.
//  Copyright © 2018 Raja. All rights reserved.
//

import UIKit

//private let reuseIdentifier = "Cell"

class NewsFeedSourceVC: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let continueBtn:UIButton = {
        let btn = UIButton(type: UIButtonType.system)
        btn.translatesAutoresizingMaskIntoConstraints = false
        btn.backgroundColor = .black
        btn.setTitleColor(.white, for: UIControlState.normal)
        btn.titleLabel?.font = UIFont.systemFont(ofSize: 18, weight: UIFont.Weight.semibold)
        btn.setTitle("Continue", for: UIControlState.normal)
        return btn
    }()
    
    var dataSource = [String]()
    let cellId = "reuseCellId"
    
    override func viewDidLoad() {
        super.viewDidLoad()

        dataSource = NewsFeedSourceVM.getNewsFeedSourceList()
        
        setupContinueButton()
        
        
        self.collectionView?.contentInset = UIEdgeInsets(top: 0, left: 0, bottom: 55, right: 0)
        
    }
    
    func setupContinueButton() {
        view.addSubview(continueBtn)
        
        [continueBtn.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor, constant: 0),
        continueBtn.rightAnchor.constraint(equalTo: view.safeAreaLayoutGuide.rightAnchor, constant: 0),
        continueBtn.leftAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leftAnchor, constant: 0),
        continueBtn.heightAnchor.constraint(equalToConstant: 50)].forEach { (constraints) in
            constraints.isActive = true
        }
    }

    // MARK: UICollectionViewDataSource
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }


    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of items
        return dataSource.count
    }

    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellId, for: indexPath) as! NewsFeedSourceCell
        
        cell.sourceLbl.text = dataSource[indexPath.row]
        
        return cell
        
    }

    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let width = (collectionView.frame.width/2)
        
        return CGSize(width: width-10, height: width-5)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 5
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 0
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
  
        return UIEdgeInsets(top: 5, left: 5, bottom: 0, right: 5)

        
//        return UIEdgeInsetsMake(0, leftInset, 0, rightInset)
    }
    
    // MARK: UICollectionViewDelegate

    /*
    // Uncomment this method to specify if the specified item should be highlighted during tracking
    override func collectionView(_ collectionView: UICollectionView, shouldHighlightItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment this method to specify if the specified item should be selected
    override func collectionView(_ collectionView: UICollectionView, shouldSelectItemAt indexPath: IndexPath) -> Bool {
        return true
    }
    */

    /*
    // Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
    override func collectionView(_ collectionView: UICollectionView, shouldShowMenuForItemAt indexPath: IndexPath) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, canPerformAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) -> Bool {
        return false
    }

    override func collectionView(_ collectionView: UICollectionView, performAction action: Selector, forItemAt indexPath: IndexPath, withSender sender: Any?) {
    
    }
    */

}
