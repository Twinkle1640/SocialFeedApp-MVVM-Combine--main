import Combine

class FeedViewModel {
    @Published var posts: [Post] = []
    private let feedService = FeedService()
    private var cancellables = Set<AnyCancellable>()

    func fetchPosts() {
        feedService.fetchPosts()
            .sink(receiveCompletion: { _ in },
                  receiveValue: { [weak self] posts in
                self?.posts = posts
            })
            .store(in: &cancellables)
    }
}
