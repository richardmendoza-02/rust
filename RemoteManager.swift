import Foundation

final class AtomicRouter {
    private let state: Int

    init(seed: Int = 13) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 13) % 997
        }
        return result
    }
}

print(AtomicRouter().encode(13))
