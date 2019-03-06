//
//  ConversationsListViewController.swift
//  TFS
//
//  Created by Mike Ovyan on 24/02/2019.
//  Copyright © 2019 Mike Ovyan. All rights reserved.
//

import UIKit

let showDialogSegue = "ShowDia"

final class ConversationsListViewController: UIViewController {
    // MARK: - Outlets

    @IBOutlet
    private var tableView: UITableView!

    // MARK: - Members

    private lazy var themeManager = AppThemeManager()

    // MARK: - Overrides

    override func viewDidLoad() {
        super.viewDidLoad()
        addBarButton()

        tableView.estimatedRowHeight = 74
        tableView.rowHeight = UITableView.automaticDimension
    }

    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)

        if let selectedItem = tableView.indexPathForSelectedRow {
            tableView.deselectRow(at: selectedItem, animated: false)
        }
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard
            segue.identifier == showDialogSegue,
            let dialog = segue.destination as? ConversationViewController,
            let model = sender as? ConversationCellViewModel else {
            super.prepare(for: segue, sender: sender)
            return
        }

        dialog.title = model.name
    }

    // MARK: - Methods

    func addBarButton() {
        let image = UIImage(named: "placeholder-user1")
        let button = UIButton(type: .custom)

        button.setImage(image, for: .normal)
        button.frame.size = CGSize(width: 32, height: 32)
        button.imageView?.contentMode = .scaleAspectFit
        button.addTarget(self, action: #selector(showProfile), for: .touchUpInside)

        navigationItem.rightBarButtonItem = UIBarButtonItem(customView: button)
    }

    // MARK: - Members

    let sections = ["Online", "History"]

    lazy var activeConversations: [ConversationCellViewModel] = {
        let provider = ConversationListProvider()
        let models = provider.getOnline()

        return models.map { ConversationCellViewModelImp(with: $0) }
    }()

    lazy var historyConversations: [ConversationCellViewModel] = {
        let provider = ConversationListProvider()
        let models = provider.gethistory()

        return models.map { ConversationCellViewModelImp(with: $0) }
    }()

    // MARK: - Actions

    @objc
    func showProfile() {
        let profile = instantiateController(id: "ProfileVC")
        present(profile, animated: true)
    }

    @IBAction
    private func showThemes(_ sender: UIBarButtonItem) {
        // let themes: ThemesViewController = instantiateController(id: "Themes-vc")
        let themes: ThemesViewController = instantiateController(id: "Themes-vc-swift")

        //themes.delegate = self
        themes.model = getThemes()

        let module: ThemesModule = themes
        module.onColorChanged = { [weak self] newColor in
            self?.updateAppereance(with: newColor)
            self?.logThemeChanging(selectedTheme: newColor)
        }

        present(themes, animated: true)
    }

    // MARK: - Helpers

    private func instantiateController<T: UIViewController>(id: String) -> T {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)

        return storyboard.instantiateViewController(withIdentifier: id) as! T
    }

    private func getThemes() -> Themes {
        let result = Themes(firstColor: .green,
                            andSecondColor: .blue,
                            andThirdColor: .yellow)

        return result
    }
}

extension ConversationsListViewController: ​ThemesViewControllerDelegate {
    func themesViewController(_ controller: ThemesViewController, didSelectTheme selectedTheme: UIColor) {
        updateAppereance(with: selectedTheme)
        logThemeChanging(selectedTheme: selectedTheme)
    }

    private func updateAppereance(with color: UIColor) {
        themeManager.setTheme(color)
    }

    private func logThemeChanging(selectedTheme: UIColor) {
        print("theme color changed to \(selectedTheme)")
    }
}

extension ConversationsListViewController: UITableViewDelegate {
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let model: ConversationCellViewModel
        if indexPath.section == 0 {
            model = activeConversations[indexPath.row]
        } else {
            model = historyConversations[indexPath.row]
        }
        performSegue(withIdentifier: showDialogSegue, sender: model)
    }
}

extension ConversationsListViewController: UITableViewDataSource {
    func numberOfSections(in tableView: UITableView) -> Int {
        return sections.count
    }

    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sections[section]
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return activeConversations.count
        }

        return historyConversations.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "chatCell", for: indexPath) as! ConversationCell
        let model = viewModel(for: indexPath)
        cell.setup(with: model)

        return cell
    }

    func viewModel(for indexPath: IndexPath) -> ConversationCellViewModel {
        if indexPath.section == 0 {
            return activeConversations[indexPath.row]
        }
        return historyConversations[indexPath.row]
    }
}
