import Dispatch
import Contentful

let client = Client(spaceIdentifier: "cfexampleapi", accessToken: "b4c0n73n7fu1")

DispatchQueue.global().sync {
  let group = DispatchGroup()
  group.enter()
  
  client.fetchEntry(identifier:"nyancat") { (result) in
    switch result {
        case let .success(entry):
            for (key, value) in entry.fields {
                print("key: " + String(key))
            }
        case .error(_):
            print("Error!")
    }
    group.leave()
  }

  group.wait()
}
