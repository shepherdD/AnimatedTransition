//
//  ViewController.swift
//  AnimatedTransition
//
//  Created by Eddie on 15/7/21.
//  Copyright (c) 2015年 Eddie. All rights reserved.
//

import UIKit

let reuseIdentifier = "ATCollectionCell"

class ViewController: UICollectionViewController {

    var selectedCell: ATCollectionViewCell!
    
    override func viewDidLoad() {
        
        super.viewDidLoad()

        // Register cell classes
        self.collectionView!.registerClass(UICollectionViewCell.self, forCellWithReuseIdentifier: reuseIdentifier)

    }

    override func didReceiveMemoryWarning() {
        
        super.didReceiveMemoryWarning()
        
    }

    // MARK: - Navigation


    // MARK: UICollectionViewDataSource

    override func numberOfSectionsInCollectionView(collectionView: UICollectionView) -> Int {
        
        return 1
        
    }


    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        return 10
        
    }

    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier(reuseIdentifier, forIndexPath: indexPath) as! ATCollectionViewCell
        
        return cell
        
    }

}
