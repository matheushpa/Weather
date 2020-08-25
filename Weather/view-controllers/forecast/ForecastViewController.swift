//
//  ForecastViewController.swift
//  Weather
//
//  Created by Matheus Holanda Pinheiro de Albuquerque on 22/08/20.
//  Copyright © 2020 Matheus Holanda. All rights reserved.
//

import UIKit

class ForecastViewController: BaseViewController {
    
    private let refreshControl = UIRefreshControl()
    
    private lazy var tableView: UITableView = {
        let tableView = UITableView(frame: .zero, style: .plain)
        tableView.separatorColor = UIColor.init(netHex: kSeparatorColor)
        tableView.separatorInset = UIEdgeInsets(top: 0, left: 92, bottom: 0, right: 0)
        tableView.delegate = self
        tableView.dataSource = self
        tableView.backgroundColor = .white
        tableView.translatesAutoresizingMaskIntoConstraints = false
        tableView.register(ForecastHeader.self, forHeaderFooterViewReuseIdentifier: kForecastHeaderIdentifier)
        tableView.register(ForecastTableViewCell.self, forCellReuseIdentifier: kForecastCellIdentifier)
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTableView()
    }
    
    // MARK: - Setup methods
    
    private func setupTableView() {
        view.addSubview(tableView)
        tableView.addLeadingConstraint()
        tableView.addTrailingConstraint()
        tableView.addTopConstraint()
        tableView.addBottomConstraint()
        tableView.refreshControl = refreshControl
        refreshControl.addTarget(self, action: #selector(pullToRefresh), for: .valueChanged)
        refreshControl.tintColor = .gray
    }
    
    // MARK: - Action methods
    
    @objc func pullToRefresh() {}
}

extension ForecastViewController: UITableViewDataSource, UITableViewDelegate {
    // MARK: - UITableView delegate and data source methods
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 4
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 4
    }
    
    func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 48
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 90
    }
    
    func tableView(_ tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if let header = tableView.dequeueReusableHeaderFooterView(withIdentifier: kForecastHeaderIdentifier) as? ForecastHeader {
            return header
        } else {
            return UIView()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: kForecastCellIdentifier, for: indexPath) as? ForecastTableViewCell {
            return cell
        } else {
            return UITableViewCell()
        }
    }
}
