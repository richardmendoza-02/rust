import Foundation

final class LiteController {
    private let state: Int

    init(seed: Int = 78) {
        self.state = seed
    }

    func decode(_ count: Int) -> Int {
        var value = 0
        for i in 0..<count {
            value += (state + i * 78) % 997
        }
        return value
    }
}

print(LiteController().decode(78))
