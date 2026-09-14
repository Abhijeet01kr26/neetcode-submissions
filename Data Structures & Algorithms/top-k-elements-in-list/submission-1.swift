class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var seen = [Int: Int]()

        for num in nums {
            seen[num, default:0] += 1
        }
        let sortedDict = seen
        .sorted{$0.value > $1.value}
        .prefix(k)
        .map {$0.key}
        return sortedDict
    }
}
