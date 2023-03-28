-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 28-03-2023 a las 01:35:07
-- Versión del servidor: 8.0.31
-- Versión de PHP: 8.0.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `petshop`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `subtitulo` text COLLATE utf8mb4_general_ci NOT NULL,
  `cuerpo` text COLLATE utf8mb4_general_ci NOT NULL,
  `img_id` varchar(250) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`, `img_id`) VALUES
(1, 'Vitalcan complete Gato - OFERTA $12.984 !!!', 'VITALCAN COMPLETE GATO ADULTO X 15 KG', 'Vitalcan Complete gato adulto es un alimento para gatos adultos a partir de 12 meses y hasta 7 años de edad. Proporciona: un pelo más sano y brillante, un tracto urinario saludable, un irresistible sabor sin colorantes artificiales.\"\"\"\"\"\"\"\"\"', 'ulsffs4lf5ygkz0mzvcn'),
(2, 'Old Prince Gato -  OFERTA $7.370 !!!', 'OLD PRINCE GATO EQUILIBRIUM ADULT X 7.5 KG', 'Old Prince Equilibrium Complete Care es un alimento balanceado para gatos adultos de 1 a 7 años de edad. Colabora con el control del peso y la prevención de formación de bolas de pelo. Su aporte de aceites esenciales Omega 3 y 6 fortalece el sistema inmune y estimula la salud de la piel y el pelaje de tu gato. Incluye también taurina, un aminoácido que previene problemas cardiovasculares.\"', 'hp1fnbcj7yfcp9egvnip'),
(3, 'Pro Plan Perro Cachorro - OFERTA $18.355 !!!', 'PRO PLAN PERRO CACHORRO GRANDE X 15 + 3 KG', 'Purina Pro Plan Puppy Large Breed con OptiStart es un alimento balanceado para cachorros de razas grandes desde el destete hasta la edad adulta. Entre sus beneficios se destaca que: al contener proteínas, de calidad y digeribles, y bioactivos del calostro protege a tu cachorro de posibles problemas digestivos y favorece la absorción de nutrientes; promueve una piel sana y un pelaje brilloso; al poseer en su formulación DHA y EPA del aceite de pescado ayuda al desarrollo del cerebro y la visión; refuerza el sistema inmunológico porque contiene anticuerpos naturales del calostro y la proteína del pollo; la relación equilibrada de calcio y fósforo conserva los huesos y los dientes fuertes. Todo ésto permite que tu perro crezca en forma óptima.\"\"\"', 'gnyjnixrscvyaagjpz4b'),
(4, 'Nutrition Perro Mediano - OFERTA $13.490 !!!', 'JUVENIA NUTRITION PERRO RAZA MEDIANA Y GRANDE X 15 KG', 'Juvenia Nutrition Raza Mediana Y Grande de 15 kg es un alimento balanceado para perros de todas las razas. Contiene resveratrol, un antioxidante de origen natural que se absorbe fácilmente y mantiene saludable el rendimiento físico y mental, además de desarrollar el sistema inmune. Su fórmula 100% balanceada previene enfermedades, mejora la salud y demora el envejecimiento prematuro.\"\"', 'lv5cr36ilxbrythurynd'),
(13, 'Purina Excellent Smart Gato  - OFERTA $10.066 !!!', 'Excellent Smart Gato Adulto Pollo Y Arroz 7.5 Kg\r\n', '\r\nExcellent Cat Adult Smart es un alimento completo y balanceado a base de proteínas de alta calidad provenientes del pollo y el arroz como principales ingredientes. Ayuda a mantener un pH adecuado en la orina, el cual contribuye a impedir la formación de cálculos y cristales. Los ácidos activos grasos omega 3 y 6 aportan elasticidad a la piel y favorecen a un pelo sano y brillante. También las proteínas de pollo de alta digestibilidad garantizan el desarrollo de músculos fuertes y sanos.', 'vh6bdytpvzv7swthohvv');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(250) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'yanina', 'e10adc3949ba59abbe56e057f20f883e'),
(2, 'andrea', 'e10adc3949ba59abbe56e057f20f883e');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
