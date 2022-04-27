-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 27, 2020 at 02:21 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dxc`
--

-- --------------------------------------------------------

--
-- Table structure for table `categorias`
--

CREATE TABLE `categorias` (
  `ID` int(11) NOT NULL,
  `CODIGO` int(11) DEFAULT NULL,
  `NOME` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categorias`
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
-- Table structure for table `tipificacao`
--

CREATE TABLE `tipificacao` (
  `ID` int(11) NOT NULL,
  `ID_CATEGORIAS` int(11) DEFAULT NULL,
  `CATEGORIA` varchar(300) DEFAULT NULL,
  `DESCRICAO` varchar(300) DEFAULT NULL,
  `TIER1` varchar(150) DEFAULT NULL,
  `TIER2` varchar(150) DEFAULT NULL,
  `TIER3` varchar(150) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tipificacao`
--

INSERT INTO `tipificacao` (`ID`, `ID_CATEGORIAS`, `CATEGORIA`, `DESCRICAO`, `TIER1`, `TIER2`, `TIER3`) VALUES
(1, 2, 'Falha de Software', '** Selecione a Tipificação **', NULL, NULL, NULL),
(2, 2, NULL, 'Vírus  ->  Verificação/Remoção de vírus', 'Software', 'Software application/system', 'Security software'),
(3, 2, NULL, 'Pluguins de Banco  ->  Atualização ou qualquer ação referente a Pluguins de Banco', 'Business Application', 'Bank Deposit', 'N/a'),
(4, 2, NULL, 'Modem/Modem 3G  ->  Configuração ou qualquer ação em MODEM', 'Network', 'Modem', 'Base band modem'),
(5, 2, NULL, 'Perfil de usuário  ->  Reparo / Configuração no perfil do usuário', 'Software', 'Operating system software', 'Virtualization operating system'),
(6, 2, NULL, 'BIOS  ->  Reparo / Configuração ou qualquer outra ação na BIOS de notebook ou desktop', 'Software', 'Operating system software', 'BIOS/Firmware'),
(7, 2, NULL, 'SAP  ->  Reparo / Configuração - SAP', 'Business Application', 'SAP Business Objects', 'N/a'),
(8, 2, NULL, 'PIMS  ->  Reparo / Configuração - PIMS', 'Business Application', 'PIMS - Plant Information Management System', 'N/a'),
(9, 2, NULL, 'Outros sistemas VALE  ->  Reparo / Configuração de outros sistemas que não estão listados aqui', 'Software', 'Others', 'Standard application'),
(10, 2, NULL, 'Navegador/Proxy (Internet Explorer/Mozilla Firefox/Chrome)  ->  Reparo / configuração /Reinstalação de navegador - Incluindo configuração de proxy', 'Software', 'Software application/system', 'Browser application'),
(11, 2, NULL, 'Outlook  ->  Qualquer ação para restabelecimento do Outlook (envio recebimento de email, falha a abrir aplicativo, falha a acessar PST e etc). Exceto reinstalação de Outlook.', 'Miscellaneous', 'Service', 'Email'),
(12, 2, NULL, 'Skype, Microsoft Team ou  Jabber  ->  Reparo / configuração /Reinstalação de SW de comunicação', 'Software', 'Software application/system', 'Communication software'),
(13, 2, NULL, 'MS Office: Word/Excel/Power Point/Reinstalação do Outlook  ->  Reparo / configuração /Reinstalação do Office ou seus componentes: Word, Excel e Power Point', 'Business Application', 'Microsoft Office 365 ProPlus', 'n/a'),
(14, 2, NULL, 'Sistema Operacional - somente reparo  ->  Falha no Sistema operacional (Necessário somente reparo) - Exclusão de arquivos temporários, gpupdate /force ou qualquer outra ação para resolver questões de lentidão, travamento ou tela azul', 'Software', 'Operating system software', 'Operating system'),
(15, 2, NULL, 'Sistema Operacional - reinstalação completa  ->  Falha Sistema operacional (Reinstalação completa) - Deve ser usado sempre que for necessária a reinstalação completa do sistema operacional, não importando qual foi a causa, exceto para casos em que houve substituição de HD interno.', 'Software', 'Operating System Software', 'Standard Operation System'),
(16, 2, NULL, 'Java  ->  Quando o problema está relacionado a reinstalação ou atualização do JAVA', 'Software', 'Software application/system', 'Product'),
(17, 2, NULL, 'Driver ou configuração de Teclado/Som/Vídeo/Rede   ->  Sempre que for reinstalado drive ou feita alguma configuração: seja para teclado, som, rede ou vídeo', 'COTS', 'Base Software', 'Drivers'),
(18, 2, NULL, 'Migração Windows 10  ->  Qualquer problema que foi gerado após a migração para o Windows 10', 'Software', 'Operating system software', 'Windows 10 Migration'),
(19, 2, NULL, 'Bitlocker  ->  Bitlocker', 'Business Application', 'Microsoft BitLocker Administration and Monitoring', 'N/A'),
(20, 2, NULL, 'Power BI  ->  Qualquer atendimento à Power BI', 'COTS', 'Application Software', 'Office Software'),
(21, 2, NULL, 'VPN  ->  Verificação/Reparo ou quaqluer outra ação no VPN', 'Network', 'Router', 'Access router'),
(22, 2, NULL, 'Firewall  ->  Todos os incidentes cuja causa original do problema for firewall indiferente da ação feita para a correção.', 'Network', 'Firewall', 'Firewall'),
(23, 2, NULL, 'Emociograma  ->  Reparo / Configuração - Emociograma', 'Business Application', 'All Line of Business', 'Environment, Health and Safety'),
(24, 3, 'Falha de Hardware', '** Selecione a Tipificação **', NULL, NULL, NULL),
(25, 3, NULL, 'Placa mãe/System board  ->  Substituição ou qualquer ação realacionada a placa mãe de notebook e desktop', 'Hardware', 'Card', 'Motherboard'),
(26, 3, NULL, 'CD/DVD  ->  Substituição ou qualquer ação realacionada a CD/DVD de notebook e desktop', 'Hardware', 'Peripheral', 'CD-ROM drive'),
(27, 3, NULL, 'LCD/Display  ->  Substituição ou falha física do LCD ou Display do notebook', 'Hardware', 'Component', 'Video processor'),
(28, 3, NULL, 'Hard Disk (HD) interno ou externo  ->  Falha física do HD de notebook ou Desktop gerando necessidade de substituição do mesmo', 'Hardware', 'Others', 'Hard disk'),
(29, 3, NULL, 'USB porta  ->  Falha física na porta USB de Notebook ou Desktop', 'Hardware', 'Peripheral', 'Multi-function device'),
(30, 3, NULL, 'Placa de vídeo  ->  Falha física em placa de vídeo de Notebook ou Desktop - Sendo necessária a substituição', 'Hardware', 'Card', 'Video card'),
(31, 3, NULL, 'Memória   ->  Falha física em memória de Notebook ou Desktop - Sendo necessária a substituição', 'Hardware', 'Component', 'Memory'),
(32, 3, NULL, 'Placa de som/Speaker  ->  Falha física em Placa de som ou Speaker de Notebook ou Desktop - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Digitizing pad'),
(33, 3, NULL, 'Touchpad  ->  Falha física em Touchpad de Notebook ', 'Hardware', 'Peripheral', 'Touch pad'),
(34, 3, NULL, 'Bateria  ->  Falha física da bateria do notebook', 'Hardware', 'Power supply', 'UPS'),
(35, 3, NULL, 'Cooler  ->  Substituição ou qualquer ação relacionada ao cooler de notebook e desktop.', 'Hardware', 'Card', 'Processor card'),
(36, 3, NULL, 'Fonte/Acadapter  ->  Falha na Fonte ou ACAdapter de notebook ou desktop', 'Hardware', 'Power Supply', 'Generator'),
(37, 4, 'Outros', '** Selecione a Tipificação **', NULL, NULL, NULL),
(38, 4, NULL, 'ITSL - Chamado fechado sem atendimento  ->  Específico para casos onde o usuário é orientado a comparecer ao ITSL em 24 horas, porém não comparece e o ticket deve ser encerrado.', 'Miscellaneous', 'Service', 'Service management'),
(39, 4, NULL, '3Strike Rules  ->  Após ter realizado diversas tentativas de contato com user sem sucesso conforme processo, chamado foi fechado (3 Strike Rule)', 'Miscellaneous', 'Address', 'Protocol endpoint'),
(40, 4, NULL, 'Fora do escopo do FS  ->  Processo não Padrão (Fora do Escopo de Atendimento do FS)', 'Software', 'Software Application/System', 'Output Management Tools'),
(41, 4, NULL, 'Reincidência de WO  ->  Rencidência de WO', 'Software', 'Software Application/System', 'Other Development and Deployment Software'),
(42, 4, NULL, 'BPM  ->  Qualquer ação em equipamentos BPM', 'Business Application', 'BAC', 'bpm'),
(43, 4, NULL, 'Orientação (abrir REQ, Acionar EUC, etc)  ->  Orientar usuários sobre processos de atendimento ou organização', 'Miscellaneous', 'Documentation', 'Process document'),
(44, 4, NULL, 'Senhas  ->  Qualquer ação relativa a senha : Orientação ao usuário sobre troca de senha etc', 'COTS', 'Application Software', 'Security'),
(45, 4, NULL, 'Substituição de PCaaS  ->  Substituição de equipamento PCaaS ', 'Hardware', 'End-User Devices', 'Desktop'),
(46, 4, NULL, 'COI  ->  Atendimento a COI', 'Business Application', 'COI', 'COI'),
(47, 4, NULL, 'Entrega de PCaaS  ->  Entrega de PCaaS pode ser Notebook ou Desktop', 'Hardware', 'Personal computer', NULL),
(48, 4, NULL, 'Outras situações  ->  Outras situações que não se enquadram e nem estão próximas a nenhum item aqui descrito', 'Hardware', 'Processing unit', 'Other type of processing unit'),
(49, 5, 'Troca de Periférico', '** Selecione a Tipificação **', NULL, NULL, NULL),
(50, 5, NULL, 'Monitor - HW  ->  Falha física em monitor de Desktop - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Monitor'),
(51, 5, NULL, 'Teclado - HW  ->  Falha física em teclado de notebook ou desktop - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Keyboard'),
(52, 5, NULL, 'Mouse - HW  ->  Falha física em mouse - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Mouse'),
(53, 5, NULL, 'Docstation/Cadeado - HW  ->  Falha física em cadeado ou docstation - Sendo necessária a substituição', 'Hardware', 'Peripheral', 'Workstation'),
(54, 6, 'Impressoras e Scanners', '** Selecione a Tipificação **', NULL, NULL, NULL),
(55, 6, NULL, 'Impressora CCR 105  ->  Mapeamento, configuração , reinstalação de driver ou qualquer suporte a impressora CCR 105', 'Hardware', 'Peripheral', 'Network printer'),
(56, 6, NULL, 'Scanner CCR 105  ->  Mapeamento e configuração ou qualquer suporte a scanner CCR 105', 'Hardware', 'Peripheral', 'Scanner'),
(57, 7, 'Rede', '** Selecione a Tipificação **', NULL, NULL, NULL),
(58, 7, NULL, 'Rede sem fio - Wireless  ->  Resolução de problemas relativo a uso de rede sem fio', 'Network', 'Network', 'Wireless LAN controller'),
(59, 7, NULL, 'Domínio VALE  ->  Ação referente a ativação ou desativação de equipamentos no domínio VALE', 'Network', 'Others', 'NT domain'),
(60, 7, NULL, 'Rede  ->  Configuração de mapeamentos/compartilhamentos de rede', 'Network', 'Network', 'Access point'),
(61, 7, NULL, 'Infraestrutura (ponto de rede, cabo, mesa, etc)  ->  Qualquer problema relacionado a infraestrutura', 'Hardware', 'Network Infrastructure', 'UPS'),
(62, 8, 'HANDS & EYES e Lexmark Printer', '** Selecione a Tipificação **', NULL, NULL, NULL),
(63, 8, NULL, 'H&E BUR - Fitas  ->  H&E de BUR - Troca de fitas Off Site e etc.', 'Business Application', 'BAC', 'sitescope'),
(64, 8, NULL, 'H&E Wintel - Servidores  ->  H&E de Wintel - Servidores e etc.', 'Hardware', 'Hosting', 'Wintel'),
(65, 8, NULL, 'Lexmark - Incident On-going  ->  Printer Lexmark - Incident Ongoing (Falha de impressão, autenticação, Atolamento de folhas e etc.)', 'Hardware', 'Peripheral', 'Printer'),
(66, 8, NULL, 'Lexmark - HW  ->  Printer Lexmark - Problema Físico na Impressora (Manutenção)', 'Hardware', 'Peripheral', 'Production printer'),
(67, 8, NULL, 'Lexmark - Outros  ->  Printer Lexmark - Outros Serivços', 'Hardware', 'Peripheral', 'Personal printer'),
(68, 8, NULL, 'Lexmark - Suprimentos  ->  Printer Lexmark - Troca de Toner (Suprimentos)', 'Hardware', 'Peripheral', 'Local printer'),
(69, 8, NULL, 'Lexmark - Ticket errado  ->  Printer Lexmark - Ticket aberto incorretamente com informação errada ou insuficiente. (FS não teve ação)', 'Miscellaneous', 'Documentation', 'Online documentation'),
(70, 8, NULL, 'Lexmark - Ticket improdutivo  ->  Printer Lexmark - Específico para casos que ao contatar o user o FS é informado de que não há mais problemas relacionados ao Ticket. (Improdutivo)', 'Business Application', 'All Line of Business', 'All Functional Areas'),
(71, 8, NULL, 'H&E Migração - De sistema Operacional  ->  H&E de Migração WinXP para Win7', 'Software', 'Software Application/System', 'Change and Configuration Management Software'),
(72, 8, NULL, 'H&E - Acompanhamento de Vendors  ->  H&E para acompanhamento de ação de Vendors', 'Miscellaneous', 'Service', 'Activity'),
(73, 9, 'Atendimentos Flex', '** Selecione a Tipificação **', NULL, NULL, NULL),
(74, 9, NULL, 'Mobile: MFA/AirWatchVmobile/Skype/Blackberry/Kjiosk, aplicativos Vale Store  ->  Atendimentos para Mobile: Configuração de email, AirWatch, Vmobile, Skype, Kiosk e aplicativos da Vale Store', 'Hardware', 'Telecommunication', 'Telephone'),
(75, 9, NULL, 'ITVT - Raspberry  ->  Suporte ITTV - RaspBerry', 'Miscellaneous', 'Service', 'Business service'),
(76, 9, NULL, 'Vídeo Conferência  ->  Hands & Eye Suporte para salas de Video Conferência ', 'Miscellaneous', 'Service', 'Video conferencing'),
(77, 10, 'SVIP', '** Selecione a Tipificação **', NULL, NULL, NULL),
(78, 10, NULL, 'SVIP  ->  Deve ser usada somente para Incidents de SVIP - RJ', 'Business Application', 'VIP', 'N/a');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tipificacao`
--
ALTER TABLE `tipificacao`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categorias`
--
ALTER TABLE `categorias`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tipificacao`
--
ALTER TABLE `tipificacao`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
