CREATE TABLE transactions (
    id INT,
    user_id INT,
    amount INT
);

INSERT INTO transactions VALUES
(1,1,5000),
(2,1,6000),
(3,2,3000);

SELECT user_id, SUM(amount) AS total_amount
FROM transactions
GROUP BY user_id
HAVING SUM(amount) > 10000;
