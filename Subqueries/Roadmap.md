#### Sbqs are nothing but sql queries nested within another queries(which we call as "Outer query or Main query").
#### Sbqs must always be enclosed within parenthesis().

Practicing SQL Subqueries (from Basic to Advanced)
________________________________________
# Level 1: Basic Subqueries in SELECT and WHERE Clauses
## 🧠 Concepts:
•	Scalar subqueries
•	Simple filtering with IN, =, >, etc.
## 🛠 Practice Ideas:
1.	Subquery in WHERE clause to filter results
2.	Subquery in SELECT clause to return a single value
3.	Use IN, NOT IN, =, != with subqueries
## 🧪 Example Exercises:
•	Find books priced above the average book price
•	List customers who placed an order (WHERE customer_id IN (...))
•	Get the most expensive book using MAX(...) in a subquery
________________________________________
# Level 2: Subqueries in FROM Clause (Derived Tables)
## 🧠 Concepts:
•	Using subqueries as inline views or temporary tables
•	Aggregating before joining
## 🛠 Practice Ideas:
1.	Subquery to get total orders per customer, then join to get names
2.	Subquery to get max price per author, then join with books
## 🧪 Example Exercises:
•	Show customers with total orders greater than $50
•	Get book titles with price greater than their author’s average book price
## 💡 Tip:
•	Give subqueries aliases (AS temp) and treat them like real tables
________________________________________
# Level 3: Correlated Subqueries
## 🧠 Concepts:
•	Subquery that refers to outer query’s row
•	Executes once per row in outer query
## 🛠 Practice Ideas:
1.	Find each customer’s most recent order
2.	Find customers who ordered more books than average customer
## 🧪 Example Exercises:
•	List books that are more expensive than any other book by same author
•	Show each customer and their highest total order amount
## ⚠ Caution:
•	These are slower than normal subqueries; practice optimizing them later
________________________________________
# Level 4: Subqueries with EXISTS, NOT EXISTS
## 🧠 Concepts:
•	Use for existence checks
•	Efficient for anti-joins (e.g. customers who haven't ordered)
## 🛠 Practice Ideas:
1.	Customers who have placed orders
2.	Customers who haven’t ordered a specific book
## 🧪 Example Exercises:
•	Show books that have not been ordered
•	Find customers who ordered every book by an author
________________________________________
# Level 5: Nested Subqueries and Multi-level Logic
## 🧠 Concepts:
•	Combining multiple subquery types (e.g., scalar inside correlated)
•	Building reports from complex data relationships
## 🛠 Practice Ideas:
1.	Customers who spent more than any customer from a specific country
2.	Orders where total is above customer's average order
## 🧪 Example Exercises:
•	Customers who ordered more books than any other customer
•	Find books ordered by all customers from USA
