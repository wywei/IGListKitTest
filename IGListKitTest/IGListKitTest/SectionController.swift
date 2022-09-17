//
//  SectionController.swift
//  IGListKitTest
//
//  Created by Andy on 2022/9/17.
//

import IGListKit

private let kMargin: CGFloat = 5

final class LabelSectionController:  ListSectionController {
    
    private var text: String?
    
    override init() {
        super.init()
        
            //todo
        
        inset = UIEdgeInsets(top: kMargin, left: kMargin, bottom: kMargin, right: kMargin)
        
    }
    
    override func cellForItem(at index: Int) -> UICollectionViewCell {
        let cell = collectionContext!.dequeueReusableCell(of: MyCell.self, for: self, at: index) as! MyCell
        cell.configure(with: text)
        cell.backgroundColor = UIColor.arc4randomColor()
        return cell
    }
    
    override func sizeForItem(at index: Int) -> CGSize {
        return CGSize(width: collectionContext!.containerSize.width - kMargin * 2, height: 200)
    }
    
    override func didUpdate(to object: Any) {
        self.text = object as? String
    }
    
    override func didSelectItem(at index: Int) {
        print(index)
    }
}


