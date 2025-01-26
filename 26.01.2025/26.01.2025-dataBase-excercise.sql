-- 1. Wyświetl wszystkie dane użytkowników.
	
	select * from users;
	
-- 2. Wyświetl tylko imiona i nazwiska użytkowników.
	
	select FirstName, LastName from users;
	
-- 3. Wyświetl użytkowników, którzy mają więcej niż 30 lat.
	
	select * from users where Age > 30;
	
-- 4. Wyświetl użytkowników, których imię zaczyna się na "J".
	
	select * from users where FirstName like 'J%';
	
-- 5. Wyświetl użytkowników, których nazwisko kończy się na "son".
	
	select * from users where LastName like '%son'
	
-- 6. Znajdź użytkowników w wieku 28 lat.
	
	select * from users where Age = 28;
		
-- 7. Znajdź użytkowników w wieku pomiędzy 25 a 35 lat.
	
	select * from users where Age between 25 and 35;
	
-- 8. Wyświetl użytkowników, którzy mają mniej niż 25 lat lub więcej niż 35 lat.
	
	select * from users where Age < 25 or Age > 35;
	
-- 9. Wyświetl użytkowników, którzy mają dokładnie 22 lub 27 lat.
	
	select * from users where Age = 22 or Age = 27;
	
-- 10. Posortuj użytkowników według wieku rosnąco.
	
	select * from users order by Age asc;
	
-- 11. Posortuj użytkowników według wieku malejąco.
	
	select * from users order by Age desc;

-- 12. Posortuj użytkowników według nazwiska, a następnie według imienia.
	
	select * from users order by LastName, FirstName;
	
-- 13. Policz wszystkich użytkowników w tabeli.

	select count(*) from users;

-- 14. Policz, ilu użytkowników ma więcej niż 30 lat.

	select count(*) from users where Age > 30;

-- 15. Znajdź średni wiek użytkowników.

	select avg(Age) from users;

-- 16. Znajdź maksymalny wiek użytkownika.

	select max(Age) from users;

-- 17. Znajdź sumę wszystkich wieków użytkowników.

	select sum(Age) from users;

-- 18. Znajdź liczbę użytkowników w każdej grupie wiekowej większej niż 30 lat.

	select count(*) from users where Age > 30;

-- 19. Pogrupuj użytkowników według nazwiska i znajdź, ilu użytkowników ma takie samo nazwisko.

select LastName, count(*) as NumberOfUsers from Users group by LastName order by NumberOfUsers desc;