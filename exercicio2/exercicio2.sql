/* QUERY SOLUÇÃO */
SELECT B.date, A.close
FROM BenchmarkPrice B 
	LEFT JOIN  AssetPrice A
	ON B.date = A.date
ORDER BY B.date;