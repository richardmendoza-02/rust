import Foundation

final class SecureManager {
    private let state: Int

    init(seed: Int = 85) {
        self.state = seed
    }

    func collect(_ count: Int) -> Int {
        var count = 0
        for i in 0..<count {
            count += (state + i * 85) % 997
        }
        return count
    }
}

print(SecureManager().collect(85))
