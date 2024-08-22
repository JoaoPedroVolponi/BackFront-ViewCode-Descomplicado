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
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubView() {
        
    }
    
    public func setUpCell(data: DataUser) {
    }
}
