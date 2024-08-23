//
//  UserDetailTableViewCell.swift
//  Login
//
//  Created by João Pedro Volponi on 05/08/24.
//

import UIKit

class UserDetailTableViewCell: UITableViewCell {
    
    static let identifier: String = "UserDetailTableViewCell"
    
    lazy var descriptionCell: UserDetailView = {
        let view = UserDetailView()
        return view
    }()
      
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        addSubView()
        setUpContraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubView() {
        contentView.addSubview(self.descriptionCell)
    }
    
    public func setUpCell(data: DataUser) {
        self.descriptionCell.nameLabel.text = data.name
        self.descriptionCell.userImageView.image = UIImage(named: data.nameImage)
    }
    
    private func setUpContraints() {
        NSLayoutConstraint.activate([
            descriptionCell.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            descriptionCell.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leftAnchor),
            descriptionCell.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            descriptionCell.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }
}
