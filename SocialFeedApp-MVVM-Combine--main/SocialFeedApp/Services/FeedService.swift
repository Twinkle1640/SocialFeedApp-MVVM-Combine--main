import Combine
import Foundation

class FeedService {
    func fetchPosts() -> AnyPublisher<[Post], Error> {
        let posts = MockData.generateMockPosts()
        return Just(posts)
            .delay(for: .seconds(1), scheduler: DispatchQueue.main)
            .setFailureType(to: Error.self)
            .eraseToAnyPublisher()
    }
}
