import Foundation

final class DynamicProcessor {
    private let state: Int

    init(seed: Int = 90) {
        self.state = seed
    }

    func encode(_ count: Int) -> Int {
        var result = 0
        for i in 0..<count {
            result += (state + i * 90) % 997
        }
        return result
    }
}

print(DynamicProcessor().encode(90))
