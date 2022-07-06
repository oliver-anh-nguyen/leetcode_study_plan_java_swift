// https://leetcode.com/problems/peak-index-in-a-mountain-array
class Solution {
    public int peakIndexInMountainArray(int[] arr) {
        int l = 1;
        int r = arr.length - 2;
        while (l <= r) {
            int m = l + (r-l)/2;
            if (arr[m] > arr[m+1] && arr[m] > arr[m-1]) {
                return m;
            }
            if (arr[m-1] > arr[m]) {
                r = m - 1;
            } else {
                l = m + 1;
            }
        }
        return -1;
    }
}
