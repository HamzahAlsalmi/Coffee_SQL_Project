/* =========================
   INSERT LOCATIONS
   ========================= */

INSERT INTO locations (city_id, city, country) VALUES
(1, 'Los Angeles', 'United States'),
(2, 'New York', 'United States'),
(3, 'London', 'United Kingdom');


/* =========================
   INSERT SHOPS
   ========================= */

INSERT INTO shops (coffeeshop_id, coffeeshop_name, city_id) VALUES
(1, 'Common Grounds', 1),
(2, 'Early Rise', 2),
(3, 'Ancient Bean', 3),
(4, 'Urban Grind', 1),
(5, 'Trembling Cup', 2);


/* =========================
   INSERT EMPLOYEES
   Sample employee records distributed across all shops
   ========================= */

INSERT INTO employees
(employee_id, first_name, last_name, email, hire_date, gender, salary, coffeeshop_id)
VALUES
(900101, 'Adam', 'Lewis', 'adam.lewis@coffee.com', '2019-02-14', 'M', 42000, 1),
(900102, 'Sara', 'Nguyen', 'sara.nguyen@coffee.com', '2020-06-18', 'F', 48000, 1),
(900103, 'Omar', 'Hassan', 'omar.hassan@coffee.com', '2018-09-03', 'M', 52000, 2),
(900104, 'Lina', 'Patel', 'lina.patel@coffee.com', '2021-01-11', 'F', 45000, 2),
(900105, 'James', 'Carter', 'james.carter@coffee.com', '2017-11-29', 'M', 61000, 3),
(900106, 'Emily', 'Stone', 'emily.stone@coffee.com', '2019-07-04', 'F', 56000, 3),
(900107, 'Carlos', 'Mendez', 'carlos.mendez@coffee.com', '2016-05-21', 'M', 49000, 4),
(900108, 'Ana', 'Silva', 'ana.silva@coffee.com', '2022-03-08', 'F', 43000, 4),
(900109, 'David', 'Kim', 'david.kim@coffee.com', '2018-12-15', 'M', 57000, 5),
(900110, 'Nina', 'Volkov', 'nina.volkov@coffee.com', '2020-10-01', 'F', 52000, 5),

(900111, 'Leo', 'Martin', 'leo.martin@coffee.com', '2019-04-22', 'M', 46000, 1),
(900112, 'Fatima', 'Ali', 'fatima.ali@coffee.com', '2021-06-09', 'F', 44000, 1),
(900113, 'Ryan', 'Olsen', 'ryan.olsen@coffee.com', '2017-08-30', 'M', 60000, 2),
(900114, 'Yara', 'Khaled', 'yara.khaled@coffee.com', '2018-02-12', 'F', 51000, 2),
(900115, 'Tom', 'Bennett', 'tom.bennett@coffee.com', '2022-05-17', 'M', 39000, 3),
(900116, 'Claire', 'Dupont', 'claire.dupont@coffee.com', '2019-09-27', 'F', 55000, 3),
(900117, 'Mateo', 'Rojas', 'mateo.rojas@coffee.com', '2016-01-19', 'M', 62000, 4),
(900118, 'Sofia', 'Rossi', 'sofia.rossi@coffee.com', '2020-11-05', 'F', 47000, 4),
(900119, 'Ethan', 'Moore', 'ethan.moore@coffee.com', '2018-07-13', 'M', 58000, 5),
(900120, 'Hana', 'Ito', 'hana.ito@coffee.com', '2021-04-26', 'F', 45000, 5),

(900121, 'Victor', 'Lopez', 'victor.lopez@coffee.com', '2017-03-14', 'M', 61000, 1),
(900122, 'Aisha', 'Mohamed', 'aisha.mohamed@coffee.com', '2019-12-01', 'F', 52000, 1),
(900123, 'Ben', 'Turner', 'ben.turner@coffee.com', '2022-01-10', 'M', 41000, 2),
(900124, 'Lucia', 'Fernandez', 'lucia.fernandez@coffee.com', '2018-06-28', 'F', 56000, 2),
(900125, 'Noah', 'Price', 'noah.price@coffee.com', '2016-09-09', 'M', 63000, 3),
(900126, 'Maya', 'Singh', 'maya.singh@coffee.com', '2020-08-17', 'F', 50000, 3),
(900127, 'Alex', 'Petrov', 'alex.petrov@coffee.com', '2017-10-05', 'M', 59000, 4),
(900128, 'Elena', 'Kuznetsova', 'elena.k@coffee.com', '2021-02-20', 'F', 48000, 4),
(900129, 'Sam', 'Hughes', 'sam.hughes@coffee.com', '2019-05-16', 'M', 54000, 5),
(900130, 'Rina', 'Choi', 'rina.choi@coffee.com', '2022-09-12', 'F', 42000, 5),

(900131, 'Daniel', 'Foster', 'daniel.foster@coffee.com', '2018-01-07', 'M', 60000, 1),
(900132, 'Isabel', 'Moreno', 'isabel.moreno@coffee.com', '2020-04-03', 'F', 49000, 1),
(900133, 'Mark', 'Dawson', 'mark.dawson@coffee.com', '2017-06-11', 'M', 62000, 2),
(900134, 'Zara', 'Khan', 'zara.khan@coffee.com', '2021-07-29', 'F', 46000, 2),
(900135, 'Paul', 'Reed', 'paul.reed@coffee.com', '2019-10-18', 'M', 55000, 3),
(900136, 'Talia', 'Bronstein', 'talia.b@coffee.com', '2022-02-14', 'F', 43000, 3),
(900137, 'Ivan', 'Novak', 'ivan.novak@coffee.com', '2016-12-06', 'M', 64000, 4),
(900138, 'Keiko', 'Yamamoto', 'keiko.y@coffee.com', '2020-03-21', 'F', 51000, 4),
(900139, 'Chris', 'Allen', 'chris.allen@coffee.com', '2018-08-25', 'M', 57000, 5),
(900140, 'Nour', 'Saleh', 'nour.saleh@coffee.com', '2021-11-30', 'F', 45000, 5),

(900141, 'Julian', 'Park', 'julian.park@coffee.com', '2019-06-04', 'M', 53000, 2),
(900142, 'Amira', 'Said', 'amira.said@coffee.com', '2022-10-07', 'F', 41000, 3),
(900143, 'George', 'White', 'george.white@coffee.com', '2017-04-15', 'M', 60000, 4),
(900144, 'Lena', 'Meyer', 'lena.meyer@coffee.com', '2020-12-19', 'F', 49500, 5);


/* =========================
   INSERT SUPPLIERS
   ========================= */

INSERT INTO suppliers (coffeeshop_id, supplier_name, coffee_type) VALUES
(1, 'Beans and Barley', 'Arabica'),
(1, 'Cool Beans', 'Robusta'),
(2, 'Vanilla Bean', 'Liberica'),
(2, 'Beans and Barley', 'Arabica'),
(3, 'Bean Me Up', 'Excelsa'),
(3, 'Cool Beans', 'Robusta'),
(4, 'Vanilla Bean', 'Liberica'),
(4, 'Bean Me Up', 'Excelsa'),
(5, 'Beans and Barley', 'Arabica'),
(5, 'Vanilla Bean', 'Liberica');
