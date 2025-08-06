import UIKit
import Combine

class FeedViewController: UIViewController {
    private let tableView = UITableView()
    private var viewModel = FeedViewModel()
    private var cancellables = Set<AnyCancellable>()

    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Feed"
        view.backgroundColor = .white
        setupTableView()
        bindViewModel()
        viewModel.fetchPosts()
    }

    private func setupTableView() {
        view.addSubview(tableView)
        tableView.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            tableView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            tableView.bottomAnchor.constraint(equalTo: view.safeAreaLayoutGuide.bottomAnchor),
            tableView.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            tableView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
        ])
        tableView.dataSource = self
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "PostCell")
    }

    private func bindViewModel() {
        viewModel.$posts
            .receive(on: DispatchQueue.main)
            .sink { [weak self] _ in
                self?.tableView.reloadData()
            }
            .store(in: &cancellables)
    }
}

extension FeedViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return viewModel.posts.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let post = viewModel.posts[indexPath.row]
        let cell = tableView.dequeueReusableCell(withIdentifier: "PostCell", for: indexPath)
        var content = UIListContentConfiguration.subtitleCell()
        content.text = post.user.name
        content.secondaryText = post.content
        cell.contentConfiguration = content
        return cell
    }
}
