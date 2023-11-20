CREATE DATABASE connectevent_management;

-----------the good one
CREATE TABLE Lieux (
    Id INT PRIMARY KEY,
    Nom VARCHAR(50),
    Adresse VARCHAR(100),
    Capacite INT 
) ENGINE = INNODB;

CREATE TABLE Evenements (
    Id INT PRIMARY KEY,
    Titre VARCHAR(100),
    Date DATE,
    Lieu_id INT,
    FOREIGN KEY (Lieu_id) REFERENCES Lieux(Id)
) ENGINE = INNODB;

CREATE TABLE Organisateurs (
    Id INT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    Email VARCHAR(100),
    Telephone VARCHAR(50),
    Evenement_id INT,
    FOREIGN KEY (Evenement_id) REFERENCES Evenements(Id)
) ENGINE = INNODB ;


CREATE TABLE Participants (
    Id INT PRIMARY KEY,
    Nom VARCHAR(50),
    Prenom VARCHAR(50),
    Email VARCHAR(100),
    Telephone VARCHAR(50)
) ENGINE = INNODB;


CREATE TABLE Sponsors (
    Id INT PRIMARY KEY,
    Nom VARCHAR(50),
    Logo VARCHAR(100),
    Site_web VARCHAR(100)
) ENGINE = INNODB;

CREATE TABLE Billets (
    Id INT PRIMARY KEY,
    Prix DECIMAL(10, 2),
    Date_debut DATE,
    Date_fin DATE,
    Participants_id INT,
    Evenement_id INT,
    FOREIGN KEY (Participants_id) REFERENCES Participants(Id),
    FOREIGN KEY (Evenement_id) REFERENCES Evenements(Id)
) ENGINE = INNODB;

CREATE TABLE Evenements_Sponsors (
    Evenement_Sponsor_id INT PRIMARY KEY,
    Evenement_id INT,
    Sponsor_id INT,
    FOREIGN KEY (Evenement_id) REFERENCES Evenements(Id),
    FOREIGN KEY (Sponsor_id) REFERENCES Sponsors(Id)
) ENGINE = INNODB;

CREATE TABLE Retours (
    Id INT PRIMARY KEY,
    Montant DECIMAL(10,2),
    Date DATE,
    Participant_id INT,
    Evenement_id INT,
    FOREIGN KEY (Participant_id) REFERENCES Participants(Id),
) ENGINE = INNODB;








------------------------
INSERT INTO Lieux (id, nom, adresse, capacite)
VALUES
  (1, 'Convention Center', '123 Expo St, Cityville', 1000),
  (2, 'Community Hall', '456 Community Ave, Townsville', 500);


INSERT INTO Evenements (Id, Titre, Date, Lieu_id, Organisation_id)
VALUES
  (1, 'Conference XYZ', '2023-01-15', 1, 1),
  (2, 'Workshop ABC', '2023-02-20', 2, 2);


  INSERT INTO `Organisateurs`
VALUES
  (1, 'John', 'Doe', 'john.doe@example.com', '123-456-7890',1),
  (2, 'Alice', 'Smith', 'alice.smith@example.com', '987-654-3210',2);



INSERT INTO `Participants`
VALUES
  (1, 'Mike', 'Participant', 'mike.participant@example.com', '555-1234'),
  (2, 'Jane', 'Attendee', 'jane.attendee@example.com', '555-5678');



INSERT INTO Sponsors (id, nom, logo, site_web)
VALUES
  (1, 'TechCo', 'techco_logo.png', 'http://www.techco.com'),
  (2, 'FoodCorp', 'foodcorp_logo.png', 'http://www.foodcorp.com');


INSERT INTO  `billets`
VALUES
  (1, 50.00, '2023-01-01', '2023-01-15', 1, 1),
  (2, 25.00, '2023-02-01', '2023-02-20', 2, 2);


INSERT INTO Evenements_Sponsors (Evenement_Sponsor_id, Evenement_id, Sponsor_id)
VALUES
  (1, 1, 1),
  (2, 1, 2),
  (3, 2, 1);
