// https://leetcode.com/problems/rotate-array/
class Solution {
    func rotate(_ nums: inout [Int], _ k: Int) {
        let n = nums.count
        var l = 0
        var r = n - 1
        
        var result = [Int](repeating: 0, count: n)
        
        var i = (k % n) - 1
        while(i >= 0) {
            result[i] = nums[r]
            r = r - 1
            i = i - 1
        }
        
        var j = k % n
        while (j < n) {
            result[j] = nums[l]
            l = l + 1
            j = j + 1
        }
        
        for (index, num) in result.enumerated() {
            nums[index] = result[index]
        }
    }
}
