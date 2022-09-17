//
//  ViewController.swift
//  IGListKitTest
//
//  Created by Andy on 2022/9/17.
//

import UIKit
import IGListKit

private let kScreenW: CGFloat = UIScreen.main.bounds.width
private let kScreenH: CGFloat = UIScreen.main.bounds.height


class ViewController: UIViewController {
 
    private var adapter: ListAdapter?
    
    fileprivate lazy var collectionView: UICollectionView = {[weak self] in
        let layout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: self!.view.bounds, collectionViewLayout: layout)
        
        self!.view.addSubview(collectionView)
        return collectionView
        
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupUI()

    }

}


extension ViewController {
    
    private func setupUI() {
        let adapter = ListAdapter(updater: ListAdapterUpdater(), viewController: self)
        adapter.collectionView = collectionView
        adapter.dataSource = self
        self.adapter = adapter
    }
 
}


extension ViewController: ListAdapterDataSource {
    
    func objects(for listAdapter: ListAdapter) -> [ListDiffable] {
        let data: [NSString] = ["123","456","789","12456","45789","09456","67789"]
        return data
    }
    
    func listAdapter(_ listAdapter: ListAdapter, sectionControllerFor object: Any) -> ListSectionController {
        return LabelSectionController()
    }
    
    func emptyView(for listAdapter: ListAdapter) -> UIView? {
        return nil
    }
    
}
