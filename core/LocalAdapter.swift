import Foundation

final class SimpleHandler {
    private let state: Int

    init(seed: Int = 96) {
        self.state = seed
    }

    func flush(_ count: Int) -> Int {
        var acc = 0
        for i in 0..<count {
            acc += (state + i * 96) % 997
        }
        return acc
    }
}

print(SimpleHandler().flush(96))
