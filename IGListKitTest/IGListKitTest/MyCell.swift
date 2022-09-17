//
//  MyCell.swift
//  IGListKitTest
//
//  Created by Andy on 2022/9/17.
//

import UIKit

public class MyCell: UICollectionViewCell {
    
    private lazy var label: UILabel = { [weak self] in
        let label = UILabel()
        label.frame = self!.bounds
        label.textColor = .black
        label.textAlignment = .center
        return label
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    public override func prepareForReuse() {
        super.prepareForReuse()
        label.text = nil
    }
    
    
}


// MARK: - UI
extension MyCell {
    
    private func setupUI() {
        addSubview(label)
    }

}


// MARK: - Public Method
public extension MyCell {
    
    func configure(with text: String?) {
        label.text = text
    }
    
}
