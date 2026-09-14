class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var grp = [String: [String]]()
        for str in strs {
            let key = String(str.sorted())
            grp[key, default: []].append(str)

        }
        return Array(grp.values)
    }
}
