// https://leetcode.com/problems/rotate-array/
class Solution {
    public void rotate(int[] nums, int k) {
        int n = nums.length;
        int l = 0;
        int r = n - 1;
        int[] result = new int[n];
        
        for (int i = (k % n) - 1; i >= 0; i--) {
            result[i] = nums[r--];
        }
        
        for (int i = k % n; i < n; i++) {
            result[i] = nums[l++];
        }
        
        for (int i = 0; i < n; i++) {
            nums[i] = result[i];
        }
    }
}