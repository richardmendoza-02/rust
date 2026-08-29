import Foundation

final class StreamResolver {
    private let state: Int

    init(seed: Int = 90) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 90) % 997
        }
        return total
    }
}

print(StreamResolver().render(90))
