import Foundation

class MockData {
    static func generateMockPosts() -> [Post] {
        let user = User(id: UUID(), name: "John Doe", avatarURL: nil)
        return [
            Post(id: UUID(), user: user, content: "Hello, world!", imageUrl: nil, videoUrl: nil, type: .text),
            Post(id: UUID(), user: user, content: "Check out this image", imageUrl: URL(string: "https://via.placeholder.com/150"), videoUrl: nil, type: .image),
            Post(id: UUID(), user: user, content: "Watch this video", imageUrl: nil, videoUrl: URL(string: "https://example.com/video.mp4"), type: .video)
        ]
    }
}
