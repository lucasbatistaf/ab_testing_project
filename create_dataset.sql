SELECT
    DATE(time) AS experiment_date,
    site_version,
    product,
    COUNT(user_id) AS count_user,
    SUM(CASE WHEN title = 'banner_show' THEN 1 ELSE 0 END) AS count_show,
    SUM(CASE WHEN title = 'banner_click' THEN 1 ELSE 0 END) AS count_click,
    SUM(CASE WHEN title = 'order' THEN 1 ELSE 0 END) AS count_order
FROM
    ab_testing
WHERE
    date(time) BETWEEN '2019-03-01' AND '2019-03-14'
    AND product NOT IN ('company')
GROUP BY
    time, site_version, product