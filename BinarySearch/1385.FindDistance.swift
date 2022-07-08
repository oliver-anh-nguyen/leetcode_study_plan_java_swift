// https://leetcode.com/problems/find-the-distance-value-between-two-arrays/

// m = arr1.count
// n = arr2.count
// Brute force: O(n*m)
class Solution {
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var count = arr1.count
        for i in 0..<arr1.count {
            for j in 0..<arr2.count {
                if abs(arr1[i] - arr2[j]) <= d {
                    count -= 1
                    break
                }
            }
        }
        return count
    }
}

// Binary Search: O(log(n)(m * n))
class Solution {
    // |arr1[i]-arr2[j]| <= d  equals arr1[1]-d <= arr2[j] <= arr1[i]+d
    func findTheDistanceValue(_ arr1: [Int], _ arr2: [Int], _ d: Int) -> Int {
        var arrTmp = arr2.sorted()
        var ans = 0
        for i in arr1 {
            if binarySearch(arrTmp, i-d, i+d) {
                ans += 1
            }
        }
        return ans
    }
    
    func binarySearch(_ arr:[Int], _ from: Int, _ to: Int) -> Bool {
        var l = 0
        var r = arr.count - 1
        while l <= r {
            var m = l + (r-l)/2
            if arr[m] >= from && arr[m] <= to {
                print("false")
                return false
            }
            if arr[m] >= from {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        print("true")
        return true
    }
}

