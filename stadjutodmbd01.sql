-- phpMyAdmin SQL Dump
-- version OVH
-- https://www.phpmyadmin.net/
--
-- Hôte : stadjutodmbd01.mysql.db
-- Généré le :  ven. 09 oct. 2020 à 11:35
-- Version du serveur :  5.6.48-log
-- Version de PHP :  7.2.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `stadjutodmbd01`
--

-- --------------------------------------------------------

--
-- Structure de la table `EcoolDirect_Annee`
--

CREATE TABLE `EcoolDirect_Annee` (
  `idAnnee` int(11) NOT NULL,
  `libelleAnnee` varchar(50) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `EcoolDirect_Annee`
--

INSERT INTO `EcoolDirect_Annee` (`idAnnee`, `libelleAnnee`) VALUES
(1, '2018/2019'),
(2, '2019/2020'),
(3, '2020/2021');

-- --------------------------------------------------------

--
-- Structure de la table `EcoolDirect_Matiere`
--

CREATE TABLE `EcoolDirect_Matiere` (
  `codeMat` varchar(5) COLLATE latin1_general_cs NOT NULL,
  `libelleMat` varchar(50) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `EcoolDirect_Matiere`
--

INSERT INTO `EcoolDirect_Matiere` (`codeMat`, `libelleMat`) VALUES
('AG', 'Anglais'),
('EM', 'Education Musicale'),
('EMC', 'Education Moral et Civique'),
('EPS', 'Education Physique et Sportive'),
('FR', 'Français'),
('HG', 'Histoire-Géographie'),
('LT', 'Latin'),
('MT', 'Mathématiques'),
('PC', 'Physique-Chimie'),
('SES', 'Science Economique et Social'),
('SNT', 'Science du Numérique et Technologique'),
('SP', 'Espagnole'),
('SVT', 'Science de la Vie et de la Terre'),
('TC', 'Technologie');

-- --------------------------------------------------------

--
-- Structure de la table `EcoolDirect_Note`
--

CREATE TABLE `EcoolDirect_Note` (
  `idNote` int(11) NOT NULL,
  `codeMatNote` varchar(5) COLLATE latin1_general_cs NOT NULL,
  `noteNumerateur` int(11) NOT NULL,
  `noteDenominateur` int(11) NOT NULL,
  `coeffNote` float DEFAULT NULL,
  `idTriNote` int(11) NOT NULL,
  `idAnneeNote` int(11) NOT NULL,
  `idUtiNote` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `EcoolDirect_Note`
--

INSERT INTO `EcoolDirect_Note` (`idNote`, `codeMatNote`, `noteNumerateur`, `noteDenominateur`, `coeffNote`, `idTriNote`, `idAnneeNote`, `idUtiNote`) VALUES
(1, 'AG', 7, 10, 0.5, 1, 1, 1),
(1, 'EM', 12, 20, 2, 1, 1, 1),
(1, 'EMC', 8, 20, 2, 1, 1, 1),
(1, 'EPS', 8, 10, 1, 1, 1, 1),
(1, 'FR', 9, 12, 0.5, 1, 1, 1),
(1, 'HG', 15, 20, 2, 1, 1, 1),
(1, 'LT', 20, 20, 0.5, 1, 1, 1),
(1, 'MT', 3, 5, 0.5, 1, 1, 1),
(1, 'PC', 6, 10, 1, 1, 1, 1),
(1, 'SES', 14, 20, 2, 1, 1, 1),
(1, 'SNT', 5, 20, 2, 1, 1, 1),
(1, 'SP', 10, 20, 2, 1, 1, 1),
(1, 'SVT', 8, 15, 0.75, 1, 1, 1),
(1, 'TC', 14, 20, 2, 1, 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `EcoolDirect_Trimestre`
--

CREATE TABLE `EcoolDirect_Trimestre` (
  `idTri` int(11) NOT NULL,
  `libelleTri` varchar(50) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `EcoolDirect_Trimestre`
--

INSERT INTO `EcoolDirect_Trimestre` (`idTri`, `libelleTri`) VALUES
(1, 'Premier Trimestre'),
(2, 'Deuxième Trimestre'),
(3, 'Troisième Trimestre');

-- --------------------------------------------------------

--
-- Structure de la table `EcoolDirect_Utilisateur`
--

CREATE TABLE `EcoolDirect_Utilisateur` (
  `idUt` int(11) NOT NULL,
  `login` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `mdp` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `nom` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `prenom` varchar(50) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `EcoolDirect_Utilisateur`
--

INSERT INTO `EcoolDirect_Utilisateur` (`idUt`, `login`, `mdp`, `nom`, `prenom`) VALUES
(1, 'DesistoL', 'DesistoL', 'DE SISTO', 'Lorenzo'),
(2, 'FontanG', 'FontanG', 'FONTAN', 'Gaetan'),
(3, 'MartinetC', 'MartinetC', 'MARTINET', 'Clément'),
(4, 'SontotA', 'SontotA', 'SONTOT', 'Alexis');

-- --------------------------------------------------------

--
-- Structure de la table `elior_commande`
--

CREATE TABLE `elior_commande` (
  `dateMenu` date NOT NULL,
  `numMenu` int(11) NOT NULL,
  `idUtil` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `elior_commande`
--

INSERT INTO `elior_commande` (`dateMenu`, `numMenu`, `idUtil`) VALUES
('2019-11-14', 1, 18),
('2019-11-14', 1, 27),
('2019-11-14', 2, 59),
('2019-11-15', 1, 21),
('2019-11-15', 1, 27),
('2019-11-15', 1, 46),
('2019-11-15', 1, 59),
('2019-11-15', 2, 18),
('2019-11-15', 2, 34),
('2019-11-19', 1, 24),
('2019-11-21', 1, 24),
('2019-11-22', 2, 24),
('2019-11-22', 3, 21),
('2019-11-25', 2, 24),
('2019-11-26', 3, 24),
('2019-11-28', 3, 24),
('2019-11-29', 2, 24),
('2019-12-02', 1, 24),
('2019-12-03', 1, 24),
('2019-12-03', 2, 21),
('2019-12-03', 2, 27),
('2019-12-05', 1, 21),
('2019-12-05', 1, 24),
('2019-12-09', 2, 24),
('2019-12-10', 1, 24),
('2019-12-11', 1, 21),
('2019-12-12', 1, 24),
('2019-12-12', 2, 56),
('2019-12-13', 3, 24),
('2019-12-16', 2, 24),
('2019-12-17', 1, 24),
('2019-12-17', 2, 56),
('2019-12-19', 2, 24),
('2019-12-20', 3, 24),
('2020-01-06', 1, 24),
('2020-01-09', 2, 56),
('2020-01-13', 1, 56),
('2020-01-14', 2, 56),
('2020-01-21', 1, 56),
('2020-01-27', 1, 56),
('2020-03-03', 2, 21),
('2020-03-05', 1, 21),
('2020-03-06', 1, 21),
('2020-06-08', 1, 56);

-- --------------------------------------------------------

--
-- Structure de la table `elior_formule`
--

CREATE TABLE `elior_formule` (
  `id` int(11) NOT NULL,
  `libelle` varchar(20) COLLATE latin1_general_cs NOT NULL,
  `prix` decimal(5,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `elior_formule`
--

INSERT INTO `elior_formule` (`id`, `libelle`, `prix`) VALUES
(1, 'Plat + Dessert', '4.50'),
(2, 'Entrée + Plat', '4.50'),
(3, 'Entrée + Plat + Dess', '5.25'),
(4, 'Plat', '3.50'),
(5, 'Restauration rapide', '3.00'),
(6, 'plat + fromage', '4.50'),
(7, 'test\'guillemet\' \'a\'\'', '0.50');

-- --------------------------------------------------------

--
-- Structure de la table `elior_menu`
--

CREATE TABLE `elior_menu` (
  `dateMenu` date NOT NULL,
  `numMenu` int(11) NOT NULL,
  `descriptionMenu` longtext COLLATE latin1_general_cs NOT NULL,
  `id_formule_menu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `elior_menu`
--

INSERT INTO `elior_menu` (`dateMenu`, `numMenu`, `descriptionMenu`, `id_formule_menu`) VALUES
('2019-11-12', 1, 'steak de veau - haricots verts / gâteau au chocolat ', 1),
('2019-11-12', 2, 'poisson papillote - haricots verts / entremets caramel et pommes', 1),
('2019-11-12', 3, 'steak de veau - flageolets à la tomate / coulommiers ', 6),
('2019-11-12', 4, 'Burger, frites, et fun !', 5),
('2019-11-13', 1, 'sauté de boeuf - Riz créole / mousse aux spéculoos', 1),
('2019-11-13', 2, 'beignets de calamars - Riz créole / Yaourt nature sucré', 1),
('2019-11-14', 1, 'Poulet à l\'américaine - Tortis / Gâteau aux cerises (spécialité du Chef)', 1),
('2019-11-14', 2, 'Carré de Porc fumé sauce barbecue - Tortis / Flan au chocolat', 1),
('2019-11-15', 1, 'Pizza Kebab / Carottes et lardons / Cake aux Quetsches', 3),
('2019-11-15', 2, 'Pavé de colin au basilic - Boulgour pilaf / Barre Bretonne', 1),
('2019-11-18', 1, 'Omelette nature et Pommes rösti aux légumes - gâteau au chocolat', 1),
('2019-11-18', 2, 'Filet de colin et Pommes rösti aux légumes - gâteau au chocolat', 1),
('2019-11-19', 1, 'Rôti de veau et Lentilles - Gâteau de semoule', 1),
('2019-11-19', 2, 'Saucisse de Strasbourg et Lentilles - Moelleux au fromage (dessert)', 1),
('2019-11-19', 3, 'Rôti de veau et petits pois - Gâteau de semoule', 1),
('2019-11-20', 1, 'Panini bolognaise - Fromage blanc crème de marrons', 1),
('2019-11-21', 1, 'Emincé de dinde sauce caramel et légumes à l\'asiatique (carotte courgettes poivrons oignons fève) - Gâteau aux poires', 1),
('2019-11-21', 2, 'Saucisse de volaille aux herbes et Riz Créole - Gâteau aux poires', 1),
('2019-11-21', 3, 'Emincé de dinde sauce caramel et Riz créole - Gâteau aux poires', 1),
('2019-11-22', 1, 'Stick de colin pané et Boulgour pilaf - Cake aux Quetsches', 1),
('2019-11-22', 2, 'Rôti de porc au curry et boulgour pilaf - Cake aux quetsches', 1),
('2019-11-22', 3, 'Rôti de porc au curry et courgettes saveur du midi - Crème aux oeufs à la vanille', 1),
('2019-11-25', 1, 'cordon bleu + purée de pommes de terre / liégeois à la vanille', 1),
('2019-11-25', 2, 'cordon bleu + haricots verts et PdTerre / barre bretonne', 1),
('2019-11-25', 3, 'saumonette sauce dieppoise + purée de PdTerre / barre bretonne', 1),
('2019-11-26', 1, 'menu végétarien : boulgour tandoori + poêlée de Guyane (céleri, carottes, champignons) / cake citron', 1),
('2019-11-26', 2, 'boulettes boeuf sauce tomate + boulgour pilaf / orange aux épices', 1),
('2019-11-26', 3, 'boulettes boeuf sauce tomate + boulgour / Cake citron', 1),
('2019-11-27', 1, 'brick croustillante de poisson + pommes frites / duo mousse au chocolat', 1),
('2019-11-27', 2, 'brick croustillante de colin + brunoise de légumes / duo mousse chocolat', 1),
('2019-11-28', 1, 'Sauté de boeuf aux marrons + tortis / gâteau au chocolat', 1),
('2019-11-28', 2, 'sauté de boeuf aux marrons + purée de potiron / Bananouil (banane, fenouil, oeuf, fromage blanc)', 1),
('2019-11-28', 3, 'poulet rôti + Tortis / Gâteau chocolat', 1),
('2019-11-28', 4, 'poulet rôti + tortis / fromage blanc crème et marrons', 1),
('2019-11-29', 1, 'filet de colin sauce aux poireaux + riz créole / Rissole raisins secs (pâte feuilleté, crème pâtissière et oeufs)', 1),
('2019-11-29', 2, 'Sauté de porc + riz créole / Rissole raisins secs ', 1),
('2019-11-29', 3, 'filet de colin sauce poireaux + riz créole / Crémeux vanille kaki (fruit le kaki, crème mousseline vanille)', 1),
('2019-11-29', 4, 'végétarien : riz créole +  duo brocolis choux-fleurs aux amandes / Rissole raisins secs', 1),
('2019-12-02', 1, 'gratin de macaronis au jambon - macaronis / mousse au cacao', 1),
('2019-12-02', 2, 'filet de lieu sauce crème - macaronis / neige aux myrtilles (blanc d\'oeuf, crème anglaise aux myrtilles)', 1),
('2019-12-02', 3, 'haut de cuisse de poulet - macaronis / neige aux myrtilles', 1),
('2019-12-03', 1, 'paupiette de veau - lentilles / beignet à l\'abricot', 1),
('2019-12-03', 2, 'saucisse de toulouse - lentilles / moelleux au citron', 1),
('2019-12-05', 1, 'poulet rôti - frites / gauffre sucre glace', 1),
('2019-12-05', 2, 'jambon grillé - frites / smoothie à la vanille', 1),
('2019-12-06', 1, 'filet de colin meunière et citron - riz pilaf / oranges à la cannelle', 1),
('2019-12-06', 2, 'oeufs frits au lard - épinards béchamel / mousse aux spéculoos', 1),
('2019-12-06', 3, 'oeufs frits au lard - riz pilaf / mousse aux spéculoos', 1),
('2019-12-09', 1, 'filet de colin - riz créole / gâteau au chocolat', 1),
('2019-12-09', 2, 'chili aux haricots rouges et pois chiches / liégeois vanille', 1),
('2019-12-10', 1, 'boulettes de veau sauce poivrade - semoule fine / panna cotta', 1),
('2019-12-10', 2, 'colin sauce colombo et coriandre - semoule fine / panna cotta', 1),
('2019-12-11', 1, 'saucisse knack - purée / mousse chocolat', 1),
('2019-12-11', 2, 'brochette de dinde à la dijonnaise / moelleux framboises', 1),
('2019-12-12', 1, 'brochette de dinde à la dijonnaise - purée / moelleux framboises', 1),
('2019-12-12', 2, 'saucisses Knack - purée / mousse au chocolat', 1),
('2019-12-12', 3, 'beignets de poisson - penne / cake à la noix de coco', 1),
('2019-12-13', 1, 'moules gratinées - semoule / entremet au chocolat', 1),
('2019-12-13', 2, 'moules gratinées - légumes tajine / pomme gourmande', 1),
('2019-12-13', 3, 'merguez - semoule / entremet chocolat', 1),
('2019-12-13', 4, 'merguez - légumes tajine / pomme gourmande', 1),
('2019-12-16', 1, 'filet de colin sauce tomate vanillée - purée de pommes de terre / mousse au pain d\'épices', 1),
('2019-12-16', 2, 'pané de blé, fromage, épinards - purée / entremet vanille', 1),
('2019-12-16', 3, 'filet de colin sauce tomate vanillée - ratatouille / entremet vanille', 1),
('2019-12-16', 4, 'pané de blé, fromage, épinards - ratatouille / mousse au pain d\'épices', 1),
('2019-12-17', 1, 'palette de porc sauce diable - boulgour pilaf / gâteau au yaourt et pommes', 1),
('2019-12-17', 2, 'choux-fleurs à la polonaise (oeuf, choux fleurs, sauce béchamel) - boulgour pilaf / gâteau au yaourt et pommes', 1),
('2019-12-18', 1, 'sauté de boeuf au paprika - spaghettis / banana bread (oeuf, fromage blanc, banane)', 1),
('2019-12-18', 2, 'beignets de calamars - spaghettis / compote pommes fraises', 1),
('2019-12-19', 1, 'repas de noël : boudin blanc à la crème d\'échalotes - pommes noisettes / bûche chocolat caramel', 1),
('2019-12-19', 2, 'repas de noël : escalope de volaille grillée - pommes noisettes / bûche chocolat caramel', 1),
('2019-12-19', 3, 'repas de noël : boudin blanc à la crème d\'échalotes - poêlée de légumes - bûche chocolat caramel', 1),
('2019-12-19', 4, 'escalope de volaille grillée - haricots verts aneth, citron / poire aux épices', 1),
('2019-12-20', 1, 'omelette à l\'émental - riz créole / pavlova (fruits rouges, meringuette, mousse)', 1),
('2019-12-20', 2, 'omelette à l\'émmental - carottes saveur antillaise / oeufs neige au caramel', 1),
('2019-12-20', 3, 'rougail de saucisse fumée - riz créole / pavlova (fruits rouges, meringuette, mousse)', 1),
('2020-01-06', 1, 'nuggets de volaille - boulgour pilaf / gaufre fantasia', 1),
('2020-01-06', 2, 'colin sauce aux petits légumes - boulgour pilaf / liégeois vanille', 1),
('2020-01-07', 1, 'rôti de porc sauce moutarde - flageolets à la tomate  / galette des rois', 1),
('2020-01-07', 2, 'kefta d\'agneau à l\'harissa - haricots beurre / galette des rois', 1),
('2020-01-08', 1, 'pizza bolognaise - pommes rösti aux légumes / entremet vanille', 1),
('2020-01-08', 2, 'omelette nature - pommes rösti aux légumes / compote pommes bananes', 1),
('2020-01-09', 1, 'braisé de paleron - penne / cake noix de coco', 1),
('2020-01-09', 2, 'saucisse de francfort - petits pois / gâteau de semoule', 1),
('2020-01-10', 1, 'marmite de poisson - riz créole / tarte citron meringuée', 1),
('2020-01-10', 2, 'rôti de dinde - blettes au gratin sauce béchamel / tarte citron meringuée', 1),
('2020-01-10', 3, 'rôti de dinde - riz créole / mousse au pain d\'épices', 1),
('2020-01-13', 1, 'galopin de veau persillé - macaronis / gratin de pêches', 1),
('2020-01-13', 2, 'filet de lieu noir à la Tunisienne - brunoise de légumes saveur orientale / barre bretonne', 1),
('2020-01-14', 1, 'rôti de veau - purée pommes de terre / mousse au cacao', 1),
('2020-01-14', 2, 'nuggets de volaille - printanière de légumes / ananas et caramel au lait', 1),
('2020-01-15', 1, 'chipolatas grillées - haricots blancs à la tomate / oeufs en neige au caramel', 1),
('2020-01-15', 2, 'tarte à l\'oignon - haricots blancs à la tomate / compote de poire', 1),
('2020-01-16', 1, 'cuisse de poulet à l\'Américaine - riz créole / moelleux au fromage', 1),
('2020-01-16', 2, 'filet de hoki sauce vierge - riz créole / moelleux au fromage', 1),
('2020-01-17', 1, 'stick de colin pané et citron - semoule / cake au citron', 1),
('2020-01-17', 2, 'omelette nature - épinards à la béchamel / panna cotta au fromage blanc aux pommes', 1),
('2020-01-20', 1, 'parmentier de poisson - purée / gâteau au chocolat', 1),
('2020-01-21', 1, 'sauté de boeuf aux carottes - lentilles / mousse aux spéculoos', 1),
('2020-01-22', 1, 'filet de lieu noir sauce safranée - semoule / barre bretonne au caramel beurre salé', 1),
('2020-01-22', 2, 'boulettes de boeuf sauce carotte - ratatouille et semoule / barre bretonne au caramel beurre salé', 1),
('2020-01-23', 1, 'cordon bleu - riz créole / cake aux chocolats blanc et noir', 1),
('2020-01-23', 2, 'cordon bleu - haricots verts / cake aux chocolats blanc et noir', 1),
('2020-01-24', 1, 'sauté de dinde à l\'estragon - penne / douceur lactée au citron', 1),
('2020-01-24', 2, 'duo de poissons - penne / bananouil (banane, fenouil, oeuf, fromage blanc)', 1),
('2020-01-27', 1, 'coucous merguez - semoule / gaufre fantasia', 1),
('2020-01-27', 2, 'filet de colin sauce safranée - semoule / gaufre fantasia', 1),
('2020-01-28', 1, 'nems au poulet - ris cantonnais / gâteau aux abricots', 1),
('2020-01-28', 2, 'lieu à la chinoise - riz cantonnais / gâteau aux abricots', 1),
('2020-01-29', 1, 'tarte au chèvre et tomates - julienne de légumes / entremets à la vanille et mikado', 1),
('2020-01-30', 1, 'boeuf sauté aux oignons - riz créole / crémeux aux fruits et coco', 1),
('2020-01-30', 2, 'beignets de calamars - chop suey de légumes / riz au lait à la banane', 1),
('2020-01-31', 1, 'blanquette de colin - coudes / cake à l\'orange', 1),
('2020-01-31', 2, 'saucisse de toulouse - lentilles / roulé aux myrtilles', 1),
('2020-02-10', 1, 'côte de porc sauce pamplemousse - purée / moelleux pommes spéculoos', 1),
('2020-02-10', 2, 'omelette nature - haricots verts / moelleux pommes spéculoos', 1),
('2020-02-11', 1, 'rôti de veau - semoule / mille-feuilles chocolat', 1),
('2020-02-11', 2, 'saucisse de strasbourg - julienne de légumes / smoothie bananes-pommes', 1),
('2020-02-12', 1, 'paupiette saumon sauce crème - pommes noisettes / fromage blanc crème de marrons', 1),
('2020-02-13', 1, 'poulet sauce mimolette - penne / cake au miel', 1),
('2020-02-13', 2, 'penne de la mer - épinards béchamel / entremet caramel-poire', 1),
('2020-02-14', 1, 'pavé de colin crème persillée - riz de grand-mère / mousse chocolat au lait', 1),
('2020-02-14', 2, 'longe de porc aux herbes - riz de grand-mère / crème aux oeufs à la vanille', 1),
('2020-03-02', 1, 'filet de colin - purée / mousse chocolat au lait', 1),
('2020-03-02', 2, 'viennoise de dinde - haricots verts flageolets / mousse chocolat au lait', 1),
('2020-03-03', 1, 'boeuf braisé de paleron sauce tomate - pommes grenailles aux épices / cake noix de coco', 1),
('2020-03-03', 2, 'nuggets de poisson - pommes grenailles aux épices / gaufre fantasia', 1),
('2020-03-05', 1, 'couscous végétarien - semoule / stracciatella', 1),
('2020-03-05', 2, 'moules gratinées - semoule / entremet  à la vanille', 1),
('2020-03-06', 1, 'filet de colin meunière et citron - julienne de légumes / mille-feuilles chocolat', 1),
('2020-03-06', 2, 'boudin noir - purée / mille-feuilles chocolat', 1),
('2020-03-09', 1, 'boulettes de boeuf au curry - semoule / Flan au chocolat', 1),
('2020-03-09', 2, 'pavé de colin à la provençale - semoule / gaufre au sucre glace', 1),
('2020-03-10', 1, 'cuisse de poulet basquaise - pommes frites / duo de mousses au chocolats', 1),
('2020-03-10', 2, 'rissolette de porc sauce charcutière - pommes frites/ Gaufre', 1),
('2020-03-11', 1, 'omelette - riz à la tomate / cake au citron', 1),
('2020-03-11', 2, 'tarte flambée (fromage blanc, oeuf, oignons) - riz à la tomate / cake au citron', 1),
('2020-03-12', 1, 'paupiette de veau - coquillettes saveur du midi / clafoutis aux pommes', 1),
('2020-03-12', 2, 'penne aux lentilles et maïs - fondue de poireaux / clafoutis aux pommes', 1),
('2020-03-13', 1, 'colin pané au citron - boulgour pilaf / moelleux myrtilles-citron', 1),
('2020-03-13', 2, 'Emincé de dinde sauce caramel - boulgour pilaf / moelleux myrtilles-citron', 1),
('2020-06-01', 1, 'Gartin de penne et veau grillé - yaourt BIO', 1),
('2020-06-01', 2, 'Riz basmati et colin sauce meunière - Cerises producteur local', 1),
('2020-06-08', 1, 'steak de veau - haricots verts / gâteau au chocolat ', 1),
('2020-06-08', 2, 'poisson papillote - haricots verts / entremets caramel et pommes', 1),
('2020-06-08', 3, 'steak de veau - flageolets à la tomate / coulommiers ', 1),
('2020-06-09', 1, 'sauté de boeuf - Riz créole / mousse aux spéculoos', 1),
('2020-06-09', 2, 'beignets de calamars - Riz créole / Yaourt nature sucré', 1),
('2020-06-10', 1, 'Poulet à l\'américaine - Tortis / Gâteau aux cerises (spécialité du Chef)', 1),
('2020-06-10', 2, 'Carré de Porc fumé sauce barbecue - Tortis / Flan au chocolat', 1),
('2020-06-11', 1, 'Pizza Kebab / Carottes et lardons / Cake aux Quetsches', 3),
('2020-06-11', 2, 'Pavé de colin au basilic - Boulgour pilaf / Barre Bretonne', 1),
('2020-06-12', 1, 'Omelette nature et Pommes rösti aux légumes - gâteau au chocolat', 1),
('2020-06-12', 2, 'Filet de colin et Pommes rösti aux légumes - gâteau au chocolat', 1),
('2020-06-15', 1, 'Rôti de veau et Lentilles - Gâteau de semoule', 1),
('2020-06-15', 2, 'Saucisse de Strasbourg et Lentilles - Moelleux au fromage (dessert)', 1),
('2020-06-15', 3, 'Rôti de veau et petits pois - Gâteau de semoule', 1),
('2020-06-16', 1, 'Panini bolognaise - Fromage blanc crème de marrons', 1),
('2020-06-17', 1, 'Emincé de dinde sauce caramel et légumes à l\'asiatique (carotte courgettes poivrons oignons fève) - Gâteau aux poires', 1),
('2020-06-17', 2, 'Saucisse de volaille aux herbes et Riz Créole - Gâteau aux poires', 1),
('2020-06-17', 3, 'Emincé de dinde sauce caramel et Riz créole - Gâteau aux poires', 1),
('2020-06-18', 1, 'Stick de colin pané et Boulgour pilaf - Cake aux Quetsches', 1),
('2020-06-18', 2, 'Rôti de porc au curry et boulgour pilaf - Cake aux quetsches', 1),
('2020-06-18', 3, 'Rôti de porc au curry et courgettes saveur du midi - Crème aux oeufs à la vanille', 1),
('2020-06-19', 1, 'cordon bleu + purée de pommes de terre / liégeois à la vanille', 1),
('2020-06-19', 2, 'cordon bleu + haricots verts et PdTerre / barre bretonne', 1),
('2020-06-19', 3, 'saumonette sauce dieppoise + purée de PdTerre / barre bretonne', 1),
('2020-06-22', 1, 'menu végétarien : boulgour tandoori + poêlée de Guyane (céleri, carottes, champignons) / cake citron', 1),
('2020-06-22', 2, 'boulettes boeuf sauce tomate + boulgour pilaf / orange aux épices', 1),
('2020-06-22', 3, 'boulettes boeuf sauce tomate + boulgour / Cake citron', 1),
('2020-06-23', 1, 'brick croustillante de poisson + pommes frites / duo mousse au chocolat', 1),
('2020-06-23', 2, 'brick croustillante de colin + brunoise de légumes ', 5),
('2020-06-24', 1, 'Sauté de boeuf aux marrons + tortis / gâteau au chocolat', 1),
('2020-06-24', 2, 'sauté de boeuf aux marrons + purée de potiron / Bananouil (banane, fenouil, oeuf, fromage blanc)', 1),
('2020-06-24', 3, 'poulet rôti + Tortis ', 4),
('2020-06-24', 4, 'salade de betterave / poulet rôti + tortis / fromage blanc crème et marrons', 3),
('2020-06-25', 1, 'filet de colin sauce aux poireaux + riz créole / Rissole raisins secs (pâte feuilleté, crème pâtissière et oeufs)', 1),
('2020-06-25', 2, 'Sauté de porc + riz créole / Rissole raisins secs ', 1),
('2020-06-25', 3, 'filet de colin sauce poireaux + riz créole / Crémeux vanille kaki (fruit le kaki, crème mousseline vanille)', 1),
('2020-06-25', 4, 'végétarien : riz créole +  duo brocolis choux-fleurs aux amandes / Rissole raisins secs', 1),
('2020-06-26', 1, 'gratin de macaronis au jambon - macaronis / mousse au cacao', 1),
('2020-06-26', 2, 'carottes râpées / filet de lieu sauce crème - macaronis ', 2),
('2020-06-26', 3, 'salade de concombre / haut de cuisse de poulet - macaronis / neige aux myrtilles', 3);

-- --------------------------------------------------------

--
-- Structure de la table `elior_paiement`
--

CREATE TABLE `elior_paiement` (
  `id` int(11) NOT NULL,
  `idEleve` int(11) NOT NULL,
  `datePaiement` date NOT NULL,
  `montant` decimal(10,2) NOT NULL,
  `typeReglement` tinyint(11) NOT NULL COMMENT '1 = espèces 2 = chèque',
  `remarques` varchar(100) COLLATE latin1_general_cs NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `elior_paiement`
--

INSERT INTO `elior_paiement` (`id`, `idEleve`, `datePaiement`, `montant`, `typeReglement`, `remarques`) VALUES
(18, 59, '2019-11-13', '10.00', 1, 'rendre 1 euro'),
(19, 27, '2019-11-13', '9.50', 2, ''),
(20, 18, '2019-11-13', '4.50', 1, ''),
(21, 18, '2019-11-14', '4.50', 1, ''),
(22, 21, '2019-11-14', '9.00', 1, ''),
(23, 9, '2019-11-14', '9.00', 1, ''),
(25, 34, '2019-11-15', '5.00', 1, ''),
(26, 46, '2019-11-15', '4.50', 1, ''),
(27, 24, '2019-11-15', '27.50', 2, 'remis début d\'année compta'),
(28, 24, '2019-11-29', '40.00', 2, ''),
(29, 21, '2019-11-29', '20.00', 1, ''),
(30, 27, '2019-12-03', '4.00', 1, ''),
(31, 21, '2019-12-11', '10.00', 1, ''),
(32, 56, '2019-12-12', '9.00', 2, ''),
(33, 24, '2019-12-17', '20.00', 2, ''),
(34, 56, '2020-01-06', '45.00', 2, ''),
(35, 69, '2020-06-15', '50.00', 1, '');

-- --------------------------------------------------------

--
-- Structure de la table `elior_params`
--

CREATE TABLE `elior_params` (
  `heureDebutCde` time NOT NULL,
  `nbRepasDecouvert` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `elior_params`
--

INSERT INTO `elior_params` (`heureDebutCde`, `nbRepasDecouvert`) VALUES
('09:30:00', 0);

-- --------------------------------------------------------

--
-- Structure de la table `elior_utilisateur`
--

CREATE TABLE `elior_utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `prenom` varchar(255) COLLATE latin1_general_cs NOT NULL DEFAULT '',
  `idClasse` int(11) NOT NULL DEFAULT '0',
  `login` varchar(25) COLLATE latin1_general_cs NOT NULL DEFAULT '',
  `mdp` varchar(255) COLLATE latin1_general_cs NOT NULL DEFAULT '',
  `statut` int(11) NOT NULL DEFAULT '0',
  `creditRepas` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `elior_utilisateur`
--

INSERT INTO `elior_utilisateur` (`id`, `nom`, `prenom`, `idClasse`, `login`, `mdp`, `statut`, `creditRepas`) VALUES
(8, 'BOETE', 'Antoine', 1, 'BOETEA', '1a1dc91c907325c69271ddf0c944bc72', 1, 3),
(9, 'LE COCGUEN', 'Guillaume', 2, 'LECOCGUENG', '1a1dc91c907325c69271ddf0c944bc72', 1, 9),
(10, 'CHAPELAIN', 'Gael', 1, 'CHAPELAING', '1a1dc91c907325c69271ddf0c944bc72', 1, 1),
(11, 'DA SILVA MARQUES', 'Lucas', 1, 'DASILVAL', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(12, 'BOUMADAFA', 'Marouane', 1, 'BOUMADAFAM', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(13, 'BOUSSAIDA', 'Sofiene', 2, 'BOUSSAIDAS', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(14, 'CATROUILLET', 'Jonas', 1, 'CATROUILLETJ', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(15, 'KONARSKI', 'Matthieu', 2, 'KONARSKIM', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(16, 'MARTINET', 'Clement', 1, 'MARTINETC', '1a1dc91c907325c69271ddf0c944bc72', 1, 46.5),
(17, 'LECOMTE', 'Bryan', 1, 'LECOMTEB', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(18, 'LE GARFF', 'Kevin', 2, 'LEGARFFK', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(19, 'LECOUBLET', 'Theo', 1, 'LECOUBLETT', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(21, 'LE DUC', 'Pierre', 1, 'LEDUCP', '1a1dc91c907325c69271ddf0c944bc72', 1, 3),
(22, 'LACINGA', 'Corentin', 2, 'LACINGAC', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(24, 'DOUBLEAU', 'Quentin', 1, 'DOUBLEAUQ', '1a1dc91c907325c69271ddf0c944bc72', 1, 2),
(25, 'VARILLON', 'Anthony', 2, 'VARILLONA', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(26, 'DZOGANG', 'Sami', 1, 'DZOGANGS', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(27, 'FONTAN', 'Gaetan', 1, 'FONTANG', '1a1dc91c907325c69271ddf0c944bc72', 1, 50),
(28, 'DE SISTO', 'Lorenzo', 1, 'DESISTOL', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(29, 'CARRE', 'Arthur', 1, 'CARREA', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(31, 'DENONCIN', 'Agnès', 0, 'DENONCINA', '1a1dc91c907325c69271ddf0c944bc72', 2, 0),
(32, 'RUGGERI', 'Anthony', 2, 'RUGGERIA', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(33, 'DESNOS', 'Remi', 2, 'DESNOSR', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(34, 'ITTOHEMAD', 'Meryeme', 2, 'ITTOHEMADM', '1a1dc91c907325c69271ddf0c944bc72', 1, 0.5),
(35, 'GROMER', 'Johan', 1, 'GROMERJ', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(36, 'JOURDAIN', 'Esteban', 2, 'JOURDAINE', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(37, 'GRATIEN', 'Erwann', 1, 'GRATIENE', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(38, 'BOULANGER', 'Florian', 2, 'BOULANGERF', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(39, 'QUENOT', 'Mael', 2, 'QUENOTM', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(40, 'THOMAS', 'Alexis', 2, 'THOMASA', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(41, 'DOSTE MOHAMED', 'Yohann', 2, 'DOSTEY', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(42, 'MOREL', 'Teddy', 2, 'MORELT', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(43, 'DANG', 'Mathieu', 1, 'DANGM', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(44, 'DJENADI', 'Axel', 2, 'DJENADIA', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(77, 'AUBERTIN', 'Gregoire', 1, 'AUBERTING', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(46, 'DUPREY', 'Clement', 2, 'DUPREYC', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(47, 'LEDRU', 'Maxime', 2, 'LEDRUM', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(48, 'INAN', 'Anysse', 2, 'INANA', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(49, 'LETORT', 'Samuel', 2, 'LETORTS', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(50, 'MESLIN', 'Thibaut', 1, 'MESLINT', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(51, 'KAUFFMANNN', 'Nathan', 1, 'KAUFFMANN', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(52, 'MUSEUX', 'Remi', 2, 'MUSEUXR', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(53, 'BALLOT', 'Dimitry', 2, 'BALLOTD', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(54, 'GERBE', 'Benjamin', 1, 'GERBEB', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(55, 'PIROU', 'Paul', 2, 'PIROUP', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(56, 'HAUTCOEUR', 'Jules', 1, 'HAUTCOEURJ', '1a1dc91c907325c69271ddf0c944bc72', 1, 18),
(57, 'HUE', 'Mathias', 1, 'HUEM', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(58, 'KARAKUS', 'Yasin', 1, 'KARAKUSY', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(59, 'DELATOUCHE', 'Romain', 2, 'DELATOUCHER', '1a1dc91c907325c69271ddf0c944bc72', 1, 1),
(60, 'LEGOUPIL', 'William', 2, 'LEGOUPILW', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(61, 'HATCHUEL', 'Jules', 2, 'HATCHUELJ', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(62, 'BELABASSI', 'Omar', 2, 'BELABASSIO', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(63, 'MOUQUET', 'Adrien', 1, 'MOUQUETA', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(64, 'NAZIL', 'Ilyes', 1, 'NAZILI', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(65, 'PAUL', 'Timothee', 1, 'PAULT', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(66, 'PHILIPPE', 'Kevin', 1, 'PHILIPPEK', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(67, 'ROGER', 'Remi', 1, 'ROGERR', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(68, 'SIMONEAU', 'Quentin', 1, 'SIMONEAUQ', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(69, 'SONTOT', 'Alexis', 1, 'SONTOTA', '0073f85788f79f0781e31b3c05e40ff3', 1, 31.75),
(70, 'SOULIVET', 'Victor', 1, 'SOULIVETV', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(71, 'ZIANI', 'Yanis', 1, 'ZIANIY', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(72, 'ELIOR', '', 0, 'ELIOR', '1a1dc91c907325c69271ddf0c944bc72', 4, 0),
(85, 'MARTINET', 'Clement', 1, 'MARTINETC', '1a1dc91c907325c69271ddf0c944bc72', 1, 0),
(83, 'SONTOT', 'Clément', 2, 'SONTOTC', '1a1dc91c907325c69271ddf0c944bc72', 1, 10);

-- --------------------------------------------------------

--
-- Structure de la table `GSBLOT_Echantillon`
--

CREATE TABLE `GSBLOT_Echantillon` (
  `numeroEchantillon` int(11) NOT NULL,
  `numeroLotEcht` int(11) NOT NULL,
  `dateVisite` date DEFAULT NULL,
  `dateSortieStock` date DEFAULT NULL,
  `idUtilisateurEcht` int(11) DEFAULT NULL,
  `idMedecinEcht` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `GSBLOT_Echantillon`
--

INSERT INTO `GSBLOT_Echantillon` (`numeroEchantillon`, `numeroLotEcht`, `dateVisite`, `dateSortieStock`, `idUtilisateurEcht`, `idMedecinEcht`) VALUES
(1, 1, '2020-09-26', '2020-09-26', 2, 1),
(1, 2, '2020-09-26', '2020-09-26', 2, 1),
(1, 3, '2020-09-26', '2020-09-26', 2, 1),
(1, 4, '2020-09-26', '2020-09-26', 2, 1),
(1, 5, '2020-09-27', '2020-09-26', 2, 1),
(1, 6, '2020-09-26', '2020-09-26', 2, 1),
(1, 7, '2020-09-26', '2020-09-26', 2, 1),
(1, 8, '2020-09-26', '2020-09-26', 2, 1),
(1, 9, '2020-09-26', '2020-09-26', 2, 1),
(1, 10, '2020-09-27', '2020-09-26', 2, 1),
(1, 11, '2020-09-26', '2020-09-26', 2, 2),
(1, 12, '2020-09-26', '2020-09-26', 2, 2),
(1, 13, '2020-09-26', '2020-09-26', 2, 2),
(1, 14, '2020-09-26', '2020-09-26', 2, 2),
(1, 15, '2020-09-27', '2020-09-26', 2, 2),
(1, 16, '2020-09-26', '2020-09-26', 2, 2),
(1, 17, '2020-09-26', '2020-09-26', 2, 2),
(1, 18, '2020-09-26', '2020-09-26', 2, 2),
(1, 19, '2020-09-26', '2020-09-26', 2, 2),
(1, 20, '2020-09-27', '2020-09-26', 2, 2),
(1, 21, '2020-09-26', '2020-09-26', 2, 3),
(1, 22, '2020-09-26', '2020-09-26', 2, 3),
(1, 23, '2020-09-26', '2020-09-26', 2, 3),
(1, 24, '2020-09-26', '2020-09-26', 2, 3),
(1, 25, '2020-09-27', '2020-09-26', 2, 3),
(1, 26, '2020-09-26', '2020-09-26', 2, 3),
(1, 27, '2020-09-26', '2020-09-26', 2, 3),
(1, 28, '2020-09-26', '2020-09-26', 2, 3),
(1, 29, '2020-09-26', '2020-09-26', 2, 3),
(1, 30, '2020-09-27', '2020-09-26', 2, 3),
(1, 31, '2020-09-26', '2020-09-26', 2, 4),
(1, 32, '2020-09-26', '2020-09-26', 2, 4),
(1, 33, '2020-09-26', '2020-09-26', 2, 4),
(1, 34, '2020-09-26', '2020-09-26', 2, 4),
(1, 35, '2020-09-27', '2020-09-26', 2, 4),
(1, 36, '2020-09-26', '2020-09-26', 2, 4),
(1, 37, '2020-09-26', '2020-09-26', 2, 4),
(1, 38, '2020-09-26', '2020-09-26', 2, 4),
(1, 39, '2020-09-26', '2020-09-26', 2, 4),
(1, 40, '2020-09-27', '2020-09-26', 2, 4),
(1, 41, '2020-09-26', '2020-09-26', 2, 5),
(1, 42, '2020-09-26', '2020-09-26', 2, 5),
(1, 43, '2020-09-26', '2020-09-26', 2, 5),
(1, 44, '2020-09-26', '2020-09-26', 2, 5),
(1, 45, '2020-09-27', '2020-09-26', 2, 5),
(1, 46, '2020-09-26', '2020-09-26', 2, 5),
(1, 47, '2020-09-26', '2020-09-26', 2, 5),
(1, 48, '2020-09-26', '2020-09-26', 2, 5),
(1, 49, '2020-09-26', '2020-09-26', 2, 5),
(1, 50, '2020-09-27', '2020-09-26', 2, 5),
(1, 51, NULL, NULL, NULL, NULL),
(2, 1, '2020-09-26', '2020-09-26', 2, 3),
(2, 2, NULL, '2020-09-26', 2, NULL),
(2, 3, NULL, '2020-09-26', 2, NULL),
(2, 4, NULL, '2020-09-26', 2, NULL),
(2, 5, NULL, '2020-09-27', 2, NULL),
(2, 6, NULL, '2020-09-26', 2, NULL),
(2, 7, NULL, '2020-09-26', 2, NULL),
(2, 8, NULL, '2020-09-26', 2, NULL),
(2, 9, NULL, '2020-09-26', 2, NULL),
(2, 10, NULL, '2020-09-27', 2, NULL),
(2, 11, '2020-10-16', '2020-09-26', 2, 4),
(2, 12, NULL, '2020-09-26', 2, NULL),
(2, 13, NULL, '2020-09-26', 2, NULL),
(2, 14, NULL, '2020-09-26', 2, NULL),
(2, 15, NULL, '2020-09-27', 2, NULL),
(2, 16, NULL, '2020-09-26', 2, NULL),
(2, 17, NULL, '2020-09-26', 2, NULL),
(2, 18, NULL, '2020-09-26', 2, NULL),
(2, 19, NULL, '2020-09-26', 2, NULL),
(2, 20, NULL, '2020-09-26', 2, NULL),
(2, 21, NULL, '2020-09-26', 2, NULL),
(2, 22, NULL, '2020-09-26', 2, NULL),
(2, 23, NULL, '2020-09-26', 2, NULL),
(2, 24, NULL, '2020-09-26', 2, NULL),
(2, 25, NULL, '2020-09-27', 2, NULL),
(2, 26, NULL, '2020-09-26', 2, NULL),
(2, 27, NULL, '2020-09-26', 2, NULL),
(2, 28, NULL, '2020-09-26', 2, NULL),
(2, 29, NULL, '2020-09-26', 2, NULL),
(2, 30, NULL, '2020-09-27', 2, NULL),
(2, 31, NULL, '2020-09-26', 2, NULL),
(2, 32, NULL, '2020-09-26', 2, NULL),
(2, 33, NULL, '2020-09-26', 2, NULL),
(2, 34, NULL, '2020-09-26', 2, NULL),
(2, 35, NULL, '2020-09-27', 2, NULL),
(2, 36, NULL, '2020-09-26', 2, NULL),
(2, 37, NULL, '2020-09-26', 2, NULL),
(2, 38, NULL, '2020-09-26', 2, NULL),
(2, 39, NULL, '2020-09-26', 2, NULL),
(2, 40, NULL, '2020-09-27', 2, NULL),
(2, 41, NULL, '2020-09-26', 2, NULL),
(2, 42, NULL, '2020-09-26', 2, NULL),
(2, 43, NULL, '2020-09-26', 2, NULL),
(2, 44, NULL, '2020-09-26', 2, NULL),
(2, 45, NULL, '2020-09-27', 2, NULL),
(2, 46, NULL, '2020-09-26', 2, NULL),
(2, 47, NULL, '2020-09-26', 2, NULL),
(2, 48, NULL, '2020-09-26', 2, NULL),
(2, 49, NULL, '2020-09-26', 2, NULL),
(2, 50, NULL, '2020-09-27', 2, NULL),
(2, 51, NULL, NULL, NULL, NULL),
(3, 1, NULL, NULL, NULL, NULL),
(3, 2, NULL, NULL, NULL, NULL),
(3, 3, NULL, NULL, NULL, NULL),
(3, 4, NULL, NULL, NULL, NULL),
(3, 5, NULL, NULL, NULL, NULL),
(3, 6, NULL, NULL, NULL, NULL),
(3, 7, NULL, NULL, NULL, NULL),
(3, 8, NULL, NULL, NULL, NULL),
(3, 9, NULL, NULL, NULL, NULL),
(3, 10, NULL, NULL, NULL, NULL),
(3, 11, NULL, NULL, NULL, NULL),
(3, 12, NULL, NULL, NULL, NULL),
(3, 13, NULL, NULL, NULL, NULL),
(3, 14, NULL, NULL, NULL, NULL),
(3, 15, NULL, '2020-09-26', 2, NULL),
(3, 16, NULL, NULL, NULL, NULL),
(3, 17, NULL, NULL, NULL, NULL),
(3, 18, NULL, NULL, NULL, NULL),
(3, 19, NULL, NULL, NULL, NULL),
(3, 20, NULL, NULL, NULL, NULL),
(3, 21, NULL, NULL, NULL, NULL),
(3, 22, NULL, NULL, NULL, NULL),
(3, 23, NULL, NULL, NULL, NULL),
(3, 24, NULL, NULL, NULL, NULL),
(3, 25, NULL, NULL, NULL, NULL),
(3, 26, NULL, NULL, NULL, NULL),
(3, 27, NULL, NULL, NULL, NULL),
(3, 28, NULL, NULL, NULL, NULL),
(3, 29, NULL, NULL, NULL, NULL),
(3, 30, NULL, NULL, NULL, NULL),
(3, 31, NULL, NULL, NULL, NULL),
(3, 32, NULL, NULL, NULL, NULL),
(3, 33, NULL, NULL, NULL, NULL),
(3, 34, NULL, NULL, NULL, NULL),
(3, 35, NULL, NULL, NULL, NULL),
(3, 36, NULL, NULL, NULL, NULL),
(3, 37, NULL, NULL, NULL, NULL),
(3, 38, NULL, NULL, NULL, NULL),
(3, 39, NULL, NULL, NULL, NULL),
(3, 40, NULL, NULL, NULL, NULL),
(3, 41, NULL, NULL, NULL, NULL),
(3, 42, NULL, NULL, NULL, NULL),
(3, 43, NULL, NULL, NULL, NULL),
(3, 44, NULL, NULL, NULL, NULL),
(3, 45, NULL, NULL, NULL, NULL),
(3, 46, NULL, NULL, NULL, NULL),
(3, 47, NULL, NULL, NULL, NULL),
(3, 48, NULL, NULL, NULL, NULL),
(3, 49, NULL, NULL, NULL, NULL),
(3, 50, NULL, NULL, NULL, NULL),
(3, 51, NULL, NULL, NULL, NULL),
(4, 1, NULL, NULL, NULL, NULL),
(4, 2, NULL, NULL, NULL, NULL),
(4, 3, NULL, NULL, NULL, NULL),
(4, 4, NULL, NULL, NULL, NULL),
(4, 5, NULL, NULL, NULL, NULL),
(4, 6, NULL, NULL, NULL, NULL),
(4, 7, NULL, NULL, NULL, NULL),
(4, 8, NULL, NULL, NULL, NULL),
(4, 9, NULL, NULL, NULL, NULL),
(4, 10, NULL, NULL, NULL, NULL),
(4, 11, NULL, NULL, NULL, NULL),
(4, 12, NULL, NULL, NULL, NULL),
(4, 13, NULL, NULL, NULL, NULL),
(4, 14, NULL, NULL, NULL, NULL),
(4, 15, '2020-10-16', '2020-09-26', 2, 4),
(4, 16, NULL, NULL, NULL, NULL),
(4, 17, NULL, NULL, NULL, NULL),
(4, 18, NULL, NULL, NULL, NULL),
(4, 19, NULL, NULL, NULL, NULL),
(4, 20, NULL, NULL, NULL, NULL),
(4, 21, NULL, NULL, NULL, NULL),
(4, 22, NULL, NULL, NULL, NULL),
(4, 23, NULL, NULL, NULL, NULL),
(4, 24, NULL, NULL, NULL, NULL),
(4, 25, NULL, NULL, NULL, NULL),
(4, 26, NULL, NULL, NULL, NULL),
(4, 27, NULL, NULL, NULL, NULL),
(4, 28, NULL, NULL, NULL, NULL),
(4, 29, NULL, NULL, NULL, NULL),
(4, 30, NULL, NULL, NULL, NULL),
(4, 31, NULL, NULL, NULL, NULL),
(4, 32, NULL, NULL, NULL, NULL),
(4, 33, NULL, NULL, NULL, NULL),
(4, 34, NULL, NULL, NULL, NULL),
(4, 35, NULL, NULL, NULL, NULL),
(4, 36, NULL, NULL, NULL, NULL),
(4, 37, NULL, NULL, NULL, NULL),
(4, 38, NULL, NULL, NULL, NULL),
(4, 39, NULL, NULL, NULL, NULL),
(4, 40, NULL, NULL, NULL, NULL),
(4, 41, NULL, NULL, NULL, NULL),
(4, 42, NULL, NULL, NULL, NULL),
(4, 43, NULL, NULL, NULL, NULL),
(4, 44, NULL, NULL, NULL, NULL),
(4, 45, NULL, NULL, NULL, NULL),
(4, 46, NULL, NULL, NULL, NULL),
(4, 47, NULL, NULL, NULL, NULL),
(4, 48, NULL, NULL, NULL, NULL),
(4, 49, NULL, NULL, NULL, NULL),
(4, 50, NULL, NULL, NULL, NULL),
(4, 51, NULL, NULL, NULL, NULL),
(5, 1, NULL, NULL, NULL, NULL),
(5, 2, NULL, NULL, NULL, NULL),
(5, 3, NULL, NULL, NULL, NULL),
(5, 4, NULL, NULL, NULL, NULL),
(5, 5, NULL, NULL, NULL, NULL),
(5, 6, NULL, NULL, NULL, NULL),
(5, 7, NULL, NULL, NULL, NULL),
(5, 8, NULL, NULL, NULL, NULL),
(5, 9, NULL, NULL, NULL, NULL),
(5, 10, NULL, NULL, NULL, NULL),
(5, 11, NULL, NULL, NULL, NULL),
(5, 12, NULL, NULL, NULL, NULL),
(5, 13, NULL, NULL, NULL, NULL),
(5, 14, NULL, NULL, NULL, NULL),
(5, 15, NULL, '2020-09-26', 2, NULL),
(5, 16, NULL, NULL, NULL, NULL),
(5, 17, NULL, NULL, NULL, NULL),
(5, 18, NULL, NULL, NULL, NULL),
(5, 19, NULL, NULL, NULL, NULL),
(5, 20, NULL, NULL, NULL, NULL),
(5, 21, NULL, NULL, NULL, NULL),
(5, 22, NULL, NULL, NULL, NULL),
(5, 23, NULL, NULL, NULL, NULL),
(5, 24, NULL, NULL, NULL, NULL),
(5, 25, NULL, NULL, NULL, NULL),
(5, 26, NULL, NULL, NULL, NULL),
(5, 27, NULL, NULL, NULL, NULL),
(5, 28, NULL, NULL, NULL, NULL),
(5, 29, NULL, NULL, NULL, NULL),
(5, 30, NULL, NULL, NULL, NULL),
(5, 31, NULL, NULL, NULL, NULL),
(5, 32, NULL, NULL, NULL, NULL),
(5, 33, NULL, NULL, NULL, NULL),
(5, 34, NULL, NULL, NULL, NULL),
(5, 35, NULL, NULL, NULL, NULL),
(5, 36, NULL, NULL, NULL, NULL),
(5, 37, NULL, NULL, NULL, NULL),
(5, 38, NULL, NULL, NULL, NULL),
(5, 39, NULL, NULL, NULL, NULL),
(5, 40, NULL, NULL, NULL, NULL),
(5, 41, NULL, NULL, NULL, NULL),
(5, 42, NULL, NULL, NULL, NULL),
(5, 43, NULL, NULL, NULL, NULL),
(5, 44, NULL, NULL, NULL, NULL),
(5, 45, NULL, NULL, NULL, NULL),
(5, 46, NULL, NULL, NULL, NULL),
(5, 47, NULL, NULL, NULL, NULL),
(5, 48, NULL, NULL, NULL, NULL),
(5, 49, NULL, NULL, NULL, NULL),
(5, 50, NULL, NULL, NULL, NULL),
(5, 51, NULL, NULL, NULL, NULL),
(6, 1, NULL, NULL, NULL, NULL),
(6, 2, NULL, NULL, NULL, NULL),
(6, 3, NULL, NULL, NULL, NULL),
(6, 4, NULL, NULL, NULL, NULL),
(6, 5, NULL, NULL, NULL, NULL),
(6, 6, NULL, NULL, NULL, NULL),
(6, 7, NULL, NULL, NULL, NULL),
(6, 8, NULL, NULL, NULL, NULL),
(6, 9, NULL, NULL, NULL, NULL),
(6, 10, NULL, NULL, NULL, NULL),
(6, 11, NULL, NULL, NULL, NULL),
(6, 12, NULL, NULL, NULL, NULL),
(6, 13, NULL, NULL, NULL, NULL),
(6, 14, NULL, NULL, NULL, NULL),
(6, 15, NULL, '2020-09-26', 2, NULL),
(6, 16, NULL, NULL, NULL, NULL),
(6, 17, NULL, NULL, NULL, NULL),
(6, 18, NULL, NULL, NULL, NULL),
(6, 19, NULL, NULL, NULL, NULL),
(6, 20, NULL, NULL, NULL, NULL),
(6, 21, NULL, NULL, NULL, NULL),
(6, 22, NULL, NULL, NULL, NULL),
(6, 23, NULL, NULL, NULL, NULL),
(6, 24, NULL, NULL, NULL, NULL),
(6, 25, NULL, NULL, NULL, NULL),
(6, 26, NULL, NULL, NULL, NULL),
(6, 27, NULL, NULL, NULL, NULL),
(6, 28, NULL, NULL, NULL, NULL),
(6, 29, NULL, NULL, NULL, NULL),
(6, 30, NULL, NULL, NULL, NULL),
(6, 31, NULL, NULL, NULL, NULL),
(6, 32, NULL, NULL, NULL, NULL),
(6, 33, NULL, NULL, NULL, NULL),
(6, 34, NULL, NULL, NULL, NULL),
(6, 35, NULL, NULL, NULL, NULL),
(6, 36, NULL, NULL, NULL, NULL),
(6, 37, NULL, NULL, NULL, NULL),
(6, 38, NULL, NULL, NULL, NULL),
(6, 39, NULL, NULL, NULL, NULL),
(6, 40, NULL, NULL, NULL, NULL),
(6, 41, NULL, NULL, NULL, NULL),
(6, 42, NULL, NULL, NULL, NULL),
(6, 43, NULL, NULL, NULL, NULL),
(6, 44, NULL, NULL, NULL, NULL),
(6, 45, NULL, NULL, NULL, NULL),
(6, 46, NULL, NULL, NULL, NULL),
(6, 47, NULL, NULL, NULL, NULL),
(6, 48, NULL, NULL, NULL, NULL),
(6, 49, NULL, NULL, NULL, NULL),
(6, 50, NULL, NULL, NULL, NULL),
(6, 51, NULL, NULL, NULL, NULL),
(7, 1, NULL, NULL, NULL, NULL),
(7, 2, NULL, NULL, NULL, NULL),
(7, 3, NULL, NULL, NULL, NULL),
(7, 4, NULL, NULL, NULL, NULL),
(7, 5, NULL, NULL, NULL, NULL),
(7, 6, NULL, NULL, NULL, NULL),
(7, 7, NULL, NULL, NULL, NULL),
(7, 8, NULL, NULL, NULL, NULL),
(7, 9, NULL, NULL, NULL, NULL),
(7, 10, NULL, NULL, NULL, NULL),
(7, 12, NULL, NULL, NULL, NULL),
(7, 13, NULL, NULL, NULL, NULL),
(7, 14, NULL, NULL, NULL, NULL),
(7, 15, NULL, '2020-09-26', 2, NULL),
(7, 16, NULL, NULL, NULL, NULL),
(7, 17, NULL, NULL, NULL, NULL),
(7, 18, NULL, NULL, NULL, NULL),
(7, 19, NULL, NULL, NULL, NULL),
(7, 20, NULL, NULL, NULL, NULL),
(7, 21, NULL, NULL, NULL, NULL),
(7, 22, NULL, NULL, NULL, NULL),
(7, 23, NULL, NULL, NULL, NULL),
(7, 24, NULL, NULL, NULL, NULL),
(7, 25, NULL, NULL, NULL, NULL),
(7, 26, NULL, NULL, NULL, NULL),
(7, 27, NULL, NULL, NULL, NULL),
(7, 28, NULL, NULL, NULL, NULL),
(7, 29, NULL, NULL, NULL, NULL),
(7, 30, NULL, NULL, NULL, NULL),
(7, 31, NULL, NULL, NULL, NULL),
(7, 32, NULL, NULL, NULL, NULL),
(7, 33, NULL, NULL, NULL, NULL),
(7, 34, NULL, NULL, NULL, NULL),
(7, 35, NULL, NULL, NULL, NULL),
(7, 36, NULL, NULL, NULL, NULL),
(7, 37, NULL, NULL, NULL, NULL),
(7, 38, NULL, NULL, NULL, NULL),
(7, 39, NULL, NULL, NULL, NULL),
(7, 40, NULL, NULL, NULL, NULL),
(7, 41, NULL, NULL, NULL, NULL),
(7, 42, NULL, NULL, NULL, NULL),
(7, 43, NULL, NULL, NULL, NULL),
(7, 44, NULL, NULL, NULL, NULL),
(7, 45, NULL, NULL, NULL, NULL),
(7, 46, NULL, NULL, NULL, NULL),
(7, 47, NULL, NULL, NULL, NULL),
(7, 48, NULL, NULL, NULL, NULL),
(7, 49, NULL, NULL, NULL, NULL),
(7, 50, NULL, NULL, NULL, NULL),
(7, 51, NULL, NULL, NULL, NULL),
(8, 1, NULL, NULL, NULL, NULL),
(8, 2, NULL, NULL, NULL, NULL),
(8, 3, NULL, NULL, NULL, NULL),
(8, 4, NULL, NULL, NULL, NULL),
(8, 5, NULL, NULL, NULL, NULL),
(8, 6, NULL, NULL, NULL, NULL),
(8, 7, NULL, NULL, NULL, NULL),
(8, 8, NULL, NULL, NULL, NULL),
(8, 9, NULL, NULL, NULL, NULL),
(8, 10, NULL, NULL, NULL, NULL),
(8, 12, NULL, NULL, NULL, NULL),
(8, 13, NULL, NULL, NULL, NULL),
(8, 14, NULL, NULL, NULL, NULL),
(8, 15, NULL, '2020-09-26', 2, NULL),
(8, 16, NULL, NULL, NULL, NULL),
(8, 17, NULL, NULL, NULL, NULL),
(8, 18, NULL, NULL, NULL, NULL),
(8, 19, NULL, NULL, NULL, NULL),
(8, 20, NULL, NULL, NULL, NULL),
(8, 21, NULL, NULL, NULL, NULL),
(8, 22, NULL, NULL, NULL, NULL),
(8, 23, NULL, NULL, NULL, NULL),
(8, 24, NULL, NULL, NULL, NULL),
(8, 25, NULL, NULL, NULL, NULL),
(8, 26, NULL, NULL, NULL, NULL),
(8, 27, NULL, NULL, NULL, NULL),
(8, 28, NULL, NULL, NULL, NULL),
(8, 29, NULL, NULL, NULL, NULL),
(8, 30, NULL, NULL, NULL, NULL),
(8, 31, NULL, NULL, NULL, NULL),
(8, 32, NULL, NULL, NULL, NULL),
(8, 33, NULL, NULL, NULL, NULL),
(8, 34, NULL, NULL, NULL, NULL),
(8, 35, NULL, NULL, NULL, NULL),
(8, 36, NULL, NULL, NULL, NULL),
(8, 37, NULL, NULL, NULL, NULL),
(8, 38, NULL, NULL, NULL, NULL),
(8, 39, NULL, NULL, NULL, NULL),
(8, 40, NULL, NULL, NULL, NULL),
(8, 41, NULL, NULL, NULL, NULL),
(8, 42, NULL, NULL, NULL, NULL),
(8, 43, NULL, NULL, NULL, NULL),
(8, 44, NULL, NULL, NULL, NULL),
(8, 45, NULL, NULL, NULL, NULL),
(8, 46, NULL, NULL, NULL, NULL),
(8, 47, NULL, NULL, NULL, NULL),
(8, 48, NULL, NULL, NULL, NULL),
(8, 49, NULL, NULL, NULL, NULL),
(8, 50, NULL, NULL, NULL, NULL),
(8, 51, NULL, NULL, NULL, NULL),
(9, 1, NULL, NULL, NULL, NULL),
(9, 2, NULL, NULL, NULL, NULL),
(9, 3, NULL, NULL, NULL, NULL),
(9, 4, NULL, NULL, NULL, NULL),
(9, 5, NULL, NULL, NULL, NULL),
(9, 6, NULL, NULL, NULL, NULL),
(9, 7, NULL, NULL, NULL, NULL),
(9, 8, NULL, NULL, NULL, NULL),
(9, 9, NULL, NULL, NULL, NULL),
(9, 10, NULL, NULL, NULL, NULL),
(9, 12, NULL, NULL, NULL, NULL),
(9, 13, NULL, NULL, NULL, NULL),
(9, 14, NULL, NULL, NULL, NULL),
(9, 15, NULL, '2020-09-26', 2, NULL),
(9, 16, NULL, NULL, NULL, NULL),
(9, 17, NULL, NULL, NULL, NULL),
(9, 18, NULL, NULL, NULL, NULL),
(9, 19, NULL, NULL, NULL, NULL),
(9, 20, NULL, NULL, NULL, NULL),
(9, 21, NULL, NULL, NULL, NULL),
(9, 22, NULL, NULL, NULL, NULL),
(9, 23, NULL, NULL, NULL, NULL),
(9, 24, NULL, NULL, NULL, NULL),
(9, 25, NULL, NULL, NULL, NULL),
(9, 26, NULL, NULL, NULL, NULL),
(9, 27, NULL, NULL, NULL, NULL),
(9, 28, NULL, NULL, NULL, NULL),
(9, 29, NULL, NULL, NULL, NULL),
(9, 30, NULL, NULL, NULL, NULL),
(9, 31, NULL, NULL, NULL, NULL),
(9, 32, NULL, NULL, NULL, NULL),
(9, 33, NULL, NULL, NULL, NULL),
(9, 34, NULL, NULL, NULL, NULL),
(9, 35, NULL, NULL, NULL, NULL),
(9, 36, NULL, NULL, NULL, NULL),
(9, 37, NULL, NULL, NULL, NULL),
(9, 38, NULL, NULL, NULL, NULL),
(9, 39, NULL, NULL, NULL, NULL),
(9, 40, NULL, NULL, NULL, NULL),
(9, 41, NULL, NULL, NULL, NULL),
(9, 42, NULL, NULL, NULL, NULL),
(9, 43, NULL, NULL, NULL, NULL),
(9, 44, NULL, NULL, NULL, NULL),
(9, 45, NULL, NULL, NULL, NULL),
(9, 46, NULL, NULL, NULL, NULL),
(9, 47, NULL, NULL, NULL, NULL),
(9, 48, NULL, NULL, NULL, NULL),
(9, 49, NULL, NULL, NULL, NULL),
(9, 50, NULL, NULL, NULL, NULL),
(9, 51, NULL, NULL, NULL, NULL),
(10, 1, NULL, NULL, NULL, NULL),
(10, 2, NULL, NULL, NULL, NULL),
(10, 3, NULL, NULL, NULL, NULL),
(10, 4, NULL, NULL, NULL, NULL),
(10, 5, NULL, NULL, NULL, NULL),
(10, 6, NULL, NULL, NULL, NULL),
(10, 7, NULL, NULL, NULL, NULL),
(10, 8, NULL, NULL, NULL, NULL),
(10, 9, NULL, NULL, NULL, NULL),
(10, 10, NULL, NULL, NULL, NULL),
(10, 12, NULL, NULL, NULL, NULL),
(10, 13, NULL, NULL, NULL, NULL),
(10, 14, NULL, NULL, NULL, NULL),
(10, 15, NULL, '2020-09-26', 2, NULL),
(10, 16, NULL, NULL, NULL, NULL),
(10, 17, NULL, NULL, NULL, NULL),
(10, 18, NULL, NULL, NULL, NULL),
(10, 19, NULL, NULL, NULL, NULL),
(10, 20, NULL, NULL, NULL, NULL),
(10, 21, NULL, NULL, NULL, NULL),
(10, 22, NULL, NULL, NULL, NULL),
(10, 23, NULL, NULL, NULL, NULL),
(10, 24, NULL, NULL, NULL, NULL),
(10, 25, NULL, NULL, NULL, NULL),
(10, 26, NULL, NULL, NULL, NULL),
(10, 27, NULL, NULL, NULL, NULL),
(10, 28, NULL, NULL, NULL, NULL),
(10, 29, NULL, NULL, NULL, NULL),
(10, 30, NULL, NULL, NULL, NULL),
(10, 31, NULL, NULL, NULL, NULL),
(10, 32, NULL, NULL, NULL, NULL),
(10, 33, NULL, NULL, NULL, NULL),
(10, 34, NULL, NULL, NULL, NULL),
(10, 35, NULL, NULL, NULL, NULL),
(10, 36, NULL, NULL, NULL, NULL),
(10, 37, NULL, NULL, NULL, NULL),
(10, 38, NULL, NULL, NULL, NULL),
(10, 39, NULL, NULL, NULL, NULL),
(10, 40, NULL, NULL, NULL, NULL),
(10, 41, NULL, NULL, NULL, NULL),
(10, 42, NULL, NULL, NULL, NULL),
(10, 43, NULL, NULL, NULL, NULL),
(10, 44, NULL, NULL, NULL, NULL),
(10, 45, NULL, NULL, NULL, NULL),
(10, 46, NULL, NULL, NULL, NULL),
(10, 47, NULL, NULL, NULL, NULL),
(10, 48, NULL, NULL, NULL, NULL),
(10, 49, NULL, NULL, NULL, NULL),
(10, 50, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `GSBLOT_lot`
--

CREATE TABLE `GSBLOT_lot` (
  `numeroLot` int(11) NOT NULL,
  `dateFabrication` date DEFAULT NULL,
  `nbEchantillon` int(11) DEFAULT NULL,
  `idMedicamentLot` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `GSBLOT_lot`
--

INSERT INTO `GSBLOT_lot` (`numeroLot`, `dateFabrication`, `nbEchantillon`, `idMedicamentLot`) VALUES
(1, '2020-09-16', 10, 1),
(2, '2020-09-26', 10, 1),
(3, '2020-09-25', 10, 1),
(4, '2020-09-25', 10, 1),
(5, '2020-09-25', 10, 1),
(6, '2020-09-25', 10, 2),
(7, '2020-09-25', 10, 2),
(8, '2020-09-25', 10, 2),
(9, '2020-09-25', 10, 2),
(10, '2020-09-25', 10, 2),
(11, '2020-09-25', 10, 3),
(12, '2020-09-25', 10, 3),
(13, '2020-09-25', 10, 3),
(14, '2020-09-25', 10, 3),
(15, '2020-09-25', 10, 3),
(16, '2020-09-25', 10, 4),
(17, '2020-09-25', 10, 4),
(18, '2020-09-25', 10, 4),
(19, '2020-09-25', 10, 4),
(20, '2020-09-25', 10, 4),
(21, '2020-09-25', 10, 5),
(22, '2020-09-25', 10, 5),
(23, '2020-09-25', 10, 5),
(24, '2020-09-25', 10, 5),
(25, '2020-09-25', 10, 5),
(26, '2020-09-25', 10, 6),
(27, '2020-09-25', 10, 6),
(28, '2020-09-25', 10, 6),
(29, '2020-09-25', 10, 6),
(30, '2020-09-25', 10, 6),
(31, '2020-09-25', 10, 7),
(32, '2020-09-25', 10, 7),
(33, '2020-09-25', 10, 7),
(34, '2020-09-25', 10, 7),
(35, '2020-09-25', 10, 7),
(36, '2020-09-25', 10, 8),
(37, '2020-09-25', 10, 8),
(38, '2020-09-25', 10, 8),
(39, '2020-09-25', 10, 8),
(40, '2020-09-25', 10, 8),
(41, '2020-09-25', 10, 9),
(42, '2020-09-25', 10, 9),
(43, '2020-09-25', 10, 9),
(44, '2020-09-25', 10, 9),
(45, '2020-09-25', 10, 9),
(46, '2020-09-25', 10, 10),
(47, '2020-09-25', 10, 10),
(48, '2020-09-25', 10, 10),
(49, '2020-09-25', 10, 10),
(50, '2020-09-25', 10, 10),
(51, '2020-09-25', 10, 10);

-- --------------------------------------------------------

--
-- Structure de la table `GSBLOT_Medecin`
--

CREATE TABLE `GSBLOT_Medecin` (
  `idMedecin` int(11) NOT NULL,
  `nomMedecin` varchar(50) COLLATE latin1_general_cs DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `GSBLOT_Medecin`
--

INSERT INTO `GSBLOT_Medecin` (`idMedecin`, `nomMedecin`) VALUES
(1, 'Kenshiro'),
(2, 'perplexe'),
(3, 'Cherchpatator'),
(4, 'griffith'),
(5, 'giovanna');

-- --------------------------------------------------------

--
-- Structure de la table `GSBLOT_Medicament`
--

CREATE TABLE `GSBLOT_Medicament` (
  `idMedicament` int(11) NOT NULL,
  `libelleMedicament` varchar(100) COLLATE latin1_general_cs DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `GSBLOT_Medicament`
--

INSERT INTO `GSBLOT_Medicament` (`idMedicament`, `libelleMedicament`) VALUES
(1, 'Nepalseum'),
(2, 'Norag 500'),
(3, 'Belzethium'),
(4, 'Animéine '),
(5, 'Yaoine'),
(6, 'isékaïne'),
(7, 'Harémine'),
(8, 'Yurïnol'),
(9, 'shonique'),
(10, 'Tentaclol');

-- --------------------------------------------------------

--
-- Structure de la table `GSBLOT_typeUtilisateur`
--

CREATE TABLE `GSBLOT_typeUtilisateur` (
  `idType` int(11) NOT NULL,
  `libelleType` varchar(100) COLLATE latin1_general_cs DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `GSBLOT_typeUtilisateur`
--

INSERT INTO `GSBLOT_typeUtilisateur` (`idType`, `libelleType`) VALUES
(0, 'producteur'),
(1, 'magasinier'),
(2, 'visiteur');

-- --------------------------------------------------------

--
-- Structure de la table `GSBLOT_Utilisateur`
--

CREATE TABLE `GSBLOT_Utilisateur` (
  `idUtilisateur` int(11) NOT NULL,
  `nom` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `prenom` varchar(50) COLLATE latin1_general_cs DEFAULT NULL,
  `login` varchar(50) COLLATE latin1_general_cs NOT NULL,
  `mdp` varchar(255) COLLATE latin1_general_cs NOT NULL,
  `idTypeUtilisateur` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_general_cs;

--
-- Déchargement des données de la table `GSBLOT_Utilisateur`
--

INSERT INTO `GSBLOT_Utilisateur` (`idUtilisateur`, `nom`, `prenom`, `login`, `mdp`, `idTypeUtilisateur`) VALUES
(1, 'De Sisto', 'Lorenzo', 'DesistoL', 'bc50e20ddcfa65853c77ae01ffa859da', 0),
(2, 'Martinet', 'Clément', 'MartinetC', '5953df13ad679eb27a99478a732d72d5', 2),
(3, 'Sontot', 'Alexis', 'SontotA', 'a6e1f23f5b10fbce1d6e2eaac4092d6c', 1),
(4, 'Bon', 'Jean', 'bonJ', '622662bb21c3cc10ac23271639cf1a6e', 0),
(5, 'Zarella', 'Maude', 'ZarellaM', 'e144bec4729bbe7396bd9d94b4b842e0', 1),
(6, 'deufe', 'John', 'deufeJ', '*1BEBA422B405C1A2589F8E248D3D01C9F74C2C25', 2);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `EcoolDirect_Annee`
--
ALTER TABLE `EcoolDirect_Annee`
  ADD PRIMARY KEY (`idAnnee`);

--
-- Index pour la table `EcoolDirect_Matiere`
--
ALTER TABLE `EcoolDirect_Matiere`
  ADD PRIMARY KEY (`codeMat`);

--
-- Index pour la table `EcoolDirect_Note`
--
ALTER TABLE `EcoolDirect_Note`
  ADD PRIMARY KEY (`idNote`,`codeMatNote`),
  ADD KEY `codeMatNote` (`codeMatNote`),
  ADD KEY `idTriNote` (`idTriNote`),
  ADD KEY `idAnneeNote` (`idAnneeNote`),
  ADD KEY `idUtiNote` (`idUtiNote`);

--
-- Index pour la table `EcoolDirect_Trimestre`
--
ALTER TABLE `EcoolDirect_Trimestre`
  ADD PRIMARY KEY (`idTri`);

--
-- Index pour la table `EcoolDirect_Utilisateur`
--
ALTER TABLE `EcoolDirect_Utilisateur`
  ADD PRIMARY KEY (`idUt`);

--
-- Index pour la table `elior_commande`
--
ALTER TABLE `elior_commande`
  ADD PRIMARY KEY (`dateMenu`,`numMenu`,`idUtil`);

--
-- Index pour la table `elior_formule`
--
ALTER TABLE `elior_formule`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `elior_menu`
--
ALTER TABLE `elior_menu`
  ADD PRIMARY KEY (`dateMenu`,`numMenu`),
  ADD KEY `id_formule_menu` (`id_formule_menu`);

--
-- Index pour la table `elior_paiement`
--
ALTER TABLE `elior_paiement`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `elior_utilisateur`
--
ALTER TABLE `elior_utilisateur`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `GSBLOT_Echantillon`
--
ALTER TABLE `GSBLOT_Echantillon`
  ADD PRIMARY KEY (`numeroEchantillon`,`numeroLotEcht`),
  ADD KEY `numeroLotEcht` (`numeroLotEcht`),
  ADD KEY `idUtilisateurEcht` (`idUtilisateurEcht`),
  ADD KEY `idMedecinEcht` (`idMedecinEcht`);

--
-- Index pour la table `GSBLOT_lot`
--
ALTER TABLE `GSBLOT_lot`
  ADD PRIMARY KEY (`numeroLot`),
  ADD KEY `idMedicamentLot` (`idMedicamentLot`);

--
-- Index pour la table `GSBLOT_Medecin`
--
ALTER TABLE `GSBLOT_Medecin`
  ADD PRIMARY KEY (`idMedecin`);

--
-- Index pour la table `GSBLOT_Medicament`
--
ALTER TABLE `GSBLOT_Medicament`
  ADD PRIMARY KEY (`idMedicament`);

--
-- Index pour la table `GSBLOT_typeUtilisateur`
--
ALTER TABLE `GSBLOT_typeUtilisateur`
  ADD PRIMARY KEY (`idType`);

--
-- Index pour la table `GSBLOT_Utilisateur`
--
ALTER TABLE `GSBLOT_Utilisateur`
  ADD PRIMARY KEY (`idUtilisateur`),
  ADD KEY `idTypeUtilisateur` (`idTypeUtilisateur`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `elior_paiement`
--
ALTER TABLE `elior_paiement`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT pour la table `elior_utilisateur`
--
ALTER TABLE `elior_utilisateur`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=86;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `EcoolDirect_Note`
--
ALTER TABLE `EcoolDirect_Note`
  ADD CONSTRAINT `EcoolDirect_Note_ibfk_1` FOREIGN KEY (`codeMatNote`) REFERENCES `EcoolDirect_Matiere` (`codeMat`),
  ADD CONSTRAINT `EcoolDirect_Note_ibfk_2` FOREIGN KEY (`idTriNote`) REFERENCES `EcoolDirect_Trimestre` (`idTri`),
  ADD CONSTRAINT `EcoolDirect_Note_ibfk_3` FOREIGN KEY (`idAnneeNote`) REFERENCES `EcoolDirect_Annee` (`idAnnee`),
  ADD CONSTRAINT `EcoolDirect_Note_ibfk_4` FOREIGN KEY (`idUtiNote`) REFERENCES `EcoolDirect_Utilisateur` (`idUt`);

--
-- Contraintes pour la table `elior_menu`
--
ALTER TABLE `elior_menu`
  ADD CONSTRAINT `FK7` FOREIGN KEY (`id_formule_menu`) REFERENCES `elior_formule` (`id`);

--
-- Contraintes pour la table `GSBLOT_Echantillon`
--
ALTER TABLE `GSBLOT_Echantillon`
  ADD CONSTRAINT `GSBLOT_Echantillon_ibfk_1` FOREIGN KEY (`numeroLotEcht`) REFERENCES `GSBLOT_lot` (`numeroLot`),
  ADD CONSTRAINT `GSBLOT_Echantillon_ibfk_2` FOREIGN KEY (`idUtilisateurEcht`) REFERENCES `GSBLOT_Utilisateur` (`idUtilisateur`),
  ADD CONSTRAINT `GSBLOT_Echantillon_ibfk_3` FOREIGN KEY (`idMedecinEcht`) REFERENCES `GSBLOT_Medecin` (`idMedecin`);

--
-- Contraintes pour la table `GSBLOT_lot`
--
ALTER TABLE `GSBLOT_lot`
  ADD CONSTRAINT `GSBLOT_lot_ibfk_1` FOREIGN KEY (`idMedicamentLot`) REFERENCES `GSBLOT_Medicament` (`idMedicament`);

--
-- Contraintes pour la table `GSBLOT_Utilisateur`
--
ALTER TABLE `GSBLOT_Utilisateur`
  ADD CONSTRAINT `GSBLOT_Utilisateur_ibfk_1` FOREIGN KEY (`idTypeUtilisateur`) REFERENCES `GSBLOT_typeUtilisateur` (`idType`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
