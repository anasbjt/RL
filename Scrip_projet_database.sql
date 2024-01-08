CREATE TABLE Theatre (
   ID_theatre VARCHAR(50) PRIMARY KEY,
   Adresse VARCHAR(50),
   Nom VARCHAR(50),
   Capacite INT,
   Budget DECIMAL(10,2)
);

CREATE TABLE Representation (
   ID_representation VARCHAR(50) PRIMARY KEY,
   Titre VARCHAR(50),
   Date_representation DATE,
   Prix DECIMAL(10,2),
   ID_theatre VARCHAR(50) NOT NULL,
   FOREIGN KEY (ID_theatre) REFERENCES Theatre(ID_theatre)
);

CREATE TABLE Ticket (
   ID_ticket VARCHAR(50) PRIMARY KEY,
   Date_ticket DATE,
   Prix DECIMAL(10,2),
   Reduction INT,
   ID_representation VARCHAR(50) NOT NULL,
   ID_theatre VARCHAR(50) NOT NULL,
   FOREIGN KEY (ID_representation) REFERENCES Representation(ID_representation),
   FOREIGN KEY (ID_theatre) REFERENCES Theatre(ID_theatre)
);

CREATE TABLE Recette (
   ID_recette VARCHAR(50) PRIMARY KEY,
   Date_recette DATE,
   Chiffre_affaire DECIMAL(10,2),
   ID_theatre VARCHAR(50) NOT NULL,
   FOREIGN KEY (ID_theatre) REFERENCES Theatre(ID_theatre)
);

CREATE TABLE Theatre_compagnie (
   ID_compagnie VARCHAR(50) PRIMARY KEY,
   Nom VARCHAR(50),
   ID_theatre VARCHAR(50) NOT NULL,
   FOREIGN KEY (ID_theatre) REFERENCES Theatre(ID_theatre)
);

CREATE TABLE Production (
   ID_production VARCHAR(50) PRIMARY KEY,
   Prix DECIMAL(10,2),
   ID_theatre VARCHAR(50) NOT NULL
);

CREATE TABLE Production_Relation (
   ID_production VARCHAR(50) NOT NULL,
   ID_theatre_joue VARCHAR(50) NOT NULL,
   PRIMARY KEY (ID_production, ID_theatre_joue),
   FOREIGN KEY (ID_production) REFERENCES Production(ID_production),
   FOREIGN KEY (ID_theatre_joue) REFERENCES Theatre(ID_theatre)
);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T1', '789 Rue des Artistes', 'Théâtre de la Scène', 600, 110000.00);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T2', '123 Avenue des Arts', 'Théâtre Lumière', 350, 85000.50);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T3', '567 Rue du Théâtre', 'Théâtre des Ombres', 900, 190000.75);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T4', '890 Boulevard du Spectacle', 'Théâtre du Rêve', 500, 95000.25);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T5', '432 Rue de la Scène', 'Théâtre Harmonie', 450, 88000.00);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T6', '654 Avenue du Spectacle', 'Théâtre Phoenix', 550, 105000.50);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T7', '876 Rue des Arts', 'Théâtre Renaissance', 800, 160000.00);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T8', '345 Boulevard des Artistes', 'Théâtre Majestic', 700, 125000.00);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T9', '210 Avenue du Théâtre', 'Théâtre Élégance', 650, 115000.50);

INSERT INTO Theatre (ID_theatre, Adresse, Nom, Capacite, Budget) VALUES ('T10', '789 Rue du Spectacle', 'Théâtre Prestige', 750, 135000.00);

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P1', 6000.00, 'T1');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P2', 5500.50, 'T2');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P3', 5200.75, 'T3');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P4', 6100.00, 'T4');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P5', 5700.50, 'T5');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P6', 5400.75, 'T6');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P7', 6200.00, 'T7');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P8', 5600.50, 'T8');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P9', 5300.75, 'T9');

INSERT INTO Production (ID_production, Prix, ID_theatre) VALUES ('P10', 6400.00, 'T10');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R11', 'La Traviata', TO_DATE('2023-06-20', 'YYYY-MM-DD'), 52.00, 'T1');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R12', 'La Flûte enchantée', TO_DATE('2023-07-25', 'YYYY-MM-DD'), 53.75, 'T2');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R13', 'Carmen', TO_DATE('2023-08-30', 'YYYY-MM-DD'), 49.50, 'T3');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R14', 'La Bohème', TO_DATE('2023-09-05', 'YYYY-MM-DD'), 48.25, 'T4');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R15', 'Don Giovanni', TO_DATE('2023-10-10', 'YYYY-MM-DD'), 51.50, 'T5');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R16', 'Madame Butterfly', TO_DATE('2023-11-15', 'YYYY-MM-DD'), 50.75, 'T6');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R17', 'Rigoletto', TO_DATE('2023-12-20', 'YYYY-MM-DD'), 49.25, 'T7');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R18', 'La Traviata', TO_DATE('2023-06-25', 'YYYY-MM-DD'), 52.00, 'T8');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R19', 'La Flûte enchantée', TO_DATE('2023-07-30', 'YYYY-MM-DD'), 53.75, 'T9');

INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre) VALUES ('R20', 'Carmen', TO_DATE('2023-08-05', 'YYYY-MM-DD'), 49.50, 'T10');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK18', TO_DATE('2023-07-20', 'YYYY-MM-DD'), 54.50, 0, 'R5', 'T2');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK19', TO_DATE('2023-08-25', 'YYYY-MM-DD'), 49.00, 0, 'R6', 'T3');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK20', TO_DATE('2023-09-30', 'YYYY-MM-DD'), 48.25, 0, 'R7', 'T4');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK21', TO_DATE('2023-10-05', 'YYYY-MM-DD'), 47.50, 0, 'R8', 'T5');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK22', TO_DATE('2023-11-10', 'YYYY-MM-DD'), 46.75, 0, 'R9', 'T6');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK23', TO_DATE('2023-12-15', 'YYYY-MM-DD'), 45.00, 0, 'R10', 'T7');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK24', TO_DATE('2023-12-20', 'YYYY-MM-DD'), 44.25, 0, 'R11', 'T8');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK25', TO_DATE('2023-12-22', 'YYYY-MM-DD'), 43.50, 0, 'R12', 'T9');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK26', TO_DATE('2023-12-24', 'YYYY-MM-DD'), 42.75, 0, 'R13', 'T10');

SELECT * FROM Theatre;

SELECT * FROM Representation;

SELECT * FROM Ticket;

SELECT * FROM Recette;

SELECT * FROM Theatre_compagnie;

SELECT * FROM Production;

SELECT * FROM Production_Relation;

SELECT * FROM Theatre;

SELECT * FROM Representation;

SELECT * FROM Ticket;

SELECT * FROM Representation;

SELECT * FROM Recette;

SELECT * FROM Theatre_compagnie;

SELECT * FROM Theatre_compagnie;

SELECT * FROM Production;

SELECT * FROM Production_Relation;

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK27', TO_DATE('2023-06-10', 'YYYY-MM-DD'), 54.50, 0, 'R11', 'T1');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK28', TO_DATE('2023-07-15', 'YYYY-MM-DD'), 49.00, 0, 'R12', 'T2');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK29', TO_DATE('2023-08-20', 'YYYY-MM-DD'), 48.25, 0, 'R13', 'T3');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK30', TO_DATE('2023-09-25', 'YYYY-MM-DD'), 47.50, 0, 'R14', 'T4');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK31', TO_DATE('2023-10-30', 'YYYY-MM-DD'), 46.75, 0, 'R15', 'T5');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK32', TO_DATE('2023-11-05', 'YYYY-MM-DD'), 46.00, 0, 'R16', 'T6');

INSERT INTO Ticket (ID_ticket, Date_ticket, Prix, Reduction, ID_representation, ID_theatre) VALUES ('TICK33', TO_DATE('2023-12-10', 'YYYY-MM-DD'), 45.25, 0, 'R17', 'T7');

CREATE TABLE Theatre_Compagnie_name (
    ID_compagnie VARCHAR(50) NOT NULL,
    Nom VARCHAR(50) NOT NULL,
    ID_theatre VARCHAR(50) NOT NULL,
    PRIMARY KEY (ID_compagnie),
    FOREIGN KEY (ID_compagnie) REFERENCES Theatre_compagnie_name(ID_compagnie),
    FOREIGN KEY (ID_theatre) REFERENCES Theatre(ID_theatre)
);

CREATE TABLE Compagnie_Theatre (
    ID_compagnie VARCHAR(50) NOT NULL,
    ID_theatre VARCHAR(50) NOT NULL,
    FOREIGN KEY (ID_compagnie) REFERENCES Theatre_compagnie_name(ID_compagnie),
    FOREIGN KEY (ID_theatre) REFERENCES Theatre(ID_theatre),
    PRIMARY KEY (ID_compagnie, ID_theatre)
);

ALTER TABLE Theatre_compagnie_name DROP COLUMN ID_theatre;


INSERT INTO Theatre_compagnie_name (ID_compagnie, Nom) VALUES ('C1', 'Compagnie_Anas');
INSERT INTO Theatre_compagnie_name (ID_compagnie, Nom) VALUES ('C2', 'Compagnie_Mordjane');
INSERT INTO Theatre_compagnie_name (ID_compagnie, Nom) VALUES ('C3', 'Compagnie_Felix');
INSERT INTO Theatre_compagnie_name (ID_compagnie, Nom) VALUES ('C4', 'Compagnie_UGC');


INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C1', 'T1');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C2', 'T2');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C3', 'T3');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C3', 'T4');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C1', 'T5');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C2', 'T6');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C3', 'T7');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C3', 'T8');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C2', 'T9');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C1', 'T10');

select * from Compagnie_Theatre;

-- Ajouter des enregistrements supplémentaires dans la table Compagnie_Theatre
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C3', 'T1');
INSERT INTO Compagnie_Theatre (ID_compagnie, ID_theatre) VALUES ('C4', 'T2');


-- Insérer la première représentation
INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre)
VALUES ('R1', 'EFREI_PARIS', TO_DATE('2023-01-07', 'YYYY-MM-DD'), 50.00, 'T1');

-- Insérer la deuxième représentation qui a lieu en même temps que la première dans le même théâtre
INSERT INTO Representation (ID_representation, Titre, Date_representation, Prix, ID_theatre)
VALUES ('R2', 'EFREI_BORDEAUX', TO_DATE('2023-01-07', 'YYYY-MM-DD'), 55.00, 'T1');


-- Fonction qui affiche les représentations joués en même temps
CREATE OR REPLACE FUNCTION findDuplicateShows RETURN VARCHAR2 AS
  TYPE showRecord IS RECORD (
    Titre1 Representation.Titre%TYPE,
    Theatre1 Representation.ID_theatre%TYPE,
    Titre2 Representation.Titre%TYPE,
    Theatre2 Representation.ID_theatre%TYPE
  );

  TYPE showTable IS TABLE OF showRecord INDEX BY PLS_INTEGER;

  showInfo VARCHAR2(500) := '';
  showList showTable;
  counter PLS_INTEGER := 0;
BEGIN
  FOR rec IN (
    SELECT DISTINCT
      R1.Titre AS Titre1, R1.ID_theatre AS Theatre1,
      R2.Titre AS Titre2, R2.ID_theatre AS Theatre2
    FROM
      Representation R1
    JOIN
      Representation R2
    ON
      R1.ID_theatre = R2.ID_theatre
      AND R1.Date_representation = R2.Date_representation
      AND R1.ID_representation != R2.ID_representation
  ) LOOP
    counter := counter + 1;
    showList(counter) := rec;
  END LOOP;

  IF counter > 0 THEN
    FOR i IN 1..counter LOOP
      showInfo := showInfo || 'Les représentations ' || showList(i).Titre1 || ' au théâtre ' || showList(i).Theatre1 || ' et ' || showList(i).Titre2 || ' au théâtre ' || showList(i).Theatre2 || ' sont jouées en même temps.' || CHR(10);
    END LOOP;
    RETURN showInfo;
  ELSE
    RETURN 'Aucune représentation jouée en même temps.';
  END IF;

EXCEPTION
  WHEN OTHERS THEN
    RETURN 'Erreur lors de la recherche des représentations.';
END;
/

SELECT findDuplicateShows FROM DUAL;


-- Fonction récup prix bilets date
CREATE OR REPLACE FUNCTION GetTicketInfo RETURN VARCHAR2 AS
  ticketInfo VARCHAR2(1000);
BEGIN
  -- Obtient les prix des billets pour la date spécifiée
  SELECT 'Prix des billets pour le 20-DEC-23 : ' || TO_CHAR(Prix)
  INTO ticketInfo
  FROM Representation
  WHERE Date_representation = TO_DATE('20-DEC-23', 'DD-MON-YY');

  RETURN ticketInfo;
EXCEPTION
  WHEN NO_DATA_FOUND THEN
    RETURN 'Aucune information disponible pour la date spécifiée.';
END;
/

SELECT GetTicketInfo() FROM DUAL;


-- Remplis la capacité des théatres à 60 sauf pour T1
UPDATE Theatre
SET Capacite = FLOOR(Capacite * 0.6)
WHERE ID_theatre <> 'T1';



CREATE OR REPLACE FUNCTION CalculateTicketPrice(
    p_representation_id VARCHAR2,
    p_discount_percentage NUMBER DEFAULT 0
) RETURN NUMBER
IS
    v_base_price NUMBER;
    v_discounted_price NUMBER;
BEGIN
    -- Get the base price from the Representation table using the provided ID
    SELECT Prix INTO v_base_price
    FROM Representation
    WHERE ID_representation = p_representation_id;

    -- Calculate the discounted price
    v_discounted_price := v_base_price - (v_base_price * (p_discount_percentage / 100));

    -- Ensure the price is not negative
    IF v_discounted_price < 0 THEN
        v_discounted_price := 0;
    END IF;

    RETURN v_discounted_price;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN -1; -- Indicate an error, you can handle it accordingly in your application
    WHEN OTHERS THEN
        RETURN -1; -- Indicate an error, you can handle it accordingly in your application
END CalculateTicketPrice;



DECLARE
    v_ticket_price DECIMAL(10,2);
BEGIN
    v_ticket_price := CalculateTicketPrice('R11', 10); -- on aura 10% de réduction pour la representation avec l'ID 'R11'
    DBMS_OUTPUT.PUT_LINE('Ticket Price: ' || v_ticket_price);
END;
/










CREATE OR REPLACE FUNCTION CalculateTicketPrice(
    p_representation_title VARCHAR2,
    p_discount_percentage NUMBER DEFAULT 0
) RETURN NUMBER
IS
    v_base_price NUMBER;
    v_discounted_price NUMBER;
BEGIN
    -- Get the base price from the Representation table using the provided title
    SELECT Prix INTO v_base_price
    FROM Representation
    WHERE Titre = p_representation_title;

    -- Calculate the discounted price
    v_discounted_price := v_base_price - (v_base_price * (p_discount_percentage / 100));

    -- Ensure the price is not negative
    IF v_discounted_price < 0 THEN
        v_discounted_price := 0;
    END IF;

    RETURN v_discounted_price;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        RETURN -1; -- Indicate an error, you can handle it accordingly in your application
    WHEN OTHERS THEN
        RETURN -1; -- Indicate an error, you can handle it accordingly in your application
END CalculateTicketPrice;


select * from representation;

DECLARE
    v_ticket_price DECIMAL(10,2);
BEGIN
    v_ticket_price := CalculateTicketPrice('La Bohème', 15);
    DBMS_OUTPUT.PUT_LINE('Ticket Price: ' || v_ticket_price);
END;

-- au lieux de rentrer 15 en paramètre je veux rentrer si je suis étudiant ou non
