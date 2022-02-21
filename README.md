You are given an array prices where prices[i] is the price of a given stock on the ith day + 1 (so that we consider the 0th index day one).  

You want to maximize your profit by choosing a single day to buy one stock and choosing a different day in the future to sell that stock.  
Return the maximum profit you can achieve from this transaction.  
If you cannot achieve any profit, return 0.  

Write a function that receives the array of prices, and outputs the maximum profit.  
You may write this function in any language you prefer, preference is in JS or Ruby.  
You can write the code locally in your preferred editor, or you can use an online compiler such as: https://onecompiler.com/ruby  
Or   
https://onecompiler.com/javascript

After writing a function that works for the 3 examples below please explain how you would normally test this function.
Then ensure the constraints are handled in the function.

**Example 1:**  

Input: prices = `[7,1,5,3,6,4]`  
Output: 5   
Explanation: Buy on day 2 (price = 1) and sell on day 5 (price = 6), profit = 6-1 = 5   
 **Note** that buying on day 2 and selling on day 1 is not allowed because you must buy before you sell.  

**Example 2:**  

Input: prices = `[7,6,4,3,1]`  
Output: 0  
Explanation: In this case, no transactions are done and the max profit = 0  

**Example 3:**  

Input: prices = `[7,9,15,1,6,5]`  
Output: 8  
Explaination: The greatest different in price occurs between 7 and 15, creating the greatest amount of profit. It is not always the minimum/lowest value in the array that creates the greatest difference.

**Constraints:**  
```
prices.length >= 1
prices.length <= 105

prices[i] >= 0
prices[i] <= 200
```

If a constraint is not met, return a response that has some basic information why the array could not be processed.