-- Напишите запросы, которые выводят следующую информацию:
-- 1. Показать минимальную среднюю оценку по всем студентам
SELECT MIN([avg_mark]) AS min_avg_mark
FROM [marks].[dbo].[marks];

-- 2. Показать максимальную среднюю оценку по всем студентам
SELECT MAX([avg_mark]) AS max_avg_mark
FROM [marks].[dbo].[marks];

-- 3. Показать статистику городов студентов. Нужно отображать название города и количество студентов из этого города
SELECT [city], COUNT(*) AS student_count
FROM [marks].[dbo].[marks]
GROUP BY [city];

-- 4. Показать статистику стран студентов. Нужно отображать название страны и количество студентов из этой страны
SELECT [country], COUNT(*) AS student_count
FROM [marks].[dbo].[marks]
GROUP BY [country];

-- 5. Показать количество студентов, у которых минимальная средняя оценка по математике
SELECT COUNT(*) AS student_count
FROM [marks].[dbo].[marks]
WHERE [min_avg_mark_discipline] = 'Mathematics';

-- 6. Показать количество студентов, у которых максимальная средняя оценка по математике
SELECT COUNT(*) AS student_count
FROM [marks].[dbo].[marks]
WHERE [max_avg_mark_discipline] = 'Mathematics';

-- 7. Показать количество студентов в каждой группе
SELECT [group_name], COUNT(*) AS student_count
FROM [marks].[dbo].[marks]
GROUP BY [group_name];

-- 8. Показать среднюю оценку по группе
SELECT [group_name], AVG([avg_mark]) AS avg_group_mark
FROM [marks].[dbo].[marks]
GROUP BY [group_name];