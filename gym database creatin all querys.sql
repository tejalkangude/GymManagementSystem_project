-- CREATE SCHEMA `Gym`;
-- CREATE TABLE `gym`.`info`(username VARCHAR(200), password VARCHAR(500), name VARCHAR(100), prof INT, street VARCHAR(100), city VARCHAR(50), phone VARCHAR(32), PRIMARY KEY(username));
-- CREATE TABLE `gym`.`plans`(name VARCHAR(100), PRIMARY KEY(name));
-- CREATE TABLE `gym`.`receps`(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));
-- CREATE TABLE `gym`.`trainors`(username VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username));
-- CREATE TABLE `gym`.`members`(username VARCHAR(200), plan VARCHAR(100), trainor VARCHAR(200), PRIMARY KEY(username), FOREIGN KEY(username) references info(username), FOREIGN KEY(plan) references plans(name), FOREIGN KEY(trainor) references trainors(username));

-- ALTER TABLE `gym`.`info` ADD time TIMESTAMP DEFAULT CURRENT_TIMESTAMP; -- done for all tables

-- INSERT INTO `gym`.`info`(username, password, name, prof, street, city, phone) VALUES('eswar_123', '$5$rounds=535000$ajR8hAzSoSF.NhEs$MaLn1dbnXq9eu2W5Ge3c1ScAS9960yLBFv3aU9zaxc0', 'Parameswar K', 1, 'Adarshnagar', 'Anantapur', 9666585361); -- admin's password is eswar@259522

-- CREATE TABLE `gym`.`progress`(username VARCHAR(200), date DATE, daily_result VARCHAR(200), time TIMESTAMP DEFAULT CURRENT_TIMESTAMP, PRIMARY KEY(username, date), FOREIGN KEY(username) references members(username));


