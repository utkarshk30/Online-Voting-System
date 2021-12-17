
SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";




--
-- Database: `polltest`
--
CREATE DATABASE IF NOT EXISTS `polltest` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `polltest`;

-- --------------------------------------------------------

--
-- Table structure for table `loginusers`
--

DROP TABLE IF EXISTS `loginusers`;
CREATE TABLE `loginusers` (
  `id` int(200) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `rank` varchar(80) NOT NULL DEFAULT 'voter',
  `status` varchar(10) NOT NULL DEFAULT 'ACTIVE'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `loginusers`
--

TRUNCATE TABLE `loginusers`;
--
-- Dumping data for table `loginusers`
--

INSERT INTO `loginusers` (`id`, `username`, `password`, `rank`, `status`) VALUES
(47, 'helllo', 'b373c043b854b0ebb97afe9b0ba47059', 'voter', 'ACTIVE'),
(46, 'jaha', 'e3df9353ab12391b79865f25a0d7068e', 'voter', 'ACTIVE'),
(45, 'action', '1ace9555f0aafb4fe1e75309e8f79e4d', 'voter', 'ACTIVE'),
(44, 'arjun', '451d3eb1573c7ebb70c08dfee9766509', 'voter', 'ACTIVE'),
(43, 'niku19', 'ac61ebbe84c06debaa78c0a832330164', 'voter', 'ACTIVE'),
(42, 'ejjhed', 'b3f70c0d1b269668e937741a5d5797ab', 'voter', 'ACTIVE'),
(41, 'Anirban', '9a7108cfaa7f51efb5fcda9e9d4b7a90', 'voter', 'ACTIVE'),
(40, 'dnddd', 'b5d165334b465a7fc42310750430b3f9', 'voter', 'ACTIVE'),
(48, 'uk30', 'e10adc3949ba59abbe56e057f20f883e', 'voter', 'ACTIVE'),
(49, 'qwerty', 'f379eaf3c831b04de153469d1bec345e', 'voter', 'ACTIVE'),
(50, '20ucs215', '76ba5194201b0c1d6f97eb6f26022bed', 'voter', 'ACTIVE'),
(51, 'user', '5f4dcc3b5aa765d61d8327deb882cf99', 'voter', 'ACTIVE'),
(52, 'tathya sethi', '1a100d2c0dab19c4430e7d73762b3423', 'voter', 'ACTIVE'),
(53, 'a69', 'bc11f06afb9b27070673471a23ecc6a9', 'voter', 'ACTIVE'),
(54, 'yash', '6dbd0fe19c9a301c4708287780df41a2', 'voter', 'ACTIVE'),
(55, 'admin123', '0192023a7bbd73250516f069df18b500', 'voter', 'ACTIVE'),
(56, 'ujjwal', '5d9a1838e802c365706b6a183b62a74b', 'voter', 'ACTIVE'),
(57, 'yash123', 'ba6562f29d5e6f42cfbf557aa08eb687', 'voter', 'ACTIVE');

-- --------------------------------------------------------

--
-- Table structure for table `president`
--

DROP TABLE IF EXISTS `president`;
CREATE TABLE `president` (
  `V_ID` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `about` varchar(255) NOT NULL,
  `votecount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `president`
--

TRUNCATE TABLE `president`;
--
-- Dumping data for table `president`
--

INSERT INTO `president` (`V_ID`, `fullname`, `about`, `votecount`) VALUES
(1, 'Abraham Lincoln', 'Abraham Lincoln was an lawyer and statesman who served as the 16th president of the United States from 1861 ', 40),
(2, 'George Washington', 'George Washington was an  soldier, statesman, and Founding Father who served as the first President of the United States from 1789 to 1797', 28),
(3, 'Franklin D. Roosevelt', 'Franklin D. Roosevelt was an American politician and attorney who served as the 32nd president of the United States from 1933 ', 11),
(4, 'John F. Kennedy', 'John F. Kennedy was the 35th President of the United States (1961-1963), the youngest man elected to the office.', 17),
(5, 'Barack Obama', 'Barack Hussein Obama II is an American lawyer, author, and politician who served as the 44th president of the United States from 2009 to 2017 ', 31);

-- --------------------------------------------------------

--
-- Table structure for table `voters`
--

DROP TABLE IF EXISTS `voters`;
CREATE TABLE `voters` (
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL DEFAULT 'NOTVOTED',
  `voted` varchar(255) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `voters`
--

TRUNCATE TABLE `voters`;
--
-- Dumping data for table `voters`
--

INSERT INTO `voters` (`firstname`, `lastname`, `username`, `status`, `voted`) VALUES
('Yash', 'paliwal', 'yash123', 'VOTED', 'Barack Obama'),
('u', 'k', 'uk30', 'VOTED', 'c++'),
('qwerty', 'asdf', 'qwerty', 'VOTED', 'name 3'),
('qwerty', 'asdf', '20ucs215', 'NOTVOTED', NULL),
('user', 'k', 'user', 'VOTED', 'Abraham Lincoln'),
('Tathya', 'Jain', 'tathya sethi', 'VOTED', 'Franklin Roosevelt'),
('fuck ', 'off', 'a69', 'VOTED', 'Abraham Lincoln'),
('Yash', 'Ghatiya', 'yash', 'VOTED', 'Abraham Lincoln'),
('Admin', 'Panel', 'admin123', 'VOTED', 'Abraham Lincoln'),
('Ujjwal', 'Agrawal', 'ujjwal', 'VOTED', 'Abraham Lincoln');

-- --------------------------------------------------------

--
-- Table structure for table `vp`
--

DROP TABLE IF EXISTS `vp`;
CREATE TABLE `vp` (
  `VP_ID` int(11) NOT NULL,
  `fullname` varchar(100) NOT NULL,
  `about` varchar(255) NOT NULL,
  `votecount` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Truncate table before insert `vp`
--

TRUNCATE TABLE `vp`;
--
-- Dumping data for table `vp`
--

INSERT INTO `vp` (`VP_ID`, `fullname`, `about`, `votecount`) VALUES
(1, 'Sarvepalli Radhakrishnan', 'ABCD', 30),
(2, 'K. R. Narayanan', 'ABCD', 6),
(3, 'Krishan Kant', 'ABCD', 21),
(4, 'Mohammad Hamid Ansari', 'ABCD', 17),
(5, 'Venkaiah Naidu', 'ABCD ', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `loginusers`
--
ALTER TABLE `loginusers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `president`
--
ALTER TABLE `president`
  ADD PRIMARY KEY (`V_ID`);

--
-- Indexes for table `voters`
--
ALTER TABLE `voters`
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `vp`
--
ALTER TABLE `vp`
  ADD PRIMARY KEY (`VP_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `loginusers`
--
ALTER TABLE `loginusers`
  MODIFY `id` int(200) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;

--
-- AUTO_INCREMENT for table `president`
--
ALTER TABLE `president`
  MODIFY `V_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `vp`
--
ALTER TABLE `vp`
  MODIFY `VP_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
