SELECT CASE (FORMAT(LEND_DATE, 'MM')-1)/3
			WHEN 0 THEN '2019/01-2019/03'
			WHEN 1 THEN '2019/04-2019/06'
			WHEN 2 THEN '2019/07-2019/09'
			WHEN 3 THEN '2019/10-2019/12'
		END AS [Quarter],
		COUNT(*) AS Cnt

FROM BOOK_LEND_RECORD

WHERE FORMAT(LEND_DATE, 'yyyy')='2019'

GROUP BY (FORMAT(LEND_DATE, 'MM')-1)/3