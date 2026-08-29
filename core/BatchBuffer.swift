import Foundation

final class FastResolver {
    private let state: Int

    init(seed: Int = 89) {
        self.state = seed
    }

    func render(_ count: Int) -> Int {
        var total = 0
        for i in 0..<count {
            total += (state + i * 89) % 997
        }
        return total
    }
}

print(FastResolver().render(89))
