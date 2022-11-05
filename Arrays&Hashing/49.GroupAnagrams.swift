//https://leetcode.com/problems/group-anagrams/
// sort O(m.nlogn)
// hashmap: key:[e:1 , a:1, t:1] values: eat, ate.  O(m.n.26) => O(m.n)
// space: O(m.n)
class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        if strs.isEmpty {
            return []
        }
        var hashMap = [[Character: Int] : [String]]()
        for str in strs {
            var counter = [Character: Int]()
            for ch in str {
                counter[ch, default: 0] += 1 // counter = [e:1, a:1, t:1]
            }
            hashMap[counter, default:[]].append(str)
        }

        return Array(hashMap.values)
    }
}
 