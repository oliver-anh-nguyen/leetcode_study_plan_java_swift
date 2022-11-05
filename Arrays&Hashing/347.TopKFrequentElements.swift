//https://leetcode.com/problems/top-k-frequent-elements/
// sort: nlogn
// maxheap: klogn
// bucket sort: nlogn
// improve bucket sort: O(n)
// Space: O(n)
class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var bucket:[[Int]] = Array(repeating: [], count: nums.count+1)
        var dict = [Int: Int]()
        for i in nums {
            dict[i, default: 0] += 1
        }
        for (key, value) in dict {
            bucket[value].append(key)
        }
        var ans = [Int]()
        for i in stride(from: bucket.count-1, to: 0, by: -1) {
            for j in bucket[i] {
                ans.append(j)
                if ans.count == k {
                    return ans
                }
            }
        }
        return ans
        
    }
}