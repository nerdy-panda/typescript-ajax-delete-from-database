-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 07, 2024 at 06:46 PM
-- Server version: 10.6.12-MariaDB-0ubuntu0.22.04.1
-- PHP Version: 8.1.2-1ubuntu2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `javascript`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(160) NOT NULL,
  `describe` varchar(255) NOT NULL,
  `body` longtext DEFAULT NULL,
  `thumbnail` varchar(120) DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `describe`, `body`, `thumbnail`, `created_at`, `updated_at`) VALUES
(1, 'ROCCAT Vulcan TKL Linear PC Gaming Keyboard', 'TITAN SWITCH MECHANICAL (LINEAR) - Designed and built entirely by ROCCAT engineers and developed for gamers who love the feel of mechanical switches but demand a smooth and rapid actuation', 'Let\'s address the negatives. Yes, the keys can \"ping\" upon press. I don\'t care. Most of my mechanical keyboards make a lot of noise. I don\'t need silence, nor do I search for it. Go buy a Brown Cherry MX keyboard and find a product that was made for you if you don\'t like noisy switches.\n\nFor the rest of us, these Titan Opticals are fast and responsive. The rebound and response are excellent, and it feels good to type and game on. For gamers, the W keycap has a little bump like your F and J keys for re-centering without looking. Actuation happens before you bottom out like most switches and the linear is great without any feedback until you bottom out. If you need feedback on actuation, Titan Optical is not for you. Choose the Titan Tactile Mechanical or similar.\n\nFor the person that complained for the lack of dedicated media keys doesn\'t read the instructions. You can set F9-F12 dedicated to media keys as I do not use those keys on a regular basis (FN+DEL locks out only F9-F12 to media until you set it back). With the mute and volume knob it\'s great for streaming music or Youtube.\n\n\n\n\nGame mode (FN+PGDOWN) locks out windows keys like most keyboards.\n\nOverall super happy with it. The only downside (and I didn\'t take off a star) is the FN+END which turn FN into another windows key works, but you can\'t revert back without unplugging the keyboard. Considering my K65 Corsair doesn\'t even give me that option on the hardware side, I can\'t fault this bug.\n\nThe Titan Optical Switches are compatible with Cherry MX keycaps fyi as I\'ve swapped some of my Corsair keycaps just to see, but honestly the keycaps are great and I have no plans to swap them. One last note, the RGB lighting is north not south which I feel is pretty standard.\n\nSpacebar is 6.25u not 6.5u like most keyboards.', 'roccat-keyboard.jpg', '2024-01-07 15:18:09', NULL),
(2, 'CyberpowerPC Gamer Supreme Liquid Cool Gaming PC ', 'System: AMD Ryzen 9 7900X 4.7GHz 12-Cores | AMD X670 Chipset | 16GB DDR5 | 2TB PCI-E Gen4 NVMe SSD | Genuine Windows 11 Home 64-bit \nGraphics: NVIDIA GeForce RTX 4070 12GB Video Card | 1x HDMI | 2x DisplayPort ', 'Get the pinnacle of gaming performance with the CYBERPOWERPC Gamer Supreme series of gaming computers. The Gamer Supreme series features monstrous processing power combined with the latest and greatest graphics cards to handle even the most demanding games on the market. An immense RAM allows you to easily tackle system-intensive applications such as video editing, and ensures a lag-free multitasking experience. \nWhile a bit noisy when running certain games and sometimes even using a browser, this PC does it\'s job exceptionally well. Especially over what I had been using before, a medium-end PC with parts relevant 10 years ago (AMD FX8360 CPU, RX480 GPU, etc.) this blows it out of the water and easily gets over 100 FPS (generally more) in even the most demanding games with graphics set to high, or very high/ultra. For the price, very worth it.\nGreat PC, performant, reasonably priced, amazing packaging, a couple of gifts. The PC is ready to go right after unboxing with a quick installation guide. Highly recommended!\nOverall:\nA great gaming PC, providing me consistently high framerates on HDR 1440p screens. Images have been buttery smooth, crisp, and beautiful. Even games that are commonly reviled for poor optimization issues were managing just fine. Graphic and CPU intensive games are holding up well, with the AIO CPU cooler keeping thermals well-managed around 75 Celsius under intense loads. The shipped PC has a BIOS version from September of this year, so it should be just fine for those who don\'t know how to do that.\n\nVery importantly, this PC is highly upgradeable. The AIO Cooler can handle any Intel CPU on the market with ease, and the power supply is juicy enough to spin video cards that cost more than my \'94 Honda Accord from high school. It has many storage slots and tons of space on the inside for components, and really love that vertical riser to prevent sagging/damaging the PCI slot if I ever decide to bump up the GPU to something especially beefy.', 'CyberpowerPC.jpg', '2024-01-07 15:21:01', '2024-01-07 19:04:01'),
(3, 'Cheap Video Game Chair', '👍【High Quality Video Gaming Chair】Ergonomic Video Game Chair is made of high quality materials, all parts of the gaming chair  ', 'Ergonomic Video Game Chair Design】Ergonomic High-Back Computer Chair feature human-centered ergonomic construction, with adjustable flip-Up arms and back, whithc the breathable premium PU leather, soft and comfortable, even after sitting for a long time will not feel fatigue.\n👍【Sturdy Base & Smooth Wheels】This Gaming Office Desk Chair comes with smooth wheels that move smoothly. In use can effectively protect the ground to reduce the wear and tear from the movement, and reduce the noise generated in the move. The heavy-duty metal base and smooth-rolling casters provide a sturdy base for the gaming chair, allowing the chair to withstand up to 250 pounds of weight.\n👍【Multi-Scene Application & Easy Assemble】This Ergonomic PU Leather Gaming Office Chair are very convenient and versatile, you can easily assemble in about 15 minutes, which is suitable for office, game room, living room, bedroom, study, etc. Choose this Ergonomic High-Back Video Game Chiar will make your space more modern and elegant.\n👍【Best Gift & Quality Guarantee】For this Computer Gaming Chair, we provide up to 90 days warranty, which is cheap and good material. Meanwhile, near various holidays and New Year, our Ergonomic PU Leather Gaming Office Chair is also the best gift choice for family, friends and relatives, for long-sitting game enthusiasts and workaholics, both to meet the protection of their bodies also allows you to express a piece of their feelings, choose this gaming chair, you can\'t go wrong. ', 'chair.jpg', '2024-01-07 15:26:16', NULL),
(4, 'ASUS TUF Gaming Radeon™ RX 7900 XTX OC Edition 24GB', ' OC Mode: up to 2615 MHz (Boost Clock)/ up to 2455 MHz (Game Clock)\nAxial-tech fans scaled up to deliver 14% more airflow\nDual ball fan bearings last up to twice as long as conventional designs ', NULL, NULL, '2024-01-07 15:27:02', NULL),
(5, ' Redragon M910-KS Gaming Mouse and K671 Gaming Keyboard ', 'Fully Programmable Gaming Mous- This wireless gaming mouse make it possible for you to remap the buttons, assignment of complex macro functions, ', 'Fully Programmable & Highly Configurable- Expand your options with K671 mechancial gaming keyboard to design your own keys, light effects and macro, the macros with different keybindings or shortcuts combine multiple keys function in one key for more efficient work and gaming. \nFully Programmable Gaming Mous- This wireless gaming mouse make it possible for you to remap the buttons, assignment of complex macro functions, change RGB backlit effects and speed, adjust DPI in a wide range(250-8000) to fit your different needs via redragon driver, It\'s a good choice for gaming and working.The gaming driver is compatible with windows only. \nBrilliant Color Illumination- With 11 unique backlights, choose the perfect ambiance for any mood. Adjust light speed and brightness among 5 levels for a comfortable environment, day or night. The double injection ABS keycaps ensure clear backlight and precise typing. From late-night tasks to immersive gaming, our mechanical keyboard enhances every experience. ', 'red-dragon.jpg', '2024-01-07 15:29:07', '2024-01-07 19:08:01'),
(6, 'INNOCN 27G1H 27 Inch 240Hz 144Hz Gaming Monitor Full HD 1920 x 1080P Computer Monitor', '2023 INNOCN Gaming Monitor 240Hz & G-Sync Compatible】This newest 27 inch 1080p 240Hz computer gaming monitor with 1ms super fast response time and G-SYNC support for a tear-free experience & low latency, immersive in the gaming world, ', 'High Image Quality FHD 1080P Computer Gaming Monitor】This 27 inch computer monitor adopt a new generation of 178 degrees viewable screen and deliver 1920*1080p resolution with 99% sRGB, it offers a wider color gamut than most conventional monitors, giving deeper colors and defining features, make the gaming picture more vivid. It\'s also outstanding performance for working from home\n【HDMI + DisplayPort Connectivity】This INNOCN PC gaming monitor 27G1H adopt high standard HDMI and DisplayPort interfaces which support Desktop PC, Gaming Laptops, Switch, XBOX, PS gaming console etc. Joystick selection button provide better setting experience.\n【Ultra Narrow 3-Sided Bezels, Easy to install】27G1H high refresh rate computer gaming monitor adopt frameless and ultra slim design, hassel-free to install. machine black body, metal stand, Tilt adjustable, VESA wall mountable, size: 75*75 mm.\n【Blue Light Reduction & Flicker-Free】Eye-Care PC gaming monitor reduce the blue light to protect you from eye fatigue, irritation and strains. This enables you to work on your documents, watch movies, or play games more comfortably for extended periods. INNOCN provide 1-year product quality service and 7*24 hours quick solution for any product/order issue. Buy at ease! ', 'inoocon.jpg', '2024-01-07 15:30:43', NULL),
(7, 'ASUS ROG Strix 23.8” 1080P HDR Gaming Monitor (XG249CM) ', '23.8-inch Full HD (1920 x 1080) gaming monitor with ultrafast 270Hz (overclocking) refresh rate designed for professional gamers', ' ASUS Fast IPS technology enables a 1ms response time (GTG) for sharp gaming visuals with high frame rates\nASUS Extreme Low Motion Blur Sync (ELMB SYNC) technology enables ELMB together with G-SYNC Compatible, eliminating ghosting and tearing for sharp gaming visuals with high frame rates.\nHigh Dynamic Range (HDR) technology delivers contrast and color performance\nSupports both Adaptive-Sync with NVIDIA GeForce* graphics cards and Freesync Premium with AMD graphics cards. *Compatible with NVIDIA GeForce GTX 10 series, GTX 16 series, RTX 20 series and newer graphics cards\nWhat’s in the Box: Power cord & adapter, HDMI cable, DisplayPort cable, USB cable, USB-C cable, color calibration report, ROG sticker, Warranty card, Quick Start Guide\nFree 3-month Adobe Creative Cloud Subscription: Receive complimentary access with the purchase of this product (offer valid from 9/15/2021 to 08/31/2024) ', 'asus-monitor.jpg', '2024-01-07 15:33:30', '2024-01-07 17:51:12'),
(9, 'Intel Core i5-12600K Desktop Processor with Integrated Graphics', 'Game and multitask without compromise powered by Intel’s performance hybrid architecture on an unlocked processor. ', ' Integrated Intel UHD 770 Graphics\nCompatible with Intel 600 series and 700 series chipset-based motherboards\nIntel Core i5 Deca-core (10 Core) 3.70 GHz processor offers hyper-threading architecture that delivers high performance for demanding applications with improved onboard graphics and turbo boost\nThe Socket LGA-1700 socket allows processor to be placed on the PCB without soldering 16 MB of L3 cache rapidly retrieves the most used data available to improve system performance\nIntel 7 Architecture enables improved performance per watt and micro architecture makes it power-efficient ', 'intelli5.jpg', '2024-01-07 15:36:30', NULL),
(10, 'Alienware Aurora R16 Gaming Desktop', 'EFFICIENT AIRFLOW: Larger passageways and optimized internal cable management, allows airflow to be more productive, resulting in quieter acoustics. ', ' 12-PHASE VOLTAGE REGULATION: 12-phase voltage regulation technology, enables up to 13th Gen Intel Core processors to deliver high-level performance for hours on end.\nLEGEND 3 DESIGN: The R16 debuts our minimalist and functional Legend 3 design that focuses on simplicity with features that are optimized for any desktop gaming setup.\n240MM HEAT EXCHANGER: Game cool and quietly thanks to a 240mm heat exchanger* that heightens the system’s thermal resistance and ensures temperatures stay managed during longer gaming sessions. *only in CPU liquid-cooled options\nTOTAL COMMAND: Featuring the revamped Alienware Command Center software, where you can intuitively tailor and monitor your system’s performance and customize lighting and other settings across your setup.\nA BETTER GAMING EXPERIENCE: Premium Support has you covered day and night to help with new game installation, troubleshooting, and more. It’s one more weapon in your arsenal. Get one year of Premium Support included when you purchase an Alienware Gaming PC. ', 'ALLINWARE.jpg', '2024-01-07 15:38:32', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
