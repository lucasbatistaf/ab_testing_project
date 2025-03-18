SELECT
    DATE(time) AS experiment_date,
    site_version,
    COUNT(user_id) AS total_users,
    SUM(CASE WHEN title = 'order' THEN 1 ELSE 0 END) AS count_order
FROM
    ab_testing
WHERE
    date(time) BETWEEN '2019-01-01' AND '2019-01-14'
    AND product NOT IN ('company')
GROUP BY
    time, site_version