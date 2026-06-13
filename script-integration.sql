INSERT INTO `ingredient`(`id_ingredient`, `nom_ingredient`) VALUES
(1, 'Ail'),
(2, 'Ananas'),
(3, 'Artichaut'),
(4, 'Bacon'),
(5, 'Base Tomate'),
(6, 'Base crème'),
(7, 'Champignon'),
(8, 'Chèvre'),
(9, 'Cresson'),
(10, 'Emmental'),
(11, 'Gorgonzola'),
(12, 'Jambon cuit'),
(13, 'Jambon fumé'),
(14, 'Oeuf'),
(15, 'Oignon'),
(16, 'Olive noire'),
(17, 'Olive verte'),
(18, 'Parmesan'),
(19, 'Piment'),
(20, 'Poivre'),
(21, 'Pomme de terre'),
(22, 'Raclette'),
(23, 'Salami'),
(24, 'Tomate cerise'),
(25, 'Mozzarella');

INSERT INTO `foccacia` (`id_foccacia`, `nom_foccacia`, `prix`) VALUES
(1, 'Mozaccia', 9.80),
(2, 'Gorgonzollaccia', 10.80),
(3, 'Raclaccia', 8.90),
(4, 'Emmentalaccia', 9.80),
(5, 'Tradizione', 8.90),
(6, 'Hawaienne', 11.20),
(7, 'Américaine', 10.80),
(8, 'Paysanne', 12.80);

INSERT INTO `boisson` (`id_boisson`, `nom_boisson`) VALUES 
(1, 'Coca-cola zéro'),
(2, 'Coca-cola original'),
(3, 'Fanta citron'),
(4, 'Fanta orange'),
(5, 'Capri-sun'),
(6, 'Pepsi'),
(7, 'Pepsi Max Zéro'),
(8, 'Lipton zéro citron'),
(9, 'Lipton Peach'),
(10, 'Monster energy ultra gold'),
(11, 'Monster energy ultra blue'),
(12, 'Eau de source');

INSERT INTO `marque`(`id_marque`, `nom_marque`) VALUES
(1, 'Coca-cola'),
(2, 'Cristaline'),
(3, 'Monster'),
(4, 'Pepsico');

-- Mozaccia (id 1)
INSERT INTO `comprend`VALUES (1, 5, 200); -- base tomate
INSERT INTO `comprend`VALUES (1, 25, 50); -- mozzarella
INSERT INTO `comprend`VALUES (1, 9, 20); -- cresson
INSERT INTO `comprend`VALUES (1, 13, 80); -- jambon fumé
INSERT INTO `comprend`VALUES (1, 1, 2); -- ail
INSERT INTO `comprend`VALUES (1, 3, 20); -- artichaut
INSERT INTO `comprend`VALUES (1, 7, 40); -- champignon
INSERT INTO `comprend`VALUES (1, 18, 50); -- parmesant
INSERT INTO `comprend`VALUES (1, 20, 1);-- poivre
INSERT INTO `comprend`VALUES (1, 16, 20); -- olive noire

-- Gorgonzollaccia(id2)
INSERT INTO `comprend`VALUES (2, 5, 200);-- Base tomate
INSERT INTO `comprend`VALUES (2, 11,50);-- gorgonzola
INSERT INTO `comprend`VALUES (2, 9, 20);-- cresson
INSERT INTO `comprend`VALUES (2, 1, 2);-- ail
INSERT INTO `comprend`VALUES (2, 7, 40);-- champignon
INSERT INTO `comprend`VALUES (2, 18, 50);-- parmesan
INSERT INTO `comprend`VALUES (2, 20, 1);-- poivre
INSERT INTO `comprend`VALUES (2, 16, 20);-- olive noire

-- Raclaccia(id3)
INSERT INTO `comprend`VALUES (3, 5, 200);-- base tomate
INSERT INTO `comprend`VALUES (3, 22, 50);-- raclette
INSERT INTO `comprend`VALUES (3, 9, 80);-- cresson
INSERT INTO `comprend`VALUES (3, 1, 2);-- ail
INSERT INTO `comprend`VALUES (3, 7, 40);-- champignon
INSERT INTO `comprend`VALUES (3, 18, 50);-- parmesan
INSERT INTO `comprend`VALUES (3, 20, 1);-- poivre

-- Emmentalaccia(id 4)
INSERT INTO `comprend`VALUES (4, 6, 200);-- base crème
INSERT INTO `comprend`VALUES (4, 10, 50);-- emmental
INSERT INTO `comprend`VALUES (4, 9, 80);-- cresson
INSERT INTO `comprend`VALUES (4, 7, 40);-- champignon
INSERT INTO `comprend`VALUES (4, 18, 50);-- parmesan
INSERT INTO `comprend`VALUES (4, 20, 1);-- poivre
INSERT INTO `comprend`VALUES (4, 15, 20);-- oignon

-- Tradizionne(id 5)
INSERT INTO `comprend`VALUES (5, 5, 200);-- base tomate
INSERT INTO `comprend`VALUES (5, 25, 50);-- mozzarella
INSERT INTO `comprend`VALUES (5, 9, 80);-- cresson
INSERT INTO `comprend`VALUES (5, 12, 80);-- jambon cuit
INSERT INTO `comprend`VALUES (5, 7, 40);-- champignon
INSERT INTO `comprend`VALUES (5, 18, 50);-- parmesan
INSERT INTO `comprend`VALUES (5, 20, 1);-- poivre
INSERT INTO `comprend`VALUES (5, 16, 20);-- olive noire
INSERT INTO `comprend`VALUES (5, 17, 20);-- olive verte

-- Hawaienne(id 6)
INSERT INTO `comprend`VALUES (6,5, 200);-- base tomate
INSERT INTO `comprend`VALUES (6,25, 50 );-- mozarella
INSERT INTO `comprend`VALUES (6,9, 80);-- cresson
INSERT INTO `comprend`VALUES (6,4, 80);-- bacon
INSERT INTO `comprend`VALUES (6,2, 40);-- ananas
INSERT INTO `comprend`VALUES (6,19, 2);-- piment
INSERT INTO `comprend`VALUES (6,18, 50);-- parmesan
INSERT INTO `comprend`VALUES (6,20, 1);-- poivre
INSERT INTO `comprend`VALUES (6,16, 20);-- olive noire

-- Americaine(id 7)
INSERT INTO `comprend`VALUES (7, 5, 200);-- base tomate
INSERT INTO `comprend`VALUES (7, 25, 50);-- mozzarella
INSERT INTO `comprend`VALUES (7, 9, 80);-- cresson
INSERT INTO `comprend`VALUES (7, 4, 80);-- bacon
INSERT INTO `comprend`VALUES (7, 21, 80);-- pomme de terre
INSERT INTO `comprend`VALUES (7, 18, 50);-- parmesan
INSERT INTO `comprend`VALUES (7, 20, 1);-- poivre
INSERT INTO `comprend`VALUES (7,16, 20);-- olive noire

-- Paysanne(id 8)
INSERT INTO `comprend`VALUES (8, 6, 200);-- base crème
INSERT INTO `comprend`VALUES (8, 8, 50);-- chèvre
INSERT INTO `comprend`VALUES (8, 9, 80);-- cresson
INSERT INTO `comprend`VALUES (8, 21, 80);-- pomme de terre
INSERT INTO `comprend`VALUES (8, 13, 80);-- jambon fumé
INSERT INTO `comprend`VALUES (8, 1, 2);-- ail
INSERT INTO `comprend`VALUES (8, 3, 20);-- artichaut
INSERT INTO `comprend`VALUES (8, 7, 40);-- champignon
INSERT INTO `comprend`VALUES (8, 18, 50);-- parmesan
INSERT INTO `comprend`VALUES (8, 20, 1);-- poivre
INSERT INTO `comprend`VALUES (8, 16, 20);-- olive noire
INSERT INTO `comprend`VALUES (8, 14, 50);-- oeuf

INSERT INTO `appartient` (`id_boisson`, `id_marque`) VALUES
(1, 1), -- Coca-cola zéro             -> Coca-cola
(2, 1), -- Coca-cola original         -> Coca-cola
(3, 1), -- Fanta citron               -> Coca-cola
(4, 1), -- Fanta orange               -> Coca-cola
(5, 1), -- Capri-sun                  -> Coca-cola
(6, 4), -- Pepsi                      -> Pepsico
(7, 4), -- Pepsi Max Zéro             -> Pespsico
(8, 4), -- Lipton zéro citron         -> Pepsico
(9, 4), -- Lipton Peach               -> Pepsico
(10, 3), -- Monster energy ultra gold -> Monster
(11, 3), -- Monster energy ultra blue -> Monster
(12, 2); -- Eau de source             -> Cristaline

INSERT INTO `menu` (`id_menu`, `nom_menu`, `prix`) VALUES
(1, 'menu_Mozaccia', 10.80),
(2, 'menu_Gorgonzollaccia', 11.80),
(3, 'menu_Raclaccia', 9.90),
(4, 'menu_Emmentalaccia', 10.80),
(5, 'menu_Tradizione', 9.90),
(6, 'menu_Hawaienne', 12.20),
(7, 'menu_Americaine', 11.80),
(8, 'menu_Paysanne', 13.80);

/*Les prix n'étant pas indiqués pour la table menu 
j'ai rajouté 1€ au prix indiqué de la table foccacia*/

INSERT INTO `contient` (`id_menu`, `id_boisson`) VALUES
(1, 1), -- Mozaccia + Coca-cola zéro 
(1, 2), -- Mozaccia + Coca-cola original
(1, 3), -- Mozaccia + Fanta citron  
(1, 4), -- Mozaccia + Fanta orange
(1, 5), -- Mozaccia + Capri-sun
(1, 6), -- Mozaccia + Pepsi
(1, 7), -- Mozaccia + Pepsi Max Zéro
(1, 8), -- Mozaccia + Lipton zéro citron
(1, 9), -- Mozaccia + Lipton Peach
(1, 10), -- Mozaccia + Monster energy ultra gold
(1, 11), -- Mozaccia + Monster energy ultra blue
(1, 12), -- Mozaccia + Eau de source 

(2, 1), -- Gorgonzollaccia + Coca-cola zéro 
(2, 2), -- Gorgonzollaccia + Coca-cola original
(2, 3), -- Gorgonzollaccia + Fanta citron  
(2, 4), -- Gorgonzollaccia + Fanta orange
(2, 5), -- Gorgonzollaccia + Capri-sun
(2, 6), -- Gorgonzollaccia + Pepsi
(2, 7), -- Gorgonzollaccia + Pepsi Max Zéro
(2, 8), -- Gorgonzollaccia + Lipton zéro citron
(2, 9), -- Gorgonzollaccia + Lipton Peach
(2, 10), -- Gorgonzollaccia + Monster energy ultra gold
(2, 11), -- Gorgonzollaccia + Monster energy ultra blue
(2, 12), -- Gorgonzollaccia + Eau de source

(3, 1), -- Raclaccia + Coca-cola zéro 
(3, 2), -- Raclaccia + Coca-cola original
(3, 3), -- Raclaccia + Fanta citron  
(3, 4), -- Raclaccia + Fanta orange
(3, 5), -- Raclaccia + Capri-sun
(3, 6), -- Raclaccia + Pepsi
(3, 7), -- Raclaccia + Pepsi Max Zéro
(3, 8), -- Raclaccia + Lipton zéro citron
(3, 9), -- Raclaccia + Lipton Peach
(3, 10), -- Raclaccia + Monster energy ultra gold
(3, 11), -- Raclaccia + Monster energy ultra blue
(3, 12), -- Raclaccia + Eau de source

(4, 1), -- Emmentalaccia + Coca-cola zéro 
(4, 2), -- Emmentalaccia + Coca-cola original
(4, 3), -- Emmentalaccia + Fanta citron  
(4, 4), -- Emmentalaccia + Fanta orange
(4, 5), -- Emmentalaccia + Capri-sun
(4, 6), -- Emmentalaccia + Pepsi
(4, 7), -- Emmentalaccia + Pepsi Max Zéro
(4, 8), -- Emmentalaccia + Lipton zéro citron
(4, 9), -- Emmentalaccia + Lipton Peach
(4, 10), -- Emmentalaccia + Monster energy ultra gold
(4, 11), -- Emmentalaccia + Monster energy ultra blue
(4, 12), -- Emmentalaccia + Eau de source

(5, 1), -- Tradizione + Coca-cola zéro 
(5, 2), -- Tradizione + Coca-cola original
(5, 3), -- Tradizione + Fanta citron  
(5, 4), -- Tradizione + Fanta orange
(5, 5), -- Tradizione + Capri-sun
(5, 6), -- Tradizione + Pepsi
(5, 7), -- Tradizione + Pepsi Max Zéro
(5, 8), -- Tradizione + Lipton zéro citron
(5, 9), -- Tradizione + Lipton Peach
(5, 10), -- Tradizione + Monster energy ultra gold
(5, 11), -- Tradizione + Monster energy ultra blue
(5, 12), -- Tradizione + Eau de source

(6, 1), -- Hawaienne + Coca-cola zéro 
(6, 2), -- Hawaienne + Coca-cola original
(6, 3), -- Hawaienne + Fanta citron  
(6, 4), -- Hawaienne + Fanta orange
(6, 5), -- Hawaienne + Capri-sun
(6, 6), -- Hawaienne + Pepsi
(6, 7), -- Hawaienne + Pepsi Max Zéro
(6, 8), -- Hawaienne + Lipton zéro citron
(6, 9), -- Hawaienne + Lipton Peach
(6, 10), -- Hawaienne + Monster energy ultra gold
(6, 11), -- Hawaienne + Monster energy ultra blue
(6, 12), -- Hawaienne + Eau de source

(7, 1), -- Americaine + Coca-cola zéro 
(7, 2), -- Americaine + Coca-cola original
(7, 3), -- Americaine + Fanta citron  
(7, 4), -- Americaine + Fanta orange
(7, 5), -- Americaine + Capri-sun
(7, 6), -- Americaine + Pepsi
(7, 7), -- Americaine + Pepsi Max Zéro
(7, 8), -- Americaine+ Lipton zéro citron
(7, 9), -- Americaine + Lipton Peach
(7, 10), -- Americaine + Monster energy ultra gold
(7, 11), -- Americaine + Monster energy ultra blue
(7, 12), -- Americaine + Eau de source

(8, 1), -- Paysanne + Coca-cola zéro 
(8, 2), -- Paysanne + Coca-cola original
(8, 3), -- Paysanne + Fanta citron  
(8, 4), -- Paysanne + Fanta orange
(8, 5), -- Paysanne + Capri-sun
(8, 6), -- Paysanne + Pepsi
(8, 7), -- Paysanne + Pepsi Max Zéro
(8, 8), -- Paysanne + Lipton zéro citron
(8, 9), -- Paysanne + Lipton Peach
(8, 10), -- Paysanne + Monster energy ultra gold
(8, 11), -- Paysanne + Monster energy ultra blue
(8, 12); -- Paysanne + Eau de source

/*J'ai intégré des données dans la table menu bien que cela n'était pas inclu dans l'énoncé*/


INSERT INTO `est_constitue` VALUES (1,1);
INSERT INTO `est_constitue` VALUES (2,2);
INSERT INTO `est_constitue` VALUES (3,3);
INSERT INTO `est_constitue` VALUES (4,4);
INSERT INTO `est_constitue` VALUES (5,5);
INSERT INTO `est_constitue` VALUES (6,6);
INSERT INTO `est_constitue` VALUES (7,7);
INSERT INTO `est_constitue` VALUES (8,8);