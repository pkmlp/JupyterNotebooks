--
-- Erstellen der Tabelle PriceHistory und erfassen einiger Testfälle
--
--

DROP DATABASE IF EXISTS DataVisualisation;
CREATE DATABASE IF NOT EXISTS DataVisualisation;
USE DataVisualisation;
DROP TABLE IF EXISTS PriceHistory;
CREATE TABLE PriceHistory(
    ChangeID       INT AUTO_INCREMENT PRIMARY KEY,
    ChangeDate     DATETIME, 
    ProductID      INT,
    ProductName    VARCHAR(40), 
    PriceAfter     DECIMAL(10,4),
    PriceBefore    DECIMAL(10,4),
    Who            VARCHAR(50),
    What           VARCHAR(50)
);



INSERT INTO PriceHistory (ChangeDate,
						  ProductID, 
                          ProductName,
                          PriceAfter,
                          PriceBefore,
                          Who,
                          What)
                  VALUES (DATE_SUB(NOW(), INTERVAL -1 MONTH), 
                          1, 
                          "Product A"
                          , 200, 
                          0, 
                          CURRENT_USER, 
                          "INSERT");
INSERT INTO PriceHistory (ChangeDate,
						  ProductID, 
                          ProductName,
                          PriceAfter,
                          PriceBefore,
                          Who,
                          What)
                  VALUES (DATE_SUB(NOW(), INTERVAL -2 MONTH), 
                          1, 
                          "Product A", 
                          300, 
                          200, 
                          CURRENT_USER, 
                          "Update");

--
-- Ganz schön viel Schreibarbeit - würde das gerne abkürzen         
--
-- Bei den folgenden Inserts gebe ich die Attribute die befüllt werden
-- sollen nicht an. Darum wird (würde) in der Tabelle der erste Wert
-- im Insert-Statement in das erste Attribut, der zweite Wert in das 
-- zweite Attribut der Tabelle u.s.w. gefüllt. 
--
-- Damit die Anzahl der Werte im Insert Statement mir der Anzahl der
-- Attribute übereinstimmt, muss ich einen "Dummy-Wert" für das 
-- erste Attribut (PrimeKey der mit Autoincrement gefüllt wird) mitgeben. 
-- Man könnte auch eine beliebige andere Zahl oder NULL angeben. 
-- Wichtig ist lediglich, dass die Anzahl und die Reihenfolge der zu füllenden 
-- Attribute mit der Anzahl der Attribute in der Tabelle übereinstimmt. 
--                          
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -3 MONTH), 1, "Product A", 400, 300, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -4 MONTH), 1, "Product A", 500, 400, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -5 MONTH), 1, "Product A", 600, 500, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -6 MONTH), 1, "Product A", 500, 600, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -7 MONTH), 1, "Product A", 400, 500, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -8 MONTH), 1, "Product A", 500, 400, CURRENT_USER, "Update");

INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -1 MONTH), 1, "Product B", 20, 0, CURRENT_USER, "INSERT");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -2 MONTH), 1, "Product B", 30, 20, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -3 MONTH), 1, "Product B", 40, 30, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -4 MONTH), 1, "Product B", 50, 40, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -5 MONTH), 1, "Product B", 60, 50, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -6 MONTH), 1, "Product B", 50, 60, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -7 MONTH), 1, "Product B", 40, 50, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -8 MONTH), 1, "Product B", 50, 40, CURRENT_USER, "Update");

INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -1 MONTH), 1, "Product C", 50, 0, CURRENT_USER, "INSERT");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -2 MONTH), 1, "Product C", 60, 50, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -3 MONTH), 1, "Product C", 70, 60, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -4 MONTH), 1, "Product C", 80, 70, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -5 MONTH), 1, "Product C", 90, 80, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -6 MONTH), 1, "Product C", 80, 90, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -7 MONTH), 1, "Product C", 70, 80, CURRENT_USER, "Update");
INSERT INTO PriceHistory VALUES (0, DATE_SUB(NOW(), INTERVAL -8 MONTH), 1, "Product C", 80, 70, CURRENT_USER, "Update");
