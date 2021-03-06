import Foundation



struct GitHubUser {
    let id: Id
    let name: Name
    let avatar: URL


    struct Name {
        let text: String
    }


    struct Id {
        let text: String
    }
}



extension GitHubUser: Hashable {
    var hashValue: Int {
        return self.id.hashValue
    }


    static func ==(lhs: GitHubUser, rhs: GitHubUser) -> Bool {
        return lhs.id == rhs.id
    }
}



extension GitHubUser.Id: Hashable {
    var hashValue: Int {
        return self.text.hashValue
    }


    public static func ==(lhs: GitHubUser.Id, rhs: GitHubUser.Id) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
}
