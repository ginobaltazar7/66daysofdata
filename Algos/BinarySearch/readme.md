# Binary Search 

Think of the concept of Binary Search as repeatedly dividing some data input like a list of numbers or elements of length n, in half (hence the term 'binary'), and measuring the number of times before divisions converge to single element list during a search process.

Contrast binary search to a linear search manner where one would have to compare if a preceding element was higher or lower than a succeeding element.

By dividing a list into two iteratively, and starting comparisons with the middle element of the resulting divided list, the search is made more efficient because half of the input is eliminated.

If there were for example, 1,024 numbers in a list, then a linear search would require just as many 1,024 comparisons versus a binary search methodically dividing a list would only require 10 steps.  The latter intuitively is thus more efficient.

Efficiency is measured in computer science using the 'Big O' or O(n) notation which really means running time.  The linear search's efficiency is expressed as O(n) which means its complexity increases linearly as the number of elements 'n' increases.

The Binary search's efficiency on the other hand is expressed as O(log n) which means its complexity increases more modestly or grows more slowly as the number of elements increases.

Read more >>

https://towardsdatascience.com/logarithms-exponents-in-complexity-analysis-b8071979e847#:~:text=Logarithmic%20time%20complexity%20log(n,Example%3A%20binary%20search


