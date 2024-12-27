// Created by Ambrose Blay on 12/27/2024

import UIKit

class BirdTableViewCell: UITableViewCell {
    // MARK: - Views
    
    private let birdImageView = UIImageView()
    private let birdNameLabel = UILabel()
    
    static let reuse = "BirdTableViewCellReuseId"
    
    // MARK: - Initializer
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupBirdImageView()
        setupLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    // MARK: - Configure
    
    func configure(bird: Bird) {
        birdNameLabel.text = bird.name
        birdImageView.image = UIImage(named: bird.image)
    }
    
    // MARK: - Set up views
    
    private func setupBirdImageView() {
        birdImageView.contentMode = .scaleAspectFit
        birdImageView.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(birdImageView)
        
        NSLayoutConstraint.activate([
            birdImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            birdImageView.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            birdImageView.widthAnchor.constraint(equalToConstant: 64)
        ])
    }
    
    private func setupLabel() {
        birdNameLabel.textColor = .black
        birdNameLabel.font = .systemFont(ofSize: 20, weight: .medium)
        birdNameLabel.translatesAutoresizingMaskIntoConstraints = false
        
        contentView.addSubview(birdNameLabel)
        
        NSLayoutConstraint.activate([
            birdNameLabel.leadingAnchor.constraint(equalTo: birdImageView.trailingAnchor, constant: 8),
            birdNameLabel.centerYAnchor.constraint(equalTo: contentView.centerYAnchor),
            birdNameLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16)
        ])
    }
}
