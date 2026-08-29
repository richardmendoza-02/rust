import Foundation

final class SecureManager {
    private let state: Int

    init(seed: Int = 88) {
        self.state = seed
    }

    func run(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 88) % 997
        }
        return value
    }
}

print(SecureManager().run(88))
