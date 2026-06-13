CREATE DATABASE IF NOT EXISTS `tifosi` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tifosi`;

CREATE USER IF NOT EXISTS 'tifosi'@'localhost'
IDENTIFIED BY 'motdepasse';

GRANT ALL PRIVILEGES
ON tifosi.*
TO 'tifosi'@'localhost';

FLUSH PRIVILEGES;

DROP TABLE IF EXISTS comprend;
DROP TABLE IF EXISTS est_constitue;
DROP TABLE IF EXISTS achete;
DROP TABLE IF EXISTS contient;
DROP TABLE IF EXISTS appartient;

DROP TABLE IF EXISTS `ingredient`;
DROP TABLE IF EXISTS `foccacia`;
DROP TABLE IF EXISTS `Client`;
DROP TABLE IF EXISTS `menu`;
DROP TABLE IF EXISTS `marque`;
DROP TABLE IF EXISTS `boisson`;

CREATE TABLE IF NOT EXISTS `ingredient`(
    `id_ingredient` INT NOT NULL AUTO_INCREMENT,
    `nom_ingredient` varchar(50) NOT NULL,
    PRIMARY KEY (`id_ingredient`),
    KEY `nom_ingredient`(`nom_ingredient`)

) ENGINE=InnoDB DEFAULT CHARSET=utf8;






CREATE TABLE IF NOT EXISTS `foccacia` (
    `id_foccacia` INT NOT NULL AUTO_INCREMENT,
    `nom_foccacia` varchar(50) NOT NULL,
    `prix` DECIMAL(5,2),
    PRIMARY KEY (`id_foccacia`),
    KEY `nom_foccacia`(`nom_foccacia`),
    KEY `prix`(`prix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `Client` (
    `id_client` INT NOT NULL AUTO_INCREMENT,
    `nom_client` varchar(50) NOT NULL,
    `email` varchar(150) NOT NULL UNIQUE,
    `code_postal` INT NOT NULL,
    PRIMARY KEY (`id_client`),
    KEY `nom_client`(`nom_client`),
    KEY `code_postal`(`code_postal`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `menu` (
    `id_menu` INT NOT NULL AUTO_INCREMENT,
    `nom_menu` varchar(50) NOT NULL,
    `prix` DECIMAL(5,2) NOT NULL,
    PRIMARY KEY (`id_menu`),
    KEY `nom_menu`(`nom_menu`),
    KEY `prix`(`prix`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `marque` (
    `id_marque` INT NOT NULL AUTO_INCREMENT,
    `nom_marque` varchar(50) NOT NULL,
    PRIMARY KEY (`id_marque`),
    KEY `nom_marque`(`nom_marque`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE IF NOT EXISTS `boisson` (
    `id_boisson` INT NOT NULL AUTO_INCREMENT,
    `nom_boisson` varchar(50) NOT NULL,
    PRIMARY KEY (`id_boisson`),
    KEY `nom_boisson`(`nom_boisson`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE comprend (
    `id_foccacia` INT NOT NULL,
    `id_ingredient` INT NOT NULL,
    `quantite` INT NOT NULL,

    PRIMARY KEY (`id_foccacia`, `id_ingredient`),

    CONSTRAINT `fk_comprend_foccacia`
        FOREIGN KEY (`id_foccacia`)
        REFERENCES `foccacia`(`id_foccacia`),

    CONSTRAINT `fk_comprend_ingredient`
        FOREIGN KEY (`id_ingredient`)
        REFERENCES `ingredient`(`id_ingredient`)
);

CREATE TABLE est_constitue (
    `id_menu` INT NOT NULL,
    `id_foccacia` INT NOT NULL,

    PRIMARY KEY (`id_menu`, `id_foccacia`),

    CONSTRAINT `fk_est_constitue_foccacia`
        FOREIGN KEY (`id_foccacia`)
        REFERENCES `foccacia`(`id_foccacia`),

    CONSTRAINT `fk_est_constitue_menu`
        FOREIGN KEY (`id_menu`)
        REFERENCES `menu`(`id_menu`)
);

CREATE TABLE achete (
    `id_client` INT NOT NULL,
    `id_menu` INT NOT NULL,
    `date_achat` DATE NOT NULL,

    PRIMARY KEY (`id_client`, `id_menu`, `date_achat`),
    CONSTRAINT `fk_achete_menu`
        FOREIGN KEY (`id_menu`)
        REFERENCES `menu`(`id_menu`),

    CONSTRAINT `fk_achete_Client`
        FOREIGN KEY (`id_client`)
        REFERENCES `Client`(`id_client`)
);

CREATE TABLE contient (
    `id_menu` INT NOT NULL,
    `id_boisson` INT NOT NULL,

    PRIMARY KEY (`id_menu`, `id_boisson`),

    CONSTRAINT `fk_contient_menu`
        FOREIGN KEY (`id_menu`)
        REFERENCES `menu`(`id_menu`),

    CONSTRAINT `fk_contient_boisson`
        FOREIGN KEY (`id_boisson`)
        REFERENCES `boisson`(`id_boisson`)

);

CREATE TABLE appartient (
    `id_boisson` INT NOT NULL,
    `id_marque` INT NOT NULL,

    PRIMARY KEY (`id_boisson`, `id_marque`),
    CONSTRAINT `fk_appartient_boisson`
        FOREIGN KEY (`id_boisson`)
        REFERENCES `boisson`(`id_boisson`),

    CONSTRAINT `fk_appartient_marque`
        FOREIGN KEY (`id_marque`)
        REFERENCES `marque`(`id_marque`)
);

