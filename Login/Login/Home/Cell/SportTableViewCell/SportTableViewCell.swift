//
//  SportTableViewCell.swift
//  Login
//
//  Created by João Pedro Volponi on 27/08/24.
//

import UIKit

class SportTableViewCell: UITableViewCell {
    
    var sportTableViewCellScreen: SportTableViewCellScreen = SportTableViewCellScreen()
    static let identifier: String = "SportTableViewCell"
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubView()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubView() {
        self.contentView.addSubview(self.sportTableViewCellScreen)
    }
    
    func configConstraints() {
        NSLayoutConstraint.activate([
            self.sportTableViewCellScreen.topAnchor.constraint(equalTo: topAnchor),
            self.sportTableViewCellScreen.leftAnchor.constraint(equalTo: leftAnchor),
            self.sportTableViewCellScreen.rightAnchor.constraint(equalTo: rightAnchor),
            self.sportTableViewCellScreen.bottomAnchor.constraint(equalTo: bottomAnchor)
        ])
    }
}
