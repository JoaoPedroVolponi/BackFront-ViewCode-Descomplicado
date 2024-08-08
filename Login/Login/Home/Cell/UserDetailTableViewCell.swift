//
//  UserDetailTableViewCell.swift
//  Login
//
//  Created by João Pedro Volponi on 05/08/24.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserDetailTableViewCell"
    
    lazy var userImageView: UIImageView = {
        let image = UIImageView()
        image.translatesAutoresizingMaskIntoConstraints = false
        image.contentMode = .scaleAspectFit
        return image
    }()
    
    lazy var nameLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.textColor = .black
        return label
    }()
    
    func addSubView() {
        self.contentView.addSubview(userImageView)
        self.contentView.addSubview(nameLabel)
    }
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        self.addSubView()
        self.setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setUpContraints() {
        NSLayoutConstraint.activate([
            userImageView.centerYAnchor.constraint(equalTo: centerYAnchor),
            userImageView.leadingAnchor.constraint(equalTo: leadingAnchor),
            userImageView.heightAnchor.constraint(equalToConstant: 80),
            userImageView.widthAnchor.constraint(equalToConstant: 80),
            
            nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor),
            nameLabel.leadingAnchor.constraint(equalTo: userImageView.trailingAnchor, constant: 20)
        ])
    }
    
}
