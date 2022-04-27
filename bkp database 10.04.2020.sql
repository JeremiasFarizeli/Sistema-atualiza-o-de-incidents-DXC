-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: 10-Abr-2020 às 23:52
-- Versão do servidor: 5.7.24
-- versão do PHP: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dxc`
--
CREATE DATABASE IF NOT EXISTS `dxc` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dxc`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

DROP TABLE IF EXISTS `categorias`;
CREATE TABLE IF NOT EXISTS `categorias` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `CODIGO` int(11) DEFAULT NULL,
  `NOME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`ID`, `CODIGO`, `NOME`) VALUES
(1, 0, '** Selecione  a categoria **'),
(2, 1, 'Software com Falha'),
(3, 2, 'Hardware com Falha'),
(4, 3, 'outros'),
(5, 4, 'Troca de Periférico'),
(6, 5, 'Impressoras e Scanners'),
(7, 6, 'Rede'),
(8, 7, 'HANDS & EYES e Lexmark Printer'),
(9, 8, 'Atendimentos Flex'),
(10, 9, 'SVIP');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipificacao`
--

DROP TABLE IF EXISTS `tipificacao`;
CREATE TABLE IF NOT EXISTS `tipificacao` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `ID_CATEGORIAS` int(11) DEFAULT NULL,
  `CATEGORIA` varchar(300) DEFAULT NULL,
  `DESCRICAO` varchar(300) DEFAULT NULL,
  `TIER1` varchar(150) DEFAULT NULL,
  `TIER2` varchar(150) DEFAULT NULL,
  `TIER3` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tipificacao`
--

INSERT INTO `tipificacao` (`ID`, `ID_CATEGORIAS`, `CATEGORIA`, `DESCRICAO`, `TIER1`, `TIER2`, `TIER3`) VALUES
(69, 2, 'Falha de Software', '** Selecione a Tipificação **', NULL, NULL, NULL),
(70, 2, NULL, 'Verificação/Remoção de vírus', 'Software', 'Software application/system', 'Security software'),
(71, 2, NULL, 'Atualização ou qualquer ação referente a Pluguins de Banco', 'Business Application', 'Bank Deposit', 'N/a'),
(72, 2, NULL, 'Configuração ou qualquer ação em MODEM', 'Network', 'Modem', 'Base band modem'),
(73, 2, NULL, 'Reparo / Configuração no perfil do usuário', 'Software', 'Operating system software', 'Virtualization operating system'),
(74, 2, NULL, 'Reparo / Configuração ou qualquer outra ação na BIOS de notebook ou desktop', 'Software', 'Operating system software', 'BIOS/Firmware'),
(75, 2, NULL, 'Reparo / Configuração - SAP', 'Business Application', 'SAP Business Objects', 'N/a'),
(76, 2, NULL, 'Reparo / Configuração - PIMS', 'Business Application', 'PIMS - Plant Information Management System', 'N/a'),
(77, 2, NULL, 'Reparo / Configuração - Emociograma', 'Business Application', 'All Line of Business', 'Environment, Health and Safety'),
(78, 2, NULL, 'Verificação/Reparo ou quaqluer outra ação no VPN', 'Network', 'Router', 'Access router'),
(79, 2, NULL, 'Reparo / Configuração de outros sistemas que não estão listados aqui', 'Software', 'Others', 'Standard application'),
(80, 2, NULL, 'Reparo / configuração /Reinstalação de navegador - Incluindo configuração de proxy', 'Software', 'Software application/system', 'Browser application'),
(81, 2, NULL, 'Qualquer ação para restabelecimento do Outlook (envio recebimento de email, falha a abrir aplicativo, falha a acessar PST e etc). Exceto reinstalação de Outlook.', 'Miscellaneous', 'Service', 'Email'),
(82, 2, NULL, 'Reparo / configuração /Reinstalação de SW de comunicação', 'Software', 'Software application/system', 'Communication software'),
(83, 2, NULL, 'Reparo / configuração /Reinstalação do Office ou seus componentes: Word, Excel e Power Point', 'Business Application', 'Microsoft Office 365 ProPlus', 'n/a'),
(84, 2, NULL, 'Falha no Sistema operacional (Necessário somente reparo) - Exclusão de arquivos temporários, gpupdate /force ou qualquer outra ação para resolver questões de lentidão, travamento ou tela azul', 'Software', 'Operating system software', 'Operating system'),
(85, 2, NULL, 'Bitlocker', 'Business Application', 'Microsoft BitLocker Administration and Monitoring', 'N/A'),
(86, 2, NULL, 'Qualquer atendimento à Power BI', 'COTS', 'Application Software', 'Office Software'),
(87, 2, NULL, 'Sempre que for reinstalado drive ou feita alguma configuração: seja para teclado, som, rede ou vídeo', 'COTS', 'Base Software', 'Drivers'),
(88, 2, NULL, 'Falha Sistema operacional (Reinstalação completa) - Deve ser usado sempre que for necessária a reinstalação completa do sistema operacional, não importando qual foi a causa, exceto para casos em que houve substituição de HD interno.', 'Software', 'Operating System Software', 'Standard Operation System'),
(89, 2, NULL, 'Quando o problema está relacionado a reinstalação ou atualização do JAVA', 'Software', 'Software application/system', 'Product'),
(90, 2, NULL, 'Qualquer problema que foi gerado após a migração para o Windows 10', 'Software', 'Operating system software', 'Windows 10 Migration'),
(91, 3, 'Falha de Hardware', '** Selecione a Tipificação **', NULL, NULL, NULL),
(92, 3, NULL, 'Substituição ou qualquer ação realacionada a placa mãe de notebook e desktop', 'Hardware', 'Card', 'Motherboard'),
(93, 3, NULL, 'Substituição ou qualquer ação realacionada a CD/DVD de notebook e desktop', 'Hardware', 'Peripheral', 'CD-ROM drive'),
(94, 3, NULL, 'Substituição ou falha física do LCD ou Display do notebook', 'Hardware', 'Component', 'Video processor'),
(95, 3, NULL, 'Falha física do HD de notebook ou Desktop gerando necessidade de substituição do mesmo', 'Hardware', 'Others', 'Hard disk'),
(96, 3, NULL, 'Falha física na porta USB de Notebook ou Desktop', 'Hardware', 'Peripheral', 'Multi-function device'),
(97, 3, NULL, 'Falha física em placa de vídeo de Notebook ou Desktop - Sendo necessária a substituição', 'Hardware', 'Card', 'Video card'),
(98, 3, NULL, 'Falha física em memória de Notebook ou Desktop - Sendo necessária a substituição', 'Hardware', 'Component', 'Memory'),
(99, 3, NULL, 'Falha física em Placa de som ou Speaker de Notebook ou Desktop - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Digitizing pad'),
(100, 3, NULL, 'Falha física em Touchpad de Notebook ', 'Hardware', 'Peripheral', 'Touch pad'),
(101, 3, NULL, 'Falha física da bateria do notebook', 'Hardware', 'Power supply', 'UPS'),
(102, 3, NULL, 'Substituição ou qualquer ação relacionada ao cooler de notebook e desktop.', 'Hardware', 'Card', 'Processor card'),
(103, 3, NULL, 'Falha na Fonte ou ACAdapter de notebook ou desktop', 'Hardware', 'Power Supply', 'Generator'),
(104, 4, 'Outros', '** Selecione a Tipificação **', NULL, NULL, NULL),
(105, 4, NULL, 'Específico para casos onde o usuário é orientado a comparecer ao ITSL em 24 horas, porém não comparece e o ticket deve ser encerrado.', 'Miscellaneous', 'Service', 'Service management'),
(106, 4, NULL, 'Após ter realizado diversas tentativas de contato com user sem sucesso conforme processo, chamado foi fechado (3 Strike Rule)', 'Miscellaneous', 'Address', 'Protocol endpoint'),
(107, 4, NULL, 'Processo não Padrão (Fora do Escopo de Atendimento do FS)', 'Software', 'Software Application/System', 'Output Management Tools'),
(108, 4, NULL, 'Rencidência de WO', 'Software', 'Software Application/System', 'Other Development and Deployment Software'),
(109, 4, NULL, 'Qualquer ação em equipamentos BPM', 'Business Application', 'BAC', 'bpm'),
(110, 4, NULL, 'Qualquer ação relativa a senha : Orientação ao usuário sobre troca de senha etc', 'COTS', 'Application Software', 'Security'),
(111, 4, NULL, 'Substituição de equipamento PCaaS ', 'Hardware', 'End-User Devices', 'Desktop'),
(112, 4, NULL, 'Atendimento a COI', 'Business Application', 'COI', 'COI'),
(113, 4, NULL, 'Entrega de PCaaS pode ser Notebook ou Desktop', 'Hardware', 'Personal computer', NULL),
(114, 4, NULL, 'Orientar usuários sobre processos de atendimento ou organização', 'Miscellaneous', 'Documentation', 'Process document'),
(115, 4, NULL, 'Outras situações que não se enquadram e nem estão próximas a nenhum item aqui descrito', 'Hardware', 'Processing unit', 'Other type of processing unit'),
(116, 5, 'Troca de Periférico', '** Selecione a Tipificação **', NULL, NULL, NULL),
(117, 5, NULL, 'Falha física em monitor de Desktop - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Monitor'),
(118, 5, NULL, 'Falha física em teclado de notebook ou desktop - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Keyboard'),
(119, 5, NULL, 'Falha física em mouse - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Mouse'),
(120, 5, NULL, 'Falha física em cadeado ou docstation - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Workstation'),
(121, 6, 'Impressoras e Scanners', '** Selecione a Tipificação **', NULL, NULL, NULL),
(122, 6, NULL, 'Mapeamento, configuração , reinstalação de driver ou qualquer suporte a impressora CCR 105', 'Hardware', 'Peripheral', 'Network printer'),
(123, 6, NULL, 'Mapeamento e configuração ou qualquer suporte a scanner CCR 105', 'Hardware', 'Peripheral', 'Scanner'),
(124, 7, 'Rede', '** Selecione a Tipificação **', NULL, NULL, NULL),
(125, 7, NULL, 'Configuração de mapeamentos/compartilhamentos de rede', 'Network', 'Network', 'Access point'),
(126, 7, NULL, 'Qualquer problema relacionado a infraestrutura', 'Hardware', 'Network Infrastructure', 'UPS'),
(127, 7, NULL, 'Resolução de problemas relativo a uso de rede sem fio', 'Network', 'Network', 'Wireless LAN controller'),
(128, 7, NULL, 'Ação referente a ativação ou desativação de equipamentos no domínio VALE', 'Network', 'Others', 'NT domain'),
(129, 8, 'HANDS & EYES e Lexmark Printer', '** Selecione a Tipificação **', NULL, NULL, NULL),
(130, 8, NULL, 'H&E de BUR - Troca de fitas Off Site e etc.', 'Business Application', 'BAC', 'sitescope'),
(131, 8, NULL, 'H&E de Wintel - Servidores e etc.', 'Hardware', 'Hosting', 'Wintel'),
(132, 8, NULL, 'Printer Lexmark - Incident Ongoing (Falha de impressão, autenticação, Atolamento de folhas e etc.)', 'Hardware', 'Peripheral', 'Printer'),
(133, 8, NULL, 'Printer Lexmark - Problema Físico na Impressora (Manutenção)', 'Hardware', 'Peripheral', 'Production printer'),
(134, 8, NULL, 'Printer Lexmark - Outros Serivços', 'Hardware', 'Peripheral', 'Personal printer'),
(135, 8, NULL, 'Printer Lexmark - Troca de Toner (Suprimentos)', 'Hardware', 'Peripheral', 'Local printer'),
(136, 8, NULL, 'Printer Lexmark - Ticket aberto incorretamente com informação errada ou insuficiente. (FS não teve ação)', 'Business Application', 'All Line of Business', 'Administrative'),
(137, 8, NULL, 'Printer Lexmark - Específico para casos que ao contatar o user o FS é informado de que não <br> há mais problemas relacionados ao Ticket. (Improdutivo)', 'Business Application', 'All Line of Business', 'Enterprise Resource Planing'),
(138, 8, NULL, 'H&E de Migração WinXP para Win7', 'Software', 'Software Application/System', 'Change and Configuration Management Software'),
(139, 8, NULL, 'H&E para acompanhamento de ação de Vendors', 'Miscellaneous', 'Service', 'Activity'),
(140, 9, 'Atendimentos Flex', '** Selecione a Tipificação **', NULL, NULL, NULL),
(141, 9, NULL, 'Atendimentos para Mobile: Configuração de email, AirWatch, Vmobile, Skype, Kiosk e aplicativos da Vale Store', 'Hardware', 'Telecommunication', 'Telephone'),
(142, 9, NULL, 'Suporte ITTV - RaspBerry', 'Miscellaneous', 'Service', 'Business service'),
(143, 9, NULL, 'Hands & Eye Suporte para salas de Video Conferência ', 'Miscellaneous', 'Service', 'Video conferencing'),
(144, 10, 'SVIP', '** Selecione a Tipificação **', NULL, NULL, NULL),
(145, 10, NULL, 'Deve ser usada somente para Incidents de SVIP - RJ', 'Business Application', 'VIP', 'N/a');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
