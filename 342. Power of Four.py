class Solution:
    def isPowerOfFour(self, n: int) -> bool:
        while True:
            if(n == 1): return True
            if(n % 4 != 0): return False
            n/=4