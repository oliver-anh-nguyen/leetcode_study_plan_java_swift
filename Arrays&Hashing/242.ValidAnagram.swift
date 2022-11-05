//https://leetcode.com/problems/valid-anagram/
// Hash: O(n), Space: O(n), n = s + t
// Sort: O(nlogn), Space: O(1) or O(n) depend on build-in sort algorithm
class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {  
        if s.count != t.count {
            return false
        }      
        var dict1 = [Character: Int]()
        var dict2 = [Character: Int]()
        for i in s {
            dict1[i, default: 0] += 1
        }
        for s in t {
            dict2[s, default: 0] += 1
        }
        return dict1 == dict2
    }
}
