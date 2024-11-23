-- Напишите запросы, которые выводят следующую информацию:
-- 1. Отображение всей информации из таблицы со студентами и оценками
SELECT *
FROM [marks].[dbo].[marks];

-- 2. Отображение ФИО всех студентов
SELECT [full_name]
FROM [marks].[dbo].[marks];

-- 3. Отображение всех средних оценок
SELECT [avg_mark]
FROM [marks].[dbo].[marks];

-- 4. Показать ФИО всех студентов с минимальной оценкой, больше, чем указанная
SELECT [full_name]
FROM [marks].[dbo].[marks]
WHERE [min_avg_mark_discipline] > 54;

-- 5. Показать страны студентов. Названия стран должны быть уникальными
SELECT DISTINCT [country]
FROM [marks].[dbo].[marks];

-- 6. Показать города студентов. Названия городов должны быть уникальными
SELECT DISTINCT [city]
FROM [marks].[dbo].[marks];

-- 7. Показать названия групп. Названия групп должны быть уникальными
SELECT DISTINCT [group_name]
FROM [marks].[dbo].[marks];

-- 8. Показать название всех предметов с минимальными средними оценками. Названия предметов должны быть уникальными
SELECT DISTINCT [min_avg_mark_discipline]
FROM [marks].[dbo].[marks];