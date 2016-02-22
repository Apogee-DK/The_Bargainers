-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 22, 2016 at 12:22 AM
-- Server version: 5.5.47-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bargainers`
--

-- --------------------------------------------------------

--
-- Table structure for table `Product`
--

CREATE TABLE IF NOT EXISTS `Product` (
  `webID` varchar(100) NOT NULL,
  `name` varchar(50) NOT NULL,
  `URL` text NOT NULL,
  `productID` varchar(15) NOT NULL,
  `lowestPrice` decimal(10,2) NOT NULL,
  `DateAdded` datetime NOT NULL,
  `photoURL` varchar(200) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`webID`),
  UNIQUE KEY `webID` (`webID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `Product`
--

INSERT INTO `Product` (`webID`, `name`, `URL`, `productID`, `lowestPrice`, `DateAdded`, `photoURL`, `description`) VALUES
('00c07dccc492280a02e9ebea4a8890df', 'Corsair Gaming SCIMITAR RGB MOBA/MMO Gaming Mouse', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826816047&cm_re=mouse-_-26-816-047-_-Product', 'TARRGBMOBA/MMOG', 100.00, '2016-02-21 09:35:29', 'http://images10.newegg.com/ProductImageCompressAll200/26-816-047-01.jpg', 'some description'),
('01ed708846e9e60d5ddd27879adeaa28', 'XFX Radeon R9 380 990MHZ Core Clock 4GB D5 DP HDMI', 'http://www.ncix.com/detail/xfx-radeon-r9-380-990mhz-7e-110205-1288.htm', '0MHZCoreClock4G', 185.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/110205ss.jpg', 'some description'),
('03d5acd581223373bfebec04748b571e', 'White Mountain Frisco Women US 5.5 Nude Mid Calf B', 'http://www.newegg.ca/Product/Product.aspx?Item=9SIA9773DF3204&cm_re=boot-_-0F5-007S-00BM6-_-Product', 'oWomenUS5.5Nude', 41.00, '2016-02-21 10:51:11', 'http://images10.newegg.com/ProductImageCompressAll200/A0B0_1_20141222113771500.jpg', 'some description'),
('03fee837a8811fd1a5b5b63647687b21', 'EVGA GeForce GTX 750 Ti 2GB GDDR5 128BIT DUAL-LINK', 'http://www.ncix.com/detail/evga-geforce-gtx-750-ti-59-94331-1288.htm', 'Ti2GBGDDR5128BI', 460.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/94331ss.jpg', 'some description'),
('042e2c81de6b6f9c83a78c073e7bc292', 'Logitech G602 910-003820 Black 11 Buttons 1 x Whee', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826104914&cm_re=mouse-_-26-104-914-_-Product', '3820Black11Butt', 80.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-104-914-TS?$S180W$', 'some description'),
('05e802e1cc72e8459dfc612866b87730', 'MSI 970 Gaming ATX AM3+ 970 DDR3 2PCI-E16 2PCI-E1 ', 'http://www.ncix.com/detail/msi-970-gaming-atx-am3-53-101587-1288.htm', 'M3+970DDR32PCI-', 120.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/101587ss.jpg', 'some description'),
('07cbc901c063b5d23a438f169b6726cb', 'Cooler Master Hyper T4 Heatpipe Heatsink FM1/AM3+/', 'http://www.ncix.com/detail/cooler-master-hyper-t4-heatpipe-86-79515.htm', 'T4HeatpipeHeats', 40.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/79515ss.jpg', 'some description'),
('091c98cc10f9a28f90b03e606dd050b7', 'PCCW CAT 6 RJ45 Pre-Insert Boot Green 50 Unit / Pa', 'http://www.ncix.com/detail/pccw-cat-6-rj45-pre-insert-c0-54295.htm', 'InsertBootGreen', 130.00, '2016-02-21 10:51:11', 'http://img.ncix.com/gif/54295ss.jpg', 'some description'),
('0bfbdfb7f39480806b17335de98889b6', 'ASUS Z87-PLUS ATX LGA1150 Z87 DDR3 3PCI-E16 2PCI-E', 'http://www.ncix.com/detail/asus-z87-plus-atx-lga1150-z87-e7-84502-1288.htm', 'A1150Z87DDR33PC', 220.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/84502ss.jpg', 'some description'),
('0fdbf712d315d9ab58ad7fed0f35a5c7', 'Starttech 20 and 24 Pin ATX Power Supply Tester', 'http://www.ncix.com/detail/starttech-20-and-24-pin-ce-107141.htm', 'PinATXPowerSupp', 362.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/107141ss.jpg', 'some description'),
('13851092626e2b6f78d9b9d5983a1270', 'COUGAR 200M MOC200B Black 6 Buttons 1 x Wheel USB ', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826567003&cm_re=mouse-_-26-567-003-_-Product', 'Black6Buttons1x', 20.00, '2016-02-21 10:50:16', 'http://images17.newegg.com/is/image/newegg/26-567-003-TS?$S180$', 'some description'),
('13e966bc3ab5bf4eff5d4c0a5b7e0a52', 'EVGA GeForce GTX 980 Ti 6GB SC+ Gaming ACX 2.0+ 11', 'http://www.ncix.com/detail/evga-geforce-gtx-980-ti-b2-109571.htm', 'Ti6GBSC+GamingA', 490.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/109571ss.jpg', 'some description'),
('144f39522981f8e452809e68d7e84378', 'Corsair Gaming M65 RGB Laser Gaming Mouse - White', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826816052&cm_re=mouse-_-26-816-052-_-Product', 'GBLaserGamingMo', 25.00, '2016-02-21 10:50:16', 'http://images17.newegg.com/is/image/newegg/26-816-052-TS?$S180W$', 'some description'),
('150e9ed8ac56369117e31061bb40317e', 'Fractal Design Silent Series R2 FD-FAN-SSR2-140 14', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835352007&cm_re=fan-_-35-352-007-_-Product', 'tSeriesR2FD-FAN', 20.00, '2016-02-21 10:53:46', 'http://images17.newegg.com/is/image/newegg/35-352-007-TS?$S180W$', 'some description'),
('16d50e2694e0c37fc2ae39185f386ccd', 'ASUS Z170-A ATX LGA1151 Z170 Skylake DDR4 3PCI-E16', 'http://www.ncix.com/detail/asus-z170-a-atx-lga1151-z170-a1-111462-1288.htm', '151Z170SkylakeD', 210.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/111462ss.jpg', 'some description'),
('1840c3d05324df2bc9dc3cacf25385f5', 'Microsoft Windows 7 Professional SP1 32-bit - OEM', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832416803&cm_re=window-_-32-416-803-_-Product', 'ProfessionalSP1', 185.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-416-803-07.jpg', 'some description'),
('189cc616d207818ce61d1c2765c3becd', 'Cooler Master Sleeve Bearing 120mm Silent Fan for ', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835103052&cm_re=fan-_-35-103-052-_-Product', 'Bearing120mmSil', 18.00, '2016-02-21 10:53:46', 'http://images10.newegg.com/NeweggImage/ProductImageCompressAll200/35-103-052-03.jpg', 'some description'),
('1b16f94afb92c5135da0ac997e31b52b', 'Xiaomi Tds Tester Water Quality Meter Tester Pen W', 'http://www.ncix.com/detail/xiaomi-tds-tester-water-quality-b6-114417.htm', 'terQualityMeter', 8.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/114417ss.jpg', 'some description'),
('1bbc3bc4d1f66f3acf3d4368ffba0cdc', 'ATEN PN9108 Remote Power Control ON/OFF/REBOOT 8 O', 'http://www.ncix.com/detail/aten-pn9108-remote-power-control-ec-39781.htm', 'owerControlON/O', 17.00, '2016-02-21 10:51:11', 'http://img.ncix.com/gif/39781ss.jpg', 'some description'),
('1bca88683877b093cdd1872a16586e01', 'Corsair Gaming Strafe RGB Mechanical Gaming Keyboa', 'http://www.ncix.com/detail/corsair-gaming-strafe-rgb-mechanical-0d-114795-1288.htm', 'eRGBMechanicalG', 45.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/114795ss.jpg', 'some description'),
('1d35440fb1a45a675968f9e0e9e660b5', 'Logitech G302 Daedalus Prime Moba 910-004205 Black', 'http://www.newegg.ca/Product/Product.aspx?Item=9SIA92H38G8762&cm_re=mouse-_-26-197-023-_-Product', 'usPrimeMoba910-', 54.00, '2016-02-21 10:50:16', 'http://images10.newegg.com/ProductImageCompressAll200/26-197-023-06.jpg', 'some description'),
('1e8907ee1d7b0db7caad44798719994d', 'Cables to Go 75FT Cat5e NON-BOOT UTP CBL-WHT', 'http://www.ncix.com/detail/cables-to-go-75ft-cat5e-34-107772.htm', 't5eNON-BOOTUTPC', 896.00, '2016-02-21 10:51:11', 'http://img.ncix.com/gif/107772ss.jpg', 'some description'),
('1f14ab35e35040984ce04f3634be2f63', 'Logitech G502 Proteus Spectrum RGB Tunable Gaming ', 'http://www.ncix.com/detail/logitech-g502-proteus-spectrum-rgb-6e-124992-1288.htm', 'sSpectrumRGBTun', 185.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/124992ss.jpg', 'some description'),
('21e004c1fb2ae7b98fcac74be72c9c8b', 'ASRock H110M-ITX LGA 1151 Intel H110 HDMI SATA 6Gb', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16813157678&cm_re=boot-_-13-157-678-_-Product', '1151IntelH110HD', 105.00, '2016-02-21 10:51:11', 'http://images10.newegg.com/ProductImageCompressAll200/13-157-678-01.jpg', 'some description'),
('2615b123d54ceb21b9876a066f02663e', 'Microsoft Windows 10 Pro - Full Version (32 & 64-b', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832588529&cm_re=window-_-32-588-529-_-Product', 'Pro-FullVersion', 250.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-588-529-08.jpg', 'some description'),
('27890c2cb8e6ea2fc70aa6e47854c6e5', 'Cooler Master Elite V2 550W ATX Power Supply 12V V', 'http://www.ncix.com/detail/cooler-master-elite-v2-550w-ce-97974-1288.htm', 'V2550WATXPowerS', 37.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/97974ss.jpg', 'some description'),
('27e15a081ec23a7057967caf9c6a23fb', 'Rosewill Jet RGM-300 Gaming Mouse', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826193089&cm_re=mouse-_-26-193-089-_-Product', 'GamingMouse', 10.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-193-089-TS?$S180W$', 'some description'),
('2b295ef2f411ec27684093df6876b59b', 'Logitech G810 Orion Spectrum RGB Mechanical Gaming', 'http://www.ncix.com/detail/logitech-g810-orion-spectrum-rgb-5e-125818.htm', 'SpectrumRGBMech', 69.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/125818ss.jpg', 'some description'),
('2f20fc99dda13bc3f7a7c110225d1e9d', 'Microsoft Windows 10 Home - Full Version (32 & 64-', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832588528&cm_re=window-_-32-588-528-_-Product', 'Home-FullVersio', 135.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-588-528-08.jpg', 'some description'),
('2fbaed33b65dabad69a23d6a3a42bb7f', 'Cables to Go RJ45 Snagless Boot Cover (6.0MM OD) -', 'http://www.ncix.com/detail/cables-to-go-rj45-snagless-72-55258-1684.htm', 'aglessBootCover', 6.00, '2016-02-21 10:51:11', 'http://img.ncix.com/gif/55258ss.jpg', 'some description'),
('331cfd71bc7b4ffe12a2d0b69ee02bbf', 'Corsair Air Series AF140 140mm Red LED Quiet Editi', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835181051&cm_re=fan-_-35-181-051-_-Product', 'F140140mmRedLED', 19.00, '2016-02-21 10:54:42', 'http://images17.newegg.com/is/image/newegg/35-181-051-TS?$S180W$', 'some description'),
('33b78b2b1fcd8813e37630f29e69a492', 'DEEPCOOL Gamer Storm GS 120 PWM Fan Hydro Bearing ', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835856012&cm_re=fan-_-35-856-012-_-Product', 'GS120PWMFanHydr', 11.00, '2016-02-21 10:54:42', 'http://images17.newegg.com/is/image/newegg/35-856-012-TS?$S180W$', 'some description'),
('362b66bf05572d299328953bcfe4933e', 'EVGA GeForce GTX 970 4GB SC Gaming ACX 2.0 1165MHZ', 'http://www.ncix.com/detail/evga-geforce-gtx-970-4gb-3e-102481-1288.htm', '4GBSCGamingACX2', 900.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/102481ss.jpg', 'some description'),
('365bc9c8208e13ffea9f4717901d89c8', 'DEEPCOOL UF 140 PWM Fan 2-Ball Bearing Rubber Coat', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835856015&cm_re=fan-_-35-856-015-_-Product', 'Fan2-BallBearin', 15.00, '2016-02-21 10:54:42', 'http://images17.newegg.com/is/image/newegg/35-856-015-TS?$S180W$', 'some description'),
('38530990043e6b6feda57a7ccfba7f91', 'G.SKILL RIPJAWS MX780 USB Wired RGB Laser Gaming M', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826977011&cm_re=mouse-_-26-977-011-_-Product', '0USBWiredRGBLas', 100.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-977-011-TS?$S180$', 'some description'),
('3d2cf4cdd4b14372766c74c46295df99', 'NF-A14 iPPC-3000 PWM, 140mm PWM,AAO Frame Technolo', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835608048&cm_re=fan-_-35-608-048-_-Product', ',140mmPWM,AAOFr', 40.00, '2016-02-21 10:53:46', 'http://images17.newegg.com/is/image/newegg/35-608-048-TS?$S180W$', 'some description'),
('3d6925b0ac8ab7b530616676b55241fb', 'STARTECH HDMI/DVI VIDEO TEST PATTERN GENERATOR', 'http://www.ncix.com/detail/startech-hdmi-dvi-video-test-pattern-a2-109843.htm', 'DEOTESTPATTERNG', 106.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/109843ss.jpg', 'some description'),
('4518be1ec244ea45272ff177450feabc', 'Microsoft Windows 7 Professional SP1 64-bit (3-Pac', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832589001&cm_re=window-_-32-589-001-_-Product', 'ProfessionalSP1', 580.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-589-001-01.jpg', 'some description'),
('466a4ae9ce215c17a0937e19a477d327', 'Thermaltake Dr. Power II Power Tester', 'http://www.ncix.com/detail/thermaltake-dr-power-ii-power-8b-106640.htm', 'rIIPowerTester', 163.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/106640ss.jpg', 'some description'),
('46c260dcf7a4888d5866a7ea72d3c245', 'Microsoft Windows 10 Pro 64-bit - OEM', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832588491&cm_re=window-_-32-588-491-_-Product', 'Pro64-bit-OEM', 180.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/NeweggImage/ProductImageCompressAll200/32-588-491-06.jpg', 'some description'),
('4b5dbab0210e372ecb089eef48cea6c9', 'RAZER DeathAdder Chroma USB Gaming Mouse', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826153168&cm_re=mouse-_-26-153-168-_-Product', 'omaUSBGamingMou', 1.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-153-168-TS?$S180$', 'some description'),
('4bacbf00ee62ca5b25c669d924b967bf', 'Cooler Master Storm Devastator MS2K Mouse and MB24', 'http://www.ncix.com/detail/cooler-master-storm-devastator-ms2k-29-100695-1382.htm', 'DevastatorMS2KM', 100.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/100695ss.jpg', 'some description'),
('4ccbeaf1847f955ab7e47d66ac4b0051', 'Digital Loggers LPC7 Web Power Switch 7 8+2 Outlet', 'http://www.ncix.com/detail/digital-loggers-lpc7-web-power-40-110069.htm', 'WebPowerSwitch7', 67.00, '2016-02-21 10:51:11', 'http://img.ncix.com/gif/110069ss.jpg', 'some description'),
('4dadd91468fb68d8c3d1ef1b01f60f24', 'Logitech MK120 Desktop Keyboard and Mouse Combo US', 'http://www.ncix.com/detail/logitech-mk120-desktop-keyboard-and-a9-54300-1288.htm', 'opKeyboardandMo', 75.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/54300ss.jpg', 'some description'),
('5dc35f150c18caf748b13e64bd88a7f8', 'ASRock Z170 Extreme3 LGA 1151 Intel Z170 HDMI SATA', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16813157672&cm_re=boot-_-13-157-672-_-Product', 'LGA1151IntelZ17', 230.00, '2016-02-21 10:51:11', 'http://images17.newegg.com/is/image/newegg/13-157-672-TS?$S180$', 'some description'),
('63db28d05191423a8d4c1da102dcce3a', 'Digital Loggers 220 85-240V Smart Switched 1U Rack', 'http://www.ncix.com/detail/digital-loggers-220-85-240v-smart-c1-110070.htm', '85-240VSmartSwi', 781.00, '2016-02-21 10:51:11', 'http://img.ncix.com/gif/110070ss.jpg', 'some description'),
('668f003b0ef3cdbfd1f100906aed3c88', 'DEEPCOOL XFAN 120L/R Hydro Bearing Transparent Fan', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835856018&cm_re=fan-_-35-856-018-_-Product', 'HydroBearingTra', 9.00, '2016-02-21 10:54:42', 'http://images17.newegg.com/is/image/newegg/35-856-018-TS?$S180W$', 'some description'),
('6adcdbc5fb2a8c52d1808084dfc7039e', 'ASRock H170A-X1/3.1 LGA 1151 Intel Z170 SATA 6Gb/s', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16813157683&cm_re=boot-_-13-157-683-_-Product', 'LGA1151IntelZ17', 150.00, '2016-02-21 10:51:11', 'http://images17.newegg.com/is/image/newegg/13-157-683-TS?$S180$', 'some description'),
('6b94b083e80a4fe20660d4d3da4685a3', 'EVGA GeForce GTX 950 2GB SC+ Gaming ACX 2.0 Silent', 'http://www.ncix.com/detail/evga-geforce-gtx-950-2gb-f8-113503-1288.htm', '2GBSC+GamingACX', 790.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/113503ss.jpg', 'some description'),
('6d5581d7e7c91cc8e2656bd3e869cfa5', 'CLUB3D Radeon R9 Nano Fiji LP 4GB HBM 4096 Bit PCI', 'http://www.ncix.com/detail/club3d-radeon-r9-nano-fiji-29-114419-1288.htm', 'oFijiLP4GBHBM40', 280.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/114419ss.jpg', 'some description'),
('6ea28512467a2f0a08250bca489fc6d0', 'SteelSeries Rival 300 Gaming Mouse - Black', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826249176&cm_re=mouse-_-26-249-176-_-Product', '0GamingMouse-Bl', 10.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-249-176-TS?$S180$', 'some description'),
('72128f969171308f0a518e51600e4979', 'Antec VSK-4000E Mid-Tower ATX Case Black 3X5.25 1X', 'http://www.ncix.com/detail/antec-vsk-4000e-mid-tower-atx-case-d7-78288-1288.htm', 'TowerATXCaseBla', 10.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/78288ss.jpg', 'some description'),
('7257e83a69ee5eace9c6957836372108', 'Corsair Air Series AF120 LED 120mm Quiet Edition H', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835181054&cm_re=fan-_-35-181-054-_-Product', 'F120LED120mmQui', 30.00, '2016-02-21 10:53:46', 'http://images17.newegg.com/is/image/newegg/35-181-054-TS?$S180W$', 'some description'),
('744544441259bbb6bcf35e52cdc479cd', 'Tripp Lite WATCHDOGSW WatchDog Service Monitoring/', 'http://www.ncix.com/detail/tripp-lite-watchdogsw-watchdog-service-f5-124831.htm', 'WWatchDogServic', 3.00, '2016-02-21 10:51:11', 'http://content.etilize.com/Thumbnail/10151285.jpg', 'some description'),
('7821bbe91757f6d318c0615e6125c4cf', 'Tripp Lite N044-000-R Network Cable Continuity Tes', 'http://www.ncix.com/detail/tripp-lite-n044-000-r-network-cable-4f-123001.htm', 'RNetworkCableCo', 59.00, '2016-02-21 10:15:23', 'http://content.etilize.com/Thumbnail/1011056064.jpg', 'some description'),
('7ba458f7661363420e1a062a2def448f', 'Corsair Air Series AF120 LED 120mm Quiet Edition H', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835181044&cm_re=fan-_-35-181-044-_-Product', 'F120LED120mmQui', 15.00, '2016-02-21 10:53:46', 'http://images17.newegg.com/is/image/newegg/35-181-044-TS?$S180W$', 'some description'),
('7ecd1ced20d81e142743c29230192a45', 'Cooler Master SickleFlow 120 - Sleeve Bearing 120m', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835103091&cm_re=fan-_-35-103-091-_-Product', 'Flow120-SleeveB', 12.00, '2016-02-21 10:53:46', 'http://images17.newegg.com/is/image/newegg/35-103-091-TS?$S180W$', 'some description'),
('7f2ce89f5d08fc4bcdc79ca1ae0429b3', 'Razer Mamba Wired/Wireless RGB Chroma Gaming Mouse', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826153185&cm_re=mouse-_-26-153-185-_-Product', 'relessRGBChroma', 130.00, '2016-02-21 10:50:16', 'http://images10.newegg.com/ProductImageCompressAll200/26-153-185-04.jpg', 'some description'),
('851cfce4255f13ce899b8bed8ada1cf2', 'MSI Z97 Gaming 5 ATX LGA1150 3PCI-E16 4PCI-E1 Cros', 'http://www.ncix.com/detail/msi-z97-gaming-5-atx-4d-97043-1122.htm', 'LGA11503PCI-E16', 170.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/97043ss.jpg', 'some description'),
('855e2015f9267cb70f9f232adc1a938d', 'Microsoft Windows 10 Professional SP1 64-bit (3-Pa', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832589003&cm_re=window-_-32-589-003-_-Product', 'ProfessionalSP1', 580.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-589-003-01.jpg', 'some description'),
('85dd98f7e0025a9f93b19e35b76b4ef1', 'Microsoft Windows 10 Home - 64-bit - OEM', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832416892&cm_re=window-_-32-416-892-_-Product', 'Home-64-bit-OEM', 140.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-416-892-09.jpg', 'some description'),
('865b54d0999011c726093fdcaba41713', 'ASRock Z170A-X1 LGA 1151 Intel Z170 SATA 6Gb/s USB', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16813157680&cm_re=boot-_-13-157-680-_-Product', '1151IntelZ170SA', 170.00, '2016-02-21 10:51:11', 'http://images17.newegg.com/is/image/newegg/13-157-680-TS?$S180$', 'some description'),
('8773ef86c1d5c5e99a3bf4f41f5c4ead', 'Noctua NF-A14 PWM Linus Tech Tips Edition 140mm Co', 'http://www.ncix.com/detail/noctua-nf-a14-pwm-linus-tech-10-119243.htm', 'nusTechTipsEdit', 40.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/119243ss.jpg', 'some description'),
('893ba36e0bbfc98fb2fd60d0a4539da1', 'PC Assembly and Testing With 1 Year Limited NCIX S', 'http://www.ncix.com/detail/pc-assembly-and-testing-with-6c-7842.htm', 'ingWith1YearLim', 100.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/7842ss.jpg', 'some description'),
('8a33597502f160a0993f03771562d697', 'ASUS Z97-PRO Gamer ATX LGA1150 DDR3 3PCI-E16 2PCI-', 'http://www.ncix.com/detail/asus-z97-pro-gamer-atx-lga1150-71-122437.htm', 'TXLGA1150DDR33P', 329.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/122437ss.jpg', 'some description'),
('8a752911ee30e7edbab61d24bf78a738', 'Logitech G402 Hyperion Fury FPS Gaming Mouse', 'http://www.ncix.com/detail/logitech-g402-hyperion-fury-fps-d5-100650-1288.htm', 'onFuryFPSGaming', 125.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/100650ss.jpg', 'some description'),
('8aaed848e8421774b68f1c3ef7709206', 'EVGA SUPERNOVA 750 B2 80 PLUS BRONZE CERTIFIED 750', 'http://www.ncix.com/detail/evga-supernova-750-b2-80-e6-97531-1288.htm', '280PLUSBRONZECE', 65.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/97531ss.jpg', 'some description'),
('8bf967fc10d84d0e10dd9bdfcf252bbc', 'Intel 2GB Bootable USB Loaded With Linux Mint OS *', 'http://www.ncix.com/detail/intel-2gb-bootable-usb-loaded-6b-96907.htm', 'SBLoadedWithLin', 260.00, '2016-02-21 10:51:11', 'http://img.ncix.com/gif/96907ss.jpg', 'some description'),
('94d7fbc5ef12a830363ac41308cec61e', 'Corsair Gaming KATAR Gaming Mouse, Ambidextrous, P', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826816055&cm_re=mouse-_-26-816-055-_-Product', 'GamingMouse,Amb', 50.00, '2016-02-21 10:50:16', 'http://images17.newegg.com/is/image/newegg/26-816-055-TS?$S180$', 'some description'),
('95d87557958d67759eefe73543349868', 'GIGABYTE Z170 MX-GAMING 5 LGA 1151 Intel Z170 HDMI', 'http://www.ncix.com/detail/gigabyte-z170-mx-gaming-5-lga-1a-113390-1288.htm', 'ING5LGA1151Inte', 200.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/113390ss.jpg', 'some description'),
('9959ca06d3a036e28693cdbe9ae9502a', 'Logitech MX Master Dual Connectivity Wireless & Bl', 'http://www.ncix.com/detail/logitech-mx-master-dual-connectivity-79-107348-1288.htm', 'ualConnectivity', 26.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/107348ss.jpg', 'some description'),
('9c1c19016b39ea9d96ae16347673d326', 'Premium PC Assembly and Testing With 1 Year Limite', 'http://www.ncix.com/detail/premium-pc-assembly-and-testing-73-22823.htm', 'andTestingWith1', 26.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/22823ss.jpg', 'some description'),
('9cfec41ca09056b3e75e8ff2b4f16b56', 'ASUS ROG Maximus VIII Hero ATX LGA1151 Z170 Skylak', 'http://www.ncix.com/detail/asus-rog-maximus-viii-hero-c3-111459-1288.htm', 'IHeroATXLGA1151', 115.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/111459ss.jpg', 'some description'),
('9e5d91786ec9053ac38c26d8d0b878fe', 'GIGABYTE Z170X-GAMING 5 LGA 1151 Intel Z170 HDMI S', 'http://www.ncix.com/detail/gigabyte-z170x-gaming-5-lga-1151-4f-113386-1288.htm', 'G5LGA1151IntelZ', 160.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/113386ss.jpg', 'some description'),
('9eefff29a53dce5c8a7654c2ca2fc58b', 'Microsoft Windows 8.1 Pro - 64-bit - OEM', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832416778&cm_re=window-_-32-416-778-_-Product', '1Pro-64-bit-OEM', 180.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-416-778-19.jpg', 'some description'),
('9f0c354d2edacacd2f8f0e56198e7026', 'Baretraps Syretta Womens Size 5.5 Brown Faux Leath', 'http://www.newegg.ca/Product/Product.aspx?Item=9SIA9773DF2559&cm_re=boot-_-9SIA9773DF2559-_-Product', 'mensSize5.5Brow', 41.00, '2016-02-21 10:51:11', 'http://images10.newegg.com/ProductImageCompressAll200/A0B0_1_20140716567898373.jpg', 'some description'),
('a754e3f3988c5e0b9fc2c38d8770048c', 'EVGA 500W 80 PLUS CERTIFIED ACTIVE PFC 12V 34A POW', 'http://www.ncix.com/detail/evga-500w-80-plus-certified-5f-92643-1288.htm', 'RTIFIEDACTIVEPF', 69.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/92643ss.jpg', 'some description'),
('ad983a039fbf5fc9adea1362ec8e3022', 'EVGA GeForce GTX 980 Ti 6GB FTW Gaming ACX 2.0+ 11', 'http://www.ncix.com/detail/evga-geforce-gtx-980-ti-b2-115882-1288.htm', 'Ti6GBFTWGamingA', 300.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/115882ss.jpg', 'some description'),
('ad9e5b0e0d0622a08b12d4752e5c04b1', 'Logitech K400+ Wireless Touch Keyboard With TouchP', 'http://www.ncix.com/detail/logitech-k400-wireless-touch-keyboard-c1-113730-1288.htm', 'essTouchKeyboar', 109.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/113730ss.jpg', 'some description'),
('b00d0615e5dede778ead27390a58aa0d', 'Corsair Air Series SP120 High Performance Edition ', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835181027&cm_re=fan-_-35-181-027-_-Product', 'P120HighPerform', 40.00, '2016-02-21 10:53:46', 'http://images17.newegg.com/is/image/newegg/35-181-027-TS?$S180$', 'some description'),
('b014f70c397f89064fd516d668c4e1a4', 'TRENDnet TC-NT2 Network Cable Tester (TP & Coax)', 'http://www.ncix.com/detail/trendnet-tc-nt2-network-cable-tester-05-35316-1374.htm', 'orkCableTester(', 119.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/35316ss.jpg', 'some description'),
('b2e9432c912373de2fe8104efa870e5b', 'GIGABYTE GTX 970 Gaming G1 1329MHZ 4GB 7.0GHZ GDDR', 'http://www.ncix.com/detail/gigabyte-gtx-970-gaming-g1-61-102011-1288.htm', 'ingG11329MHZ4GB', 205.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/102011ss.jpg', 'some description'),
('b766eed09bd5fdcc991d1c79ca7ff9c6', 'Antec One Mid-Tower Gaming ATX Case Black 3X5.25 5', 'http://www.ncix.com/detail/antec-one-mid-tower-gaming-atx-bf-67322-1288.htm', 'GamingATXCaseBl', 130.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/67322ss.jpg', 'some description'),
('bda810eb79f55854bde12a36ff9321a4', 'MSI Interceptor DS B1 H01-0001711 Black 6 Buttons ', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826554013&cm_re=mouse-_-26-554-013-_-Product', '1H01-0001711Bla', 28.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-554-013-TS?$S180W$', 'some description'),
('c1325d8400ad58222404141b2d7b0117', 'Cooler Master CM Storm Quickfire Tk Backlit Mechan', 'http://www.ncix.com/detail/cooler-master-cm-storm-quickfire-79-77976-1288.htm', 'rmQuickfireTkBa', 13.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/77976ss.jpg', 'some description'),
('c277e9eddd54a890e1037feedf1f692b', 'Riggit Revision 9 Custom Mining Frame & Testbench ', 'http://www.ncix.com/detail/riggit-revision-9-custom-mining-d8-94366.htm', 'stomMiningFrame', 52.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/94366ss.jpg', 'some description'),
('c30b8736b85a483f37ef2bf0747ae28d', 'Azio GM2400 Black 6 Buttons 1 x Wheel Wired Optica', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826465005&cm_re=mouse-_-26-465-005-_-Product', 'Buttons1xWheelW', 20.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-465-005-TS?$S180$', 'some description'),
('c5637b97a753f18602db2b43443b23b8', 'EVGA GeForce GTX 960 4GB SSC GAMING ACX 2.0+ Whisp', 'http://www.ncix.com/detail/evga-geforce-gtx-960-4gb-7c-111575-1288.htm', '4GBSSCGAMINGACX', 990.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/111575ss.jpg', 'some description'),
('cd1e5432d903bc0734b6164976fa0a6a', 'C2G 2FT CAT5E NON-BOOTED Unshielded (UTP) Network ', 'http://www.ncix.com/detail/c2g-2ft-cat5e-non-booted-unshielded-4a-98273-1684.htm', 'OTEDUnshielded(', 25.00, '2016-02-21 10:51:11', 'http://img.ncix.com/gif/98273ss.jpg', 'some description'),
('ce56aeaa654489eb0907a9619d7a471f', 'Microsoft Windows 8.1 64-bit - OEM', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832416776&cm_re=window-_-32-416-776-_-Product', '164-bit-OEM', 130.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-416-776-19.jpg', 'some description'),
('d048a317d30022561f107619e13284d3', 'GIGABYTE Z97MX-GAMING 5 mATX LGA1150 Z97 DDR3 PCI-', 'http://www.ncix.com/detail/gigabyte-z97mx-gaming-5-matx-lga1150-e1-96901-1288.htm', 'G5mATXLGA1150Z9', 143.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/96901ss.jpg', 'some description'),
('d1daf5800b792fe36084607c53d254ce', 'EVGA SUPERNOVA 750 G1 80 PLUS GOLD CERTIFIED 750W ', 'http://www.ncix.com/detail/evga-supernova-750-g1-80-24-97307.htm', '180PLUSGOLDCERT', 150.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/97307ss.jpg', 'some description'),
('d3951492402f7136584079d7eb3ef99c', 'COUGAR CF-V12H Vortex Hydro-Dynamic-Bearing (Fluid', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835553001&cm_re=fan-_-35-553-001-_-Product', 'xHydro-Dynamic-', 17.00, '2016-02-21 10:53:46', 'http://images17.newegg.com/is/image/newegg/35-553-001-TS?$S180W$', 'some description'),
('d60db0c98bb15af7e0bade7a0da7dbd4', 'Microsoft Windows 7 Professional SP1 64-bit - OEM', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16832416804&cm_re=window-_-32-416-804-_-Product', 'ProfessionalSP1', 200.00, '2016-02-21 09:41:12', 'http://images10.newegg.com/ProductImageCompressAll200/32-416-804-08.jpg', 'some description'),
('d632e66396c67a6afa2b6d543cb34697', 'GIGABYTE BRIX Fanless Mini Barebone PC Kit - Intel', 'http://www.ncix.com/detail/gigabyte-brix-fanless-mini-barebone-d5-117464-1288.htm', 'sMiniBarebonePC', 80.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/117464ss.jpg', 'some description'),
('d68820bca8b2a6f1179830e8be682cf6', 'GIGABYTE 970 Gaming AM3+ DDR3 PCIEx16 PCIEx4 2PCI-', 'http://www.ncix.com/detail/gigabyte-970-gaming-am3-ddr3-ef-122992-1288.htm', 'AM3+DDR3PCIEx16', 105.00, '2016-02-21 09:39:36', 'http://img.ncix.com/gif/122992ss.jpg', 'some description'),
('d6afa8a35f50b55b9bf52bc694836df4', 'Corsair Gaming M65 RGB Laser Gaming Mouse - Black', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826816051&cm_re=mouse-_-26-816-051-_-Product', 'GBLaserGamingMo', 75.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-816-051-TS?$S180W$', 'some description'),
('db7f9bb4f77ba433ece38963c05af939', 'ASRock H110M COMBO-G LGA 1151 Intel H110 HDMI SATA', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16813157670&cm_re=boot-_-13-157-670-_-Product', 'LGA1151IntelH11', 115.00, '2016-02-21 10:51:11', 'http://images10.newegg.com/ProductImageCompressAll200/13-157-670-02.jpg', 'some description'),
('df4ec49f40a215d81c28679fc39d522c', 'Noctua NF-F12 PWM 120mm Case Fan', 'http://www.newegg.ca/Product/Product.aspx?Item=9SIA7RD3H03507&cm_re=fan-_-35-608-026-_-Product', '0mmCaseFan', 32.00, '2016-02-21 10:53:46', 'http://images10.newegg.com/ProductImageCompressAll200/35-608-026-02.jpg', 'some description'),
('e000414ebff8a0c1d6f2df135348e3bf', 'EVGA GeForce GTX 960 2GB SSC GAMING ACX 2.0+ Whisp', 'http://www.ncix.com/detail/evga-geforce-gtx-960-2gb-4c-105153-1288.htm', '2GBSSCGAMINGACX', 440.00, '2016-02-21 10:31:50', 'http://img.ncix.com/gif/105153ss.jpg', 'some description'),
('e1a7a6f245e95e928a003e58bae3185e', 'Logitech G302 Daedalus Prime Moba Gaming Mouse 400', 'http://www.ncix.com/detail/logitech-g302-daedalus-prime-moba-ac-103750-1288.htm', 'usPrimeMobaGami', 258.00, '2016-02-21 09:35:29', 'http://img.ncix.com/gif/103750ss.jpg', 'some description'),
('e394a3dcb2870b97d94d611355ed1782', 'STARTECH.COM Professional Multi Function RJ45 RJ11', 'http://www.ncix.com/detail/startech-com-professional-multi-function-rj45-e4-77273.htm', 'ionalMultiFunct', 65.00, '2016-02-21 10:15:23', 'http://img.ncix.com/gif/77273ss.jpg', 'some description'),
('e3a3174653bdb4a95a89b8f79dfb5ea4', 'Cooler Master SickleFlow 120 - Sleeve Bearing 120m', 'http://www.newegg.ca/Product/Product.aspx?Item=9SIA66K3102008&cm_re=fan-_-35-103-060-_-Product', 'Flow120-SleeveB', 18.00, '2016-02-21 10:54:42', 'http://images10.newegg.com/ProductImageCompressAll200/35-103-060-17.jpg', 'some description'),
('e45f3495d8e8641166a888717c7dcf4b', 'ASRock B150M-ITX LGA 1151 Intel B150 HDMI SATA 6Gb', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16813157677&cm_re=boot-_-13-157-677-_-Product', '1151IntelB150HD', 140.00, '2016-02-21 10:51:11', 'http://images10.newegg.com/ProductImageCompressAll200/13-157-677-01.jpg', 'some description'),
('e69cf7cdb4297787cebfab4b5e73b642', 'EVGA SUPERNOVA 750 G2 80 PLUS GOLD CERTIFIED 750W ', 'http://www.ncix.com/detail/evga-supernova-750-g2-80-f0-94405-1288.htm', '280PLUSGOLDCERT', 47.00, '2016-02-21 10:53:46', 'http://img.ncix.com/gif/94405ss.jpg', 'some description'),
('ec0c951a6291b644b584ef36f07e0418', 'ASRock Z170A-X1/3.1 LGA 1151 Intel Z170 SATA 6Gb/s', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16813157681&cm_re=boot-_-13-157-681-_-Product', 'LGA1151IntelZ17', 175.00, '2016-02-21 10:51:11', 'http://images17.newegg.com/is/image/newegg/13-157-681-TS?$S180$', 'some description'),
('edfc593858981038729c0af5db0a403a', 'Cooler Master SickleFlow 120 - Sleeve Bearing 120m', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16835103060&cm_re=fan-_-35-103-060-_-Product', 'Flow120-SleeveB', 10.00, '2016-02-21 10:53:46', 'http://images10.newegg.com/ProductImageCompressAll200/35-103-060-17.jpg', 'some description'),
('f109ea3c06b1676acd01bc9d7c5a75c3', 'Microsoft Optical Mouse 200 for Business Black 3 B', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826105447&cm_re=mouse-_-26-105-447-_-Product', 'use200forBusine', 10.00, '2016-02-21 09:35:29', 'http://images17.newegg.com/is/image/newegg/26-105-447-TS?$S180W$', 'some description'),
('ff0b76ee3260de4eddda4921d8e26284', 'Refurbished: Logitech Wireless Mouse M510 Matte Ti', 'http://www.newegg.ca/Product/Product.aspx?Item=N82E16826197140&cm_re=mouse-_-26-197-140-_-Product', 'hWirelessMouseM', 30.00, '2016-02-21 10:50:16', 'http://images17.newegg.com/is/image/newegg/26-197-140-TS?$S180W$', 'some description');

-- --------------------------------------------------------

--
-- Table structure for table `UserAccount`
--

CREATE TABLE IF NOT EXISTS `UserAccount` (
  `userID` int(2) NOT NULL AUTO_INCREMENT,
  `username` varchar(30) NOT NULL,
  `password` varchar(15) NOT NULL,
  `address` varchar(100) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `productList` text,
  PRIMARY KEY (`userID`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `UserAccount`
--

INSERT INTO `UserAccount` (`userID`, `username`, `password`, `address`, `phone`, `productList`) VALUES
(1, 'user1', 'userone', '123 Fake Street', '123-456-7810', '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
