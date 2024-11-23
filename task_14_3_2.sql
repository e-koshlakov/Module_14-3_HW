-- Напишите запросы, которые выводят следующую информацию:
-- 1. Показать ФИО всех студентов с минимальной оценкой в указанном диапазоне
SELECT [full_name]
FROM [marks].[dbo].[marks]
WHERE [min_avg_mark_discipline] BETWEEN 60 AND 80;

-- 2. Показать информацию о студентах, которым исполнилось 20 лет
SELECT *
FROM [marks].[dbo].[marks]
WHERE DATEDIFF(year, [birh_date], GETDATE()) = 20;

-- 3. Показать информацию о студентах с возрастом в указанном диапазоне
SELECT *
FROM [marks].[dbo].[marks]
WHERE DATEDIFF(year, [birh_date], GETDATE()) BETWEEN 30 AND 50;

-- 4. Показать информацию о студентах с конкретным именем. Например, показать студентов с именем Борис
SELECT *
FROM [marks].[dbo].[marks]
WHERE [full_name] LIKE 'Jane%';

-- 5. Показать информацию о студентах, в чьем номере встречаются три семерки
SELECT *
FROM [marks].[dbo].[marks]
WHERE [phone] LIKE '%777%';

-- 6. Показать электронные адреса студентов, начинающихся с конкретной буквы
SELECT [email]
FROM [marks].[dbo].[marks]
WHERE [email] LIKE 'A%';