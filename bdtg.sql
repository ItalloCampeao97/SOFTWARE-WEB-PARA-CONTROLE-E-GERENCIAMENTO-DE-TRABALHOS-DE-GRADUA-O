-- --------------------------------------------------------
-- Servidor:                     127.0.0.1
-- Versão do servidor:           5.7.21-log - MySQL Community Server (GPL)
-- OS do Servidor:               Win64
-- HeidiSQL Versão:              9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Copiando estrutura do banco de dados para tg
CREATE DATABASE IF NOT EXISTS `tg` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_bin */;
USE `tg`;

-- Copiando estrutura para tabela tg.acompanhamento
CREATE TABLE IF NOT EXISTS `acompanhamento` (
  `ra` varchar(30) COLLATE utf8_bin NOT NULL,
  `datplanejado` date NOT NULL,
  `datrealizado` date NOT NULL,
  `observacoes` varchar(50) COLLATE utf8_bin NOT NULL,
  `tipo` char(1) COLLATE utf8_bin NOT NULL,
  `ras` varchar(30) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`ra`),
  KEY `FK_o3mpumjodhmujd51w9d9qwhns` (`ras`),
  CONSTRAINT `FK_o3mpumjodhmujd51w9d9qwhns` FOREIGN KEY (`ras`) REFERENCES `vinculo` (`ra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela tg.acompanhamento: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `acompanhamento` DISABLE KEYS */;
INSERT INTO `acompanhamento` (`ra`, `datplanejado`, `datrealizado`, `observacoes`, `tipo`, `ras`) VALUES
	('0210481612001', '2018-06-04', '2018-06-08', 'Fazer o vídeo do sistema funcionando', 'Q', '0210481612001'),
	('0210481612002', '2018-06-05', '2018-06-11', 'Corrigir os requisitos funcionais', 'Q', '0210481612002'),
	('0210481612003', '2018-06-12', '2018-06-15', 'Refazer login do sistema', 'Q', '0210481612003'),
	('0210481612004', '2018-06-15', '2018-06-18', 'Pesquisar o funcionamento dos lucros nas empresas', 'D', '0210481612004'),
	('0210481612005', '2018-06-19', '2018-06-22', 'Corrigir o banco e chaves estrangeiras do sistema', 'D', '0210481612005'),
	('0210481612006', '2018-06-22', '2018-06-26', 'Visitar academias e entrevistar personal trainers', 'Q', '0210481612006'),
	('0210481612007', '2018-11-02', '2018-11-09', 'Arrumar Referências e Apêndices', 'Q', '0210481612007');
/*!40000 ALTER TABLE `acompanhamento` ENABLE KEYS */;

-- Copiando estrutura para tabela tg.aluno
CREATE TABLE IF NOT EXISTS `aluno` (
  `cpfaluno` varchar(30) COLLATE utf8_bin NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cpfaluno`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela tg.aluno: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `aluno` DISABLE KEYS */;
/*!40000 ALTER TABLE `aluno` ENABLE KEYS */;

-- Copiando estrutura para tabela tg.curso
CREATE TABLE IF NOT EXISTS `curso` (
  `idcurso` varchar(30) COLLATE utf8_bin NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idcurso`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela tg.curso: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `curso` DISABLE KEYS */;
/*!40000 ALTER TABLE `curso` ENABLE KEYS */;

-- Copiando estrutura para tabela tg.professor
CREATE TABLE IF NOT EXISTS `professor` (
  `cpfprof` varchar(30) COLLATE utf8_bin NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`cpfprof`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela tg.professor: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `professor` DISABLE KEYS */;
/*!40000 ALTER TABLE `professor` ENABLE KEYS */;

-- Copiando estrutura para tabela tg.tg
CREATE TABLE IF NOT EXISTS `tg` (
  `idtg` varchar(30) COLLATE utf8_bin NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`idtg`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela tg.tg: ~0 rows (aproximadamente)
/*!40000 ALTER TABLE `tg` DISABLE KEYS */;
/*!40000 ALTER TABLE `tg` ENABLE KEYS */;

-- Copiando estrutura para tabela tg.vinculo
CREATE TABLE IF NOT EXISTS `vinculo` (
  `ra` varchar(30) COLLATE utf8_bin NOT NULL,
  `curso` varchar(50) COLLATE utf8_bin NOT NULL,
  `nome` varchar(50) COLLATE utf8_bin NOT NULL,
  `orientador` varchar(50) COLLATE utf8_bin NOT NULL,
  `trabalho` varchar(50) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`ra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- Copiando dados para a tabela tg.vinculo: ~6 rows (aproximadamente)
/*!40000 ALTER TABLE `vinculo` DISABLE KEYS */;
INSERT INTO `vinculo` (`ra`, `curso`, `nome`, `orientador`, `trabalho`) VALUES
	('0210481612001', 'Análise e Desenvolvimento de Sistemas', 'Alex Vidal', 'Alexandre Cassiano', 'Controle e Gerenciamento de TGs'),
	('0210481612002', 'Agronegócio', 'Karen Todao', 'Gilmara Bruschi ', 'Custos da Nutrição de Cavalos'),
	('0210481612003', 'Jogos Digitais', 'Vinicius Schreurs', 'André Orlandini', 'Matemática: Ensinando Crianças'),
	('0210481612004', 'Gestão Empresarial', 'Cristina de Oliveira', 'Sidney Ferrari ', 'Liderança no Setor Público'),
	('0210481612005', 'Segurança da Informação ', 'Rodolfo Andrey', 'Rogério Lazanha ', 'Crimes Cibernéticos e Estudo das Leis Aplicadas'),
	('0210481612006', 'Análise e Desenvolvimento de Sistemas', 'Lucas Favini ', 'Adalberto Crispim ', 'Gerenciador de Treinamentos Físicos'),
	('0210481612007', 'Análise e Desenvolvimento de Sistemas', 'João Aparecido da Silva', 'Eduardo Moraes', 'Suricata: Sistema de Detecção de Inclusão');
/*!40000 ALTER TABLE `vinculo` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
