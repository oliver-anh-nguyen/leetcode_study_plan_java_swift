// https://leetcode.com/problems/two-sum-ii-input-array-is-sorted/
class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var result:[Int] = []
        let n = numbers.count
        var l = 0
        var r = n - 1
        while (l != r) {
            var sum = numbers[l] + numbers[r]
            if (sum == target) {
                result.append(l+1)
                result.append(r+1)
                break
            } else if (sum < target) {
                l = l + 1
            } else {
                r = r - 1
            }
        }
        return result
    }
}
