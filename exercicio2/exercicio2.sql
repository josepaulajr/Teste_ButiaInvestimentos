/* QUERY SOLUÇÃO */
SELECT DATE_FORMAT(B.date, "%d/%m/%Y") as Date, A.close
FROM BenchmarkPrice B 
	LEFT JOIN  AssetPrice A
	ON B.date = A.date
ORDER BY B.date;