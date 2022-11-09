//https://leetcode.com/problems/best-time-to-buy-and-sell-stock/
// Time: O(n)
// Space: O(1)
class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var l = 0 
        var r = 1
        var ans = 0
        while r < prices.count {
            if prices[l] < prices[r] {
                let profit = prices[r] - prices[l]
                ans = max(ans, profit)
            } else {
                l = r
            }
            r += 1
        }
        return ans
    }
}