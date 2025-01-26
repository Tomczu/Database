use MyDatabase;

-- 1. Wyświetl wszystkich użytkowników wraz z ich zamówieniami.

	select * from Uzytkownicy join zamowienia on Uzytkownicy.id = zamowienia.uzytkownik_id;

-- 2. Wyświetl nazwę produktu, datę zamówienia, ilość zamówień.

	select produkty.nazwa, Zamowienia.data_zamowienia, Zamowienia.ilosc from produkty join zamowienia on produkty.id = zamowienia.produkt_id;

-- 3. Wyświetl imię i nazwisko klientów, którzy zamówili produkty z kategorii 'Elektronika'.

	select uzytkownicy.imie, uzytkownicy.nazwisko, produkty.kategoria from uzytkownicy join produkty on uzytkownicy.id = produkty.id;

-- 4. Uzyskaj nazwę produktu, datę zamowienia oraz ilość.

	select produkty.nazwa, Zamowienia.data_zamowienia, Zamowienia.ilosc from produkty join zamowienia on produkty.id = zamowienia.id;

-- 5. Wyświetl pełną listę zamówień, uwzględniając tylko tych użytkowników, którzy dokonali zamówienia.

	select * from zamowienia where uzytkownik_id in( select id from uzytkownicy);

-- 6. Wyświetl zamówione produkty oraz ich cenę.

	select zamowienia.produkt_id, produkty.nazwa, produkty.cena from zamowienia join produkty on produkty.id = zamowienia.produkt_id;

-- 7. Wyświetl imię, nazwisko oraz produkty, które zostały zamówione.

	select uzytkownicy.imie, uzytkownicy.nazwisko, zamowienia.uzytkownik_id, produkty.nazwa from uzytkownicy join zamowienia on uzytkownicy.id = zamowienia.uzytkownik_id join produkty on produkty.id = zamowienia.produkt_id;

-- 8. Połącz tabelę Zamowienia i Uzytkownicy, aby wyświetlić użytkowników oraz daty ich zamówień.

	select uzytkownicy.*, zamowienia.data_zamowienia from uzytkownicy join zamowienia on Zamowienia.uzytkownik_id = uzytkownicy.id;

-- 9. Wyświetl użytkowników oraz produkty, które zamówili, posortowane po dacie zamówienia.

	select uzytkownicy.imie, uzytkownicy.nazwisko, produkty.nazwa, zamowienia.data_zamowienia from uzytkownicy join produkty on uzytkownicy.id = produkty.id join zamowienia on zamowienia.uzytkownik_id = uzytkownicy.id order by zamowienia.data_zamowienia asc;

-- 10. Połącz tabelę Produkty i Zamowienia, aby uzyskać listę produktów zamówionych w dniu 1 stycznia 2025.

	select zamowienia.data_zamowienia, produkty.nazwa from zamowienia join produkty on zamowienia.produkt_id = produkty.id where zamowienia.data_zamowienia = '2025-01-01';

-- 11. Połącz tabelę Uzytkownicy i Produkty, aby wyświetlić imiona i nazwiska użytkowników oraz produkty, które zamówili w kategorii 'Meble'.

	select uzytkownicy.imie, uzytkownicy.nazwisko, produkty.nazwa from uzytkownicy join produkty on uzytkownicy.id = zamowienia.uzytkownik_id join produkty on produkty.id = zamownienia.produkt_id;

-- 12. Połącz tabelę Produkty i Zamowienia, aby uzyskać produkty, które zostały zamówione więcej niż 3 razy.


-- 13. Wyświetl imię, nazwisko użytkowników, którzy złożyli zamówienie w 2025 roku.



-- 14. Wyświetl nazwę produktu, datę zamówienia oraz ilość dla produktów z kategorii 'Dom'.



-- 15.Wyświetl imię, nazwisko oraz nazwy produktów dla użytkowników, którzy mają więcej niż 30 lat.



-- 16. Wyświetl nazwy produktów i ilość, których cena jest wyższa niż 1000 zł

