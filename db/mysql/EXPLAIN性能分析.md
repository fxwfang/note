## EXPLAIN性能分析

```sql
EXPLAIN SELECT *
FROM (
	SELECT curr.gameId AS gameId, curr.currNum AS onlineNum
		, ROUND((pre.prevNum - curr.currNum) / pre.prevNum * 100) AS percentDecrease
	FROM (
		SELECT gameId, onlineNum AS currNum
		FROM (
			SELECT *
			FROM com_online
			WHERE gameId = 2
				AND time LIKE '2018-08-15 21:3%'
			ORDER BY onlineNum
		) a
		GROUP BY gameId
	) curr, (
			SELECT gameId, onlineNum AS prevNum
			FROM (
				SELECT *
				FROM com_online
				WHERE time LIKE '2018-08-08 21:3%'
				ORDER BY onlineNum
			) b
			GROUP BY gameId
		) pre
	WHERE curr.gameId = pre.gameId
		AND (pre.prevNum - curr.currNum) / pre.prevNum * 100 > 20
	UNION
	SELECT curr.gameId AS gameId, curr.currNum AS onlineNum
		, ROUND((pre.prevNum - curr.currNum) / pre.prevNum * 100) AS percentDecrease
	FROM (
		SELECT gameId, onlineNum AS currNum
		FROM (
			SELECT *
			FROM com_online
			WHERE gameId = 2
				AND time LIKE '2018-08-15 21:3%'
			ORDER BY onlineNum
		) a
		GROUP BY gameId
	) curr, (
			SELECT gameId, onlineNum AS prevNum
			FROM (
				SELECT *
				FROM com_online
				WHERE time LIKE '2018-08-14 21:3%'
				ORDER BY onlineNum
			) b
			GROUP BY gameId
		) pre
	WHERE curr.gameId = pre.gameId
		AND (pre.prevNum - curr.currNum) / pre.prevNum * 100 > 10
	UNION
	SELECT gameId, onlineNum, NULL AS percentDecrease
	FROM com_online
	WHERE onlineNum < 200
		AND time LIKE '2018-08-15 21:3%'
		AND gameId = 2
	GROUP BY gameId
) u
GROUP BY gameId

```

![1534340859445](C:\Users\User\AppData\Local\Temp\1534340859445.png)