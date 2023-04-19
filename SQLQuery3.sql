with hotels AS (
Select
	*
From
	dbo.['2018$']
union
Select
	*
From
	dbo.['2019$']  -- Sum the data from 2018 to 2020
union
Select
	*
From
	dbo.['2020$'])

Select
	*
FROM
	hotels
left join dbo.market_segment$
ON hotels.market_segment = market_segment$.market_segment --Join the two different data base together
left join 
	dbo.meal_cost$ ON meal_cost$.meal =hotels.meal