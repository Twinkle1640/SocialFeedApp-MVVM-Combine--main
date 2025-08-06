import Foundation

enum PostType {
    case text, image, video
}

struct Post: Identifiable {
    let id: UUID
    let user: User
    let content: String
    let imageUrl: URL?
    let videoUrl: URL?
    let type: PostType
}
