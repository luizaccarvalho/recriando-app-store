//
//  BuscaCell.swift
//  AppStore
//
//  Created by Luiza  Carvalho on 31/10/21.
//

import UIKit

class BuscaCell: UITableViewCell {
    let iconeImageView: UIImageView = .iconeImageView()
    let tituloLabel: UILabel = .textLabel(text: "App nome", fontSize: 18, numberOfLines: 2)
    let empresaLabel: UILabel = .textLabel(text: "Empresa nome", fontSize: 14)
    let obterButton: UIButton = .obterButton()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        let tituloEmpresaStackView = UIStackView(arrangedSubviews: [
            tituloLabel,
            empresaLabel
        ])
        tituloEmpresaStackView.spacing = 8
        tituloEmpresaStackView.axis = .vertical
        
        let headerStackView = UIStackView(arrangedSubviews: [
            iconeImageView,
            tituloEmpresaStackView,
            obterButton
        ])
        headerStackView.spacing = 12
        headerStackView.alignment = .center

        addSubview(headerStackView)
        headerStackView.preencherSuperview(padding: .init(top: 0, left: 20, bottom: 0, right: 20))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
}
