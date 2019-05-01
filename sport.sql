-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 29 avr. 2019 à 16:41
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `sport`
--

-- --------------------------------------------------------

--
-- Structure de la table `admin`
--

DROP TABLE IF EXISTS `admin`;
CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(150) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nom` (`login`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `admin`
--

INSERT INTO `admin` (`id`, `login`, `password`) VALUES
(1, 'tata', '$2y$10$NGY4PU/MiklWS0fZB9NJpu2AXQdKrwT/KwxFZ5iFWHETIIe0/TyZS');

-- --------------------------------------------------------

--
-- Structure de la table `articles`
--

DROP TABLE IF EXISTS `articles`;
CREATE TABLE IF NOT EXISTS `articles` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titre` varchar(150) NOT NULL,
  `description` text NOT NULL,
  `image` varchar(100) NOT NULL,
  `date_creation` date NOT NULL,
  `publie` tinyint(1) NOT NULL,
  `nb_visites` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `nb_comm` int(11) UNSIGNED NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `articles`
--

INSERT INTO `articles` (`id`, `titre`, `description`, `image`, `date_creation`, `publie`, `nb_visites`, `nb_comm`) VALUES
(1, 'Le développé couché ou bench press pour se muscler les pectoraux', '<p>Qu’est-ce que le développé couché et pourquoi en faire ? Le développé couché (bench press en anglais) est l’exercice de référence pour la musculation des pectoraux. Cet exercice poly-articulaire permet de se muscler l’ensemble des muscles de la poitrine et plus particulièrement le muscle grand pectoral. Le développé couché qui fait partie des trois mouvement de force athlétique est très efficace pour prendre de la masse musculaire car il permet de travailler avec des charges lourdes.</p>\r\n<h3>Comment faire le développé couché ?</h3>\r\n<ul>\r\n<li>Allongé sur un banc horizontal, les fessiers en contact avec le banc, les pieds sur le banc, au sol ou jambes relevées.</li>\r\n<li>Prendre la barre, mains en pronation en prenant un écartement supérieur à la largeur des épaules.</li>\r\n<li>Inspirer et descendre la barre en contrôlant le mouvement jusqu’à la poitrine.</li>\r\n<li>Développer en expirant en fin d’effort.</li>\r\n</ul>', 'developpe-couche.jpg', '2019-03-04', 1, 6, 1),
(2, 'Le développé incliné pour se muscler le haut des pectoraux', '<p>Pourquoi faire du développé incliné ? Le développé incliné est l’exercice de référence pour se muscler le haut des pectoraux. Si comme la plupart des pratiquants de la musculation vous avez la partie supérieur de la poitrine moins développée que la partie inférieure, incorporez ce mouvement en début de séance pour rattraper le retard.</p>\r\n<h3>Comment faire le développé incliné à la barre ?</h3>\r\n<ul>\r\n<li>Allongé sur le dos sur un banc incliné entre 15° et 40°, placez les pieds à plat sur le sol ou sur une plateforme.</li>\r\n<li>Prendre la barre, mains en pronation, avec un écartement supérieur à celui des épaules.</li>\r\n<li>Inspirer et descendre lentement la barre jusqu’aux clavicules (haut des pectoraux) sans faire rebondir la barre sur la poitrine.</li>\r\n<li>Développer en inspirant à la fin du mouvement.</li>\r\n</ul>', 'developpe-incline.jpg', '2019-03-06', 1, 1, 0),
(3, 'Les écartés avec haltères pour se muscler les pectoraux', '<p>Les écartés avec haltères permettent d’isoler les muscles pectoraux. Ce mouvement avec haltères vous permet de travailler avec une amplitude maximum qui vous permet de bien étirer les muscles de la poitrine.</p>\r\n<h3>Comment faire des écartés couché avec haltères ?</h3>\r\n<ul>\r\n<li>Allongé sur un banc étroit pour ne pas gêner les mouvements des épaules, bras tendus ou coudes légèrement fléchis pour soulager l’articulation.</li>\r\n<li>Inspirer, puis écarter les bras jusqu’à l’horizontale.</li>\r\n<li>Relever les bras jusqu’à la verticale en expirant.</li>\r\n<li>Provoquer une petite contraction isométrique en fin de mouvement pour accentuer le travail sur la partie sternale des pectoraux.</li>\r\n</ul>', 'ecarte-halteres.jpg', '2019-03-19', 0, 0, 0),
(4, 'Les pompes ou push-up pour se muscler les pectoraux et les triceps', '<p>Qu’est-ce que les pompes et pourquoi en faire ? On peut affirmer que les pompes sont l’exercice de musculation le plus fondamental pour les pectoraux et les triceps. Elles peuvent être modifiées de manière à cibler les pectoraux sous tous les angles principaux. Les pompes en décliné (les pieds sont placés sur un banc ou autre surface stable) ciblent la partie claviculaire des pectoraux. Avec les mains plus écartées, vous travaillerez l’extérieur des pectoraux. Si vous les rapprochez, vous travaillerez plus le milieu des pectoraux. Si l’on pratique les quatre variantes ci-dessus sous forme de séries géantes (sorte de superset dans lequel chaque variante est plus facile que la précèdent) on augmente l’intensité, ce qui potentialise le développement musculaire.</p>\r\n<h3>Comment faire des pompes classique ?</h3>\r\n<ul>\r\n<li>Prenez une position en semi-pronation, avec les mains placées de chaque côté des épaules sur le sol.</li>\r\n<li>Les doigts doivent être pointés directement vers l’avant.</li>\r\n<li>Le corps doit être tendu (position anatomique normale) de la tête aux talons, avec la balle du pied et les orteils en appui sur le sol.</li>\r\n<li>Les mains doivent être placées sous les épaules et doivent apparaître en ligne verticale quand on se place sur un plan de vue latéral.</li>\r\n<li>Une fois que vous êtes prêt, inspirez profondément et inspirez en tendant les bras.</li>\r\n<li>Descendez ensuite le corps le plus près du sol en inspirant.</li>\r\n<li>Une fois que vous avez atteint cette position, ne vous arrêtez pas et repoussez votre corps avec vos bras jusqu’à ce qu’ils soient tendus.</li>\r\n<li>Gardez le corps rigide pendant tout l’exercice.</li>\r\n</ul>', 'pompes-au-sol.jpg', '2019-03-27', 0, 0, 0),
(5, 'Les 2 variantes des tractions à la barre fixe pour se muscler le dos', '<p>Les tractions en pronation et en supination sont souvent considérés comme étant le même exercice. Cependant, ce sont deux mouvements distincts qui sollicitent différents groupes musculaires. Spécifiquement, les tractions en supination (chin-up) mettent l’accent sur les biceps et la partie inférieure des dorsaux alors que les tractions en pronation (pull-up) sont utilisés principalement pour la partie supérieure des dorsaux.</p>\r\n<h3>Comment faire les pull-up ou tractions en pronation ?</h3>\r\n<ul>\r\n<li>Pour commencer, placez-vous sous la barre et veuillez à ce que vos bras soient bien tendus et que votre corps soit relâché. Tirez avec vos bras afin d’amener le menton au-dessus ou au niveau des mains.</li>\r\n<li>Descendez lentement jusqu’à la position de départ puis répétez le mouvement pour le nombre de répétitions requis.</li>\r\n<li>Inspirez profondément et expirez pendant que vous montez. Inspirez à nouveau en descendant.</li>\r\n</ul>', 'traction.jpg', '2019-03-29', 0, 4, 0),
(6, 'Le rowing à la barre buste penché pour se muscler le dos', '<p>Qu’est-ce que le rowing et pourquoi en faire ? Le rowing barre buste penché est un exercice de musculation polyarticulaire important pour le développement des muscles grand dorsal et des muscles du milieu du dos. Cet exercice permet aussi de travailler la partie postérieure des deltoïdes.</p>\r\n<h3>Comment faire le rowing barre ?</h3>\r\n<ul>\r\n<li>Debout, les pieds espacés d’une largeur environ égale à celle des épaules, saisissez une barre au sol devant vous avec les mains écartées d’une largeur supérieure à celle des épaules et les paumes face au corps. Avec les bras tendues, revenez à la position verticale en faisant un soulevé de terre correct.</li>\r\n<li>En gardant les genoux légèrement fléchis, penchez-vous en avant jusqu’à ce que votre buste soit entre la parallèle et environ 30° au dessus du plan horizontal, la tête relevée. La barre devrait pendre devant votre corps. C’est la position de départ.</li>\r\n<li>Inspirez et maintenez votre respiration en tirant la barre vers votre taille. Gardez les coudes à l’intérieur et près du corps de façon à ce qu’ils se déplacent vers l’arrière quand vous tirez la barre vers le haut.</li>\r\n<li>Concentrez-vous pour tirer avec les muscles du dos et des épaules et montez les coudes le plus haut possible. En haut, vos coudes devraient être bien au-dessus du niveau de votre dos.</li>\r\n<li>Assurez-vous de contracter vos muscles extenseurs du dos pour essayer de maintenir une cambrure normale de la colonne vertébrale.</li>\r\n<li>Maintenez votre respiration jusqu’à ce que vous arriviez à la fin du mouvement.</li>\r\n</ul>', 'rowing.jpg', '2019-04-01', 1, 3, 0),
(7, 'Le shrug incliné avec haltères pour se muscler le trapèzes', '<p>Le shrug incliné pour les trapèzes est une variante du shrug debout avec haltères. Cette version allongée sur un banc incliné vous permettra de diversifier votre entraînement tout en sollicitant davantage les trapèzes.</p>\r\n<h3>Comment faire le shrug incliné avec haltères ?\r\n</h3>\r\n<ul>\r\n<li>En décubitus ventral (allongé sur le ventre) sur un banc incliné à environ 35°. Placez la poitrine contre le banc et gardez les pieds au sol. Le menton doit être plus haut que l’extrémité du banc. Vous pouvez mettre les genoux sur le siège (les pieds étant décollés du sol) si vous trouvez cette position plus confortable.</li>\r\n<li>Tenez un haltère dans chaque main, les bras étant en extension et perpendiculaires au sol. Utilisez des sangles pour les poignets si votre prise a tendance à céder avant que vos trapèzes ne capitulent. Le tête et le cou doivent rester dans l’alignement de la colonne vertébrale.</li>\r\n<li>Inspirez profondément en montant vos épaules le plus haut possible, tout en gardant les bras détendus et les coudes en extension. Efforcez-vous de garder la tête et le cou stables, éviter de baisser le menton en haut du mouvement.</li>\r\n<li>Maintenez l’élévation maximale des épaules pendant 1 à 2 secondes puis expirez et revenez à la position de départ en contrôlant la descente des haltères.</li>\r\n<li>Marquez un temps d’arrêt, puis enchaînez avec la répétition suivante.</li>\r\n</ul>', 'shrugs-incline-1.jpg', '2019-04-03', 1, 2, 0),
(8, 'Le soulevé de terre ou deadlift pour se muscler le dos et les fessiers\r\n', '<p>Qu’est-ce que le soulevé de terre ? Le soulevé de terre (deadlift en anglais) est un mouvement de powerlifting très efficace qui permet de travailler quasiment tous les grands groupes musculaires du corps. Cet exercice est également pratiqué au CrossFit : l’extension de la hanche et les muscles qui sont sollicités jouent un rôle déterminant dans toutes les actions de stabilisation du buste, comme celles de soulever et de pousser ou quand on soulève une charge à partir du sol ou à partir des genoux.</p>\r\n<h3>Comment faire le soulevé de terre ?\r\n</h3>\r\n<ul>\r\n<li>Debout avec les pieds espacés à la largeur des épaules. Prenez une barre avec les deux mains en pronation (paumes dirigées vers vous).</li>\r\n<li>Inspirez et maintenez votre respiration en vous penchant en avant au niveau des hanches et en poussant en arrière, tout en dirigeant la pression vers le bas sur les talons.</li>\r\n<li>Penchez-vous en avant jusqu’à ce que votre buste soir parallèle au sol ou légèrement plus bas.</li>\r\n<li>Maintenez une cambrure normale au niveau de votre colonne vertébrale (une légère cambrure au niveau lombaire) et regardez en avant tout au long de l’exercice. Si vous commencez à arrondir le dos en vous penchant en avant, arrêtez immédiatement le mouvement.</li>\r\n<li>Lors de la flexion du buste, laissez glisser la barre sur vos cuisses et à peu près jusqu’à mi-hauteur de vos tibias.</li>\r\n<li>Une fois la position basse atteinte, continuez à retenir votre respiration et garder la cambrure au niveau lombaire en relavant le buste et en poussant vos hanches vers l’avant. En haut, vous devriez de nouveau être debout avec les épaules en arrière.</li>\r\n<li>Expirez après avoir passé la partie la plus difficile de l’ascension du mouvement (en haut).</li>\r\n</ul>', 'souleve-terre.jpg', '2019-04-09', 1, 3, 0),
(9, 'Les 4 variantes du curl à la barre pour se muscler les biceps', '<p>Pour augmenter le volume musculaire de vos bras, réalisez ces mouvements au début de votre entraînement de musculation, quand vous avez le plus de force pour prendre lourd ! Si vous avez des douleurs au niveau des poignets avec une barre droite, préférez la barre coudée aussi appelée barre EZ pour ne pas traumatiser vos articulations.</p>\r\n<h3>Comment faire le curl barre en supination ?\r\n</h3>\r\n<ul>\r\n<li>Debout, les pieds parallèles écartés à la largeur des épaules et légèrement tournés vers l’extérieur. Tenez une barre à bout de bras devant les cuisses, les mains en supination (paume vers le haut) écartées à peu près à la largeur des épaules.</li>\r\n<li>Inspirez profondément, bloquez votre respiration et montez la barre en fléchissant les coudes.</li>\r\n<li>Lors de la montée de la charge, gardez les coudes fixes et serrées contre le corps. Assurez-vous que vos mains restent dans l’alignement des avant-bras.</li>\r\n<li>Fléchissez les avant-bras à une cadence modérée. Expirez vers la fin de la flexion. Faites une pause brève en haut du mouvement (quand les mains sont à la hauteur de la partie supérieure des pectoraux).</li>\r\n<li>Descendez la barre en la contrôlant pour revenir à la position de départ, mais n’allez pas jusqu’à l’extension complète des bras. Effectuez toutes les répétitions.</li>\r\n<li>Gardez le buste vertical pendant toute la durée de l’exercice.</li>\r\n</ul>', 'curl-barre-ez.jpg', '2019-04-11', 1, 0, 0),
(10, 'Les 7 variantes du curl avec haltères pour se muscler les biceps', '<p>Si vous demandez à un bodybuilder s’il est fort, il vous montrera très certainement ces biceps. Ce muscle est en effet le plus symbolique de la force et également le plus facile à montrer. Il est aussi celui que l’on travaille le plus volontiers. Tous ceux qui pratiquent la musculation ont, d’une façon ou d’une autre, fait des curls.</p>\r\n<h2>Curl haltères avec rotation\r\n</h2>\r\n<p>Avec le curl en pronation, le biceps brachial est complètement sollicité, alors qu’avec le curl inversé (prise en pronation), l’angle de travail ne permet pas une implication complète. Le curl concentré est une technique un peu plus pointue, en ce sens qu’elle nécessite un positionnement bien précis et exige, comme son nom l’indique, une parfaite concentration tout au long de son exécution.\r\n\r\nDans tous ces exercices, il s’agit d’une flexion du coude, l’une des actions principales du biceps (biceps brachial et brachial antérieur). Cependant, de nombreuses personnes oublient une autre action très importante : la supination (rotation amenant la paume vers le haut). Ce mouvement n’est pas très perceptible lorsque le bras est tendu, mais devient important quand le coude est fléchi à 90°. Ceci est très facile à vérifier : fléchissez le bras et contractez bien votre biceps. À ce moment, tournez votre main vers l’extérieur au maximum (petit doigt vers l’épaule), vous constaterez que vous pouvez ajouter encore un peu plus de contraction. La combinaison flexion/supination que permet le curl haltères avec rotation est la clé pour développer complètement le biceps.</p>\r\n<h3>Comment faire le curl avec rotation ?</h3>\r\n<ul>\r\n<li>Debout ou assis, les pieds suffisamment écartés pour assurer une position stable, gardez les bras tendus de chaque côté du corps, un haltère dans chaque main (les paumes sont tournées vers l’intérieur contre les cuisses).</li>\r\n<li>Gardez le buste bien droit et fléchissez le bras.</li>\r\n<li>Lorsque la flexion atteint 90°, faites une rotation de l’avant-bras pour amener la paume de la main vers le haut.</li>\r\n<li>Continuez la flexion, redescendez la charge d’un mouvement inverse.</li>\r\n</ul>\r\n', 'curl-haltere-1.jpg', '2019-04-15', 1, 8, 0),
(11, 'Les 4 variantes des extensions verticales pour se muscler les triceps', '<p>Extension verticale avec haltère. Parce que vous pouvez modifier votre prise sur l’haltère pendant l’exécution, l’extension verticale haltère est un exercice qui permet un développement complet du triceps. Ce mouvement joue un rôle très important en musculation pour augmenter la masse musculaire et la force, et pour obtenir une grande définition du triceps.</p>\r\n<h3>Exécution</h3>\r\n<ul>\r\n<li>Asseyez-vous sur un banc avec les pieds à plat sur le sol. D’une main prenez un haltère, gardez le buste droit et les yeux directement dirigés vers l’avant.</li>\r\n<li>Pliez le coude et levez le bras au-dessus de votre tête en laissant votre avant-bras et l’haltère pendre derrière de façon à ce que votre coude pointe directement vers le haut. Votre petit doigt devrait être en haut de la poignée de l’haltère.</li>\r\n<li>Inspirez profondément et gardez la partie supérieure de votre bras immobile, repoussez l’haltère vers le haut jusqu’à ce que votre bras soit complètement tendu. Votre petit doigt devrait pointer vers l’avant en supposant que vous utilisiez une prise neutre.</li>\r\n<li>Contractez fortement votre triceps tout en expirant, puis revenez en contrôlant vers la position de départ. Marquez une brève pause et recommencez pour faire le nombre requis de répétitions.</li>\r\n</ul>', 'extension-verticale.jpg', '2019-04-18', 1, 60, 0),
(12, 'Les dips entre deux bancs pour se muscler les triceps', '<div><br>Qu’est-ce que les dips entre deux bancs et pourquoi en faire ? Cet exercice de musculation permet de travailler les triceps au poids de corps avec deux bancs. Les dips entre deux bancs sont très efficaces pour travailler les triceps et techniquement, ils sont faciles à réaliser. Une fois que vous aurez compris le principe du mouvement, vous pourrez l’adapter sur d’autres supports, comme par exemple des chaises si vous vous entraînez à la maison. Les dips entre deux bancs permettent également de travailler la zone antérieure des épaules et la partie supérieure des pectoraux si vous faites cet exercice en amplitude complète.<br><br></div><div><strong><br>Comment faire des dips entre deux bancs ?<br></strong><br></div><ul><li>Placez deux bancs l’un en face de l’autre et distant de 80 cm à 1m.</li><li>Asseyez-vous au milieu d’un banc en plaçant les mains de chaque côté des hanches, les doigts agrippant le bord du banc et les coudes pointés vers l’arrière. Soutenez votre corps bras tendus et placez vos pieds sur l’autre banc. Pour augmenter la résistance, demandez à un partenaire de poser un disque de fonte sur vos cuisses.</li><li>Inspirez en fléchissant les coudes pour descendre lentement le haut du corps entre les deux bancs jusqu’à ce que vous sentiez l’étirement au niveau des triceps et des épaules.</li><li>Après avoir atteint la position la plus basse, retenez votre respiration et remontez jusqu’à ce que vos bras soient complètement tendus. Expirez en passant le point délicat de l’exercice lors de la montée ou quand vos bras sont complètement tendus.</li><li>Vous pouvez soit faire une une légère pause pour réaliser une peak contraction en haut ou faire le mouvement sans vous arrêter pour garder les muscles sous tension.</li><li>Regardez droit devant vous pendant tout l’exercice.</li></ul>', 'dips-deux-bancs.jpg', '2019-04-22', 1, 21, 1),
(24, 'Bonne correction Cécile', '<div>Et merci pour tous ces savoirs que tu nous as enseigné!!! Je me sens prêt pour attaquer le monde du dév et voler de mes propres ailes!<br>A bientôt!!!!</div>', 'laurent_nb.jpg', '2019-04-29', 1, 2, 0),
(25, 'Cécile une pédagogue qui fait aimer ses cours', '<div>Cécile tu es vraiment une personne formidable ce fut un plaisir d\'avoir appris avec toi tu m\'as fait aimer ton cours et ta personne avec belle et adorable plein de réussite pour toi et ce n\'est qu\'un au revoir à très vite pour de nouvelles aventures</div>', 'IMG-20190207-WA0002.jpeg', '2019-04-29', 1, 0, 0);

-- --------------------------------------------------------

--
-- Structure de la table `commentaires`
--

DROP TABLE IF EXISTS `commentaires`;
CREATE TABLE IF NOT EXISTS `commentaires` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pseudo` varchar(150) NOT NULL,
  `email` varchar(200) NOT NULL,
  `commentaire` text NOT NULL,
  `id_article` int(11) NOT NULL,
  `date` date NOT NULL,
  `publie` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `id_article` (`id_article`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `commentaires`
--

INSERT INTO `commentaires` (`id`, `pseudo`, `email`, `commentaire`, `id_article`, `date`, `publie`) VALUES
(2, 'Laurent PICHON', 'laurent.pichon59@hotmail.fr', 'J\'adore quand ça pique!!', 12, '2019-04-24', 1),
(12, 'Julien', 'julien@outlook.com', 'J\'aime bien le développé couché!!!', 1, '2019-04-29', 1),
(13, 'François', 'franc@yahoo.fr', 'J\'ai tout le temps mal aux épaules quand je fais ça, ça vous arrive aussi?', 2, '2019-04-29', 0),
(14, 'Julie', 'juju@hotmail.fr', 'Ce mouvement est parfait pour le dos, mais à réaliser prudemment!!', 8, '2019-04-29', 0),
(16, 'Pierro l\'costaud', 'pierre59@hotmail.com', 'Explosion des trapèzes assuré!!!', 7, '2019-04-29', 0);

-- --------------------------------------------------------

--
-- Structure de la table `comm_supprime`
--

DROP TABLE IF EXISTS `comm_supprime`;
CREATE TABLE IF NOT EXISTS `comm_supprime` (
  `compteur` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `comm_supprime`
--

INSERT INTO `comm_supprime` (`compteur`) VALUES
(13);

-- --------------------------------------------------------

--
-- Structure de la table `nb_visiteurs`
--

DROP TABLE IF EXISTS `nb_visiteurs`;
CREATE TABLE IF NOT EXISTS `nb_visiteurs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(20) NOT NULL,
  `time_connect` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `nb_visiteurs`
--

INSERT INTO `nb_visiteurs` (`id`, `ip`, `time_connect`) VALUES
(1, '::1', 1556524785);

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `commentaires`
--
ALTER TABLE `commentaires`
  ADD CONSTRAINT `commentaires_ibfk_1` FOREIGN KEY (`id_article`) REFERENCES `articles` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
