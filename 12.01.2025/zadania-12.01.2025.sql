select tabela1.kolumna1, tabela2.kolumna2 from tabela1 join tabela2 on tabela1.id = tabela2.id

-- wyświetl zamówienia, które nie mają przypisanej żadnej książki
select ksiazki.tytul, zamowienia.status from ksiazki join zamowienia on ksiazki.idksiazki = zamowienia.idksiazki

select k.tytul, z.status from ksiazki k join zamowienia z on k.idksiazki = z.idksiazki

-- wyświetl tytuł książki, imię i nazwisko klienta oraz datę zamówienia
select ksiazki.tytul, klienci.imie, klienci.nazwisko, zamowienia.data from zamowienia join  klienci on klienci.idklienta= zamowienia.idklienta join ksiazki on ksiazki.idksiazki = zamowienia.idksiazki

-- wybierz tytuł książki, cenę i nazwisko autora
select * from ksiazki where cena > 50; 

-- wybierz autora którego książkę kupił klient z numerem id < 6 i podaj datę zakupu
SELECT ksiazki.imieautora, ksiazki.nazwiskoautora, ksiazki.tytul, zamowienia.data FROM ksiazki JOIN zamowienia z ON ksiazki.idksiazki = zamowienia.idksiazki WHERE zamowienia.idklienta < 6;
select ksiazki.imieautora, ksiazki.nazwiskoautora, zamowienia.data where zamowienia.idklienta < 6;

-- Wyświetl tytuły książek, które były zamawiane więcej niż jeden raz.
SELECT ksiazki.tytul FROM ksiazki JOIN zamowienia ON ksiazki.idksiazki = zamowienia.idksiazki GROUP BY ksiazki.tytul HAVING COUNT(zamowienia.idksiazki) > 1;

-- Wyświetl wszystkich klientów, którzy nie dokonali żadnych zamówień.
select * from zamowienia where status = 'oczekiwanie'
SELECT c.imie, c.nazwisko, c.miejscowosc FROM klienci c LEFT JOIN zamowienia z ON c.idklienta = z.idklienta WHERE z.idklienta IS NULL;

-- Pokaż klientów, którzy zamówili książki o cenie powyżej 50 zł.
select klienci.imie, klienci.nazwisko, klienci.miejscowosc from klienci join ksiazki ON klienci.idklienta where cena > 50;
SELECT klienci.imie, klienci.nazwisko, klienci.miejscowosc FROM klienci JOIN zamowienia ON klienci.idklienta = zamowienia.idklienta JOIN ksiazki
ON zamowienia.idksiazki = ksiazki.idksiazki WHERE ksiazki.cena > 50;

-- Wyświetl książki i liczbę zamówień, posortowane malejąco.
select ksiazki.tytul, zamowienia.idksiazki from zamowienia join ksiazki on ksiazki.idksiazki 

