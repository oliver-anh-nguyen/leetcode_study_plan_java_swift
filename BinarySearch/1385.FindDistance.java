// https://leetcode.com/problems/find-the-distance-value-between-two-arrays/

// m = arr1.count
// n = arr2.count
// O(n*m)
class Solution {
    public int findTheDistanceValue(int[] arr1, int[] arr2, int d) {
        int count = arr1.length;
        for (int i=0; i<arr1.length; i++) {
            for (int j=0; j<arr2.length; j++) {
                if (Math.abs(arr1[i] - arr2[j]) <= d) {
                    count -= 1;
                    break;
                }
            }
        }
        return count;
    }
}

// Binary Search: O(log(n)(m * n))
class Solution {
    // |arr1[i]-arr2[j]| <= d  equals arr1[1]-d <= arr2[j] <= arr1[i]+d
    public int findTheDistanceValue(int[] arr1, int[] arr2, int d) {
        Arrays.sort(arr2);
        int count = 0;
        for (int i : arr1) {
            if (binarySearch(arr2, i-d, i+d)) {
                count++;
            }
        }
        return count;
    }

    private static boolean binarySearch(int[] arr, int from, int to) {
        int l = 0;
        int r = arr.length - 1;
        while (l <= r) {
            int m = l + (r-l)/2;
            if (arr[m] >= from && arr[m] <= to) {
                return false;
            }
            if (arr[m] >= from) {
                r = m - 1;
            } else {
                l = m + 1;
            }
        }
        return true;
    }
}
