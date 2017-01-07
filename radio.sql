-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 08, 2016 at 01:51 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `radio`
--

-- --------------------------------------------------------

--
-- Table structure for table `ads`
--

CREATE TABLE `ads` (
  `id` int(6) NOT NULL,
  `name` varchar(50) COLLATE utf32_bin NOT NULL,
  `user_id` int(6) NOT NULL,
  `value` varchar(50) COLLATE utf32_bin NOT NULL,
  `type` int(1) NOT NULL,
  `freq` int(1) NOT NULL,
  `times` int(5) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `ads`
--

INSERT INTO `ads` (`id`, `name`, `user_id`, `value`, `type`, `freq`, `times`, `status`) VALUES
(1, 'RCBestFemale', 1, 'RCBestFemale', 1, 5, 8895, 1),
(2, 'RCbestMale', 1, 'RCbestMale', 1, 5, 8894, 1),
(3, 'RCfemale', 1, 'RCfemale', 1, 5, 8894, 1),
(4, 'RCfemale2', 1, 'RCfemale2', 1, 5, 8895, 1),
(5, 'RCfemale2', 1, 'RCfemale2', 1, 5, 8894, 1),
(6, 'RCmale2', 1, 'RCmale2', 1, 5, 8894, 1),
(7, 'vcestaouvindo', 1, 'vcestaouvindo', 1, 5, 8894, 1);

-- --------------------------------------------------------

--
-- Table structure for table `config`
--

CREATE TABLE `config` (
  `name` varchar(50) COLLATE utf32_bin NOT NULL,
  `value` varchar(200) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `config`
--

INSERT INTO `config` (`name`, `value`) VALUES
('ads_interval', '3');

-- --------------------------------------------------------

--
-- Table structure for table `musics`
--

CREATE TABLE `musics` (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `musics`
--

INSERT INTO `musics` (`id`, `title`) VALUES
('-fxMThzEqlg', 'Quintino - Go Hard'),
('LHCob76kigA', 'Lukas Graham - 7 Years'),
('-QpfBAWgVnk', 'WY - Filthy (feat. Lox Chatterbox)'),
('07_Zv_nvll4', 'One Direction - What Makes You Beautiful'),
('EZt6mZ-Te1U', 'Alan Walker - Sing Me To Sleep (marshmello Remix)'),
('0KSOMA3QBU0', 'Katy Perry - Dark Horse (Official) ft. Juicy J '),
('0mOqIsnqSqM', 'Firebeatz & Fafaq - Sir Duke (Festival Mix)'),
('0t2tjNqGyJI', 'Twenty One Pilots - Stressed Out (Tomsize Remix)'),
('14zIhlfeUjE', 'Arman Cekin - California Dreaming (feat. Paul Rey)'),
('rQeJmYQe-1o', 'Cash Cash feat. Nelly - Millionaire (JayKode Remix)'),
('1PvBc2TOpE4', 'Coldplay - Magic'),
('1ZpACRqaX6s', 'Justin Bieber - Sorry'),
('28GpKacWLWI', 'Abstract - Neverland (ft. Ruth B) (Prod. Blulake)'),
('2i2khp_npdE', 'Alan Walker - Sing Me To Sleep'),
('31crA53Dgu0', 'Sia - Cheap Thrills (Performance Edit)'),
('3i-VrbTFIWI', 'Flapo - Dear Neighbor (feat. Jenni Potts) (Pham Remix)'),
('3IIspaicSnY', 'Drake - One Dance feat. Kyla & Wizkid'),
('3lcSFAItC4E', 'Charlie Puth ~ One Call Away'),
('3O1_3zBUKM8', 'Naughty Boy - La La La ft. Sam Smith'),
('3x2ABSAMVno', 'David Guetta - Shot Me Down ft. Skylar Grey'),
('450p7goxZqg', 'John Legend - All of Me'),
('4GdWX_bFfdM', 'Liu - Groove'),
('4QrsAXDxR8I', 'The Chainsmokers ft. Charlee - Inside Out (ARMNHMR Remix)'),
('4SKeAGV59Kk', 'Avicii - Hold On Never Leave Ft. Martin Garrix'),
('DXcTlvECIHU', 'Pluto x ye. - Breath'),
('4WgWGcED0JQ', 'One Republic - Counting Stars'),
('4wpN5XAPoTc', 'Justin Bieber - What Do You Mean (Angelika Vee Cover) [Justin Caruso Remix]'),
('5EY04LvXqV8', 'Don''t Let Me Down (Dom Da Bomb & Electric Bodega Mixshow Remix)'),
('5g6RBd-vxBk', 'Alan Walker - Faded (Dino Roc Remix)'),
('5GL9JoH4Sws', 'Fifth Harmony - Work from Home ft. Ty Dolla $ign'),
('5hEh9LiSzow', 'Jetta - I''d Love to Change the World (Matstubs Remix)'),
('5y_KJAg8bHI', 'Avicii - Wake Me Up'),
('5zARzHddnWc', 'Neptunica - Poseidon'),
('X9OvgrxaPKU', 'Elle King - Exs & Ohs'),
('4XjgXHxH1Dw', 'Victoria Magda - Pumped Up Kicks (AceLine Remix)'),
('66G-yyeWFjE', 'Jinco - Tokyo'),
('6D8tPSR6uvQ', 'Levianth - Your Eyes'),
('6qPZkCn3-Dk', 'Yultron - Love Inside'),
('7vgN39vrk0c', 'Justin Bieber - Love Yourself (Vanic Remix)'),
('83m3v5C-mKY', 'Arman Cekin - California Dreaming (feat. Paul Rey)'),
('8Er6l7UOnbI', 'Vanic x K.Flay - Make Me Fade'),
('9hmd7of42DM', 'Yall - Hundred Miles ft. Gabriela Richardson'),
('eVKO5NOW3xU', 'CADE - Make You Feel Loved'),
('9PB30JUOncw', 'Lukas Graham - 7 Years (T-Mass Remix) [feat. Toby Romeo]'),
('HGes23KRVtM', 'Martin Garrix - Oops (Lowder Remix)'),
('xEs6rWPCW5g', 'Kozah - Unleash (feat. Otherside)'),
('9ZehWVQp-no', 'Firebeatz & Jay Hardway - Home'),
('aho6XmpSgk4', 'Levianth & Denis Elezi - Beside Me'),
('AtKZKl7Bgu0', 'Calvin Harris - I Need Your Love ft. Ellie Goulding'),
('Bg5Cfxr7IV4', 'Duelle - Want It All'),
('BiBEheGyG5o', 'Rationale - Fuel To The Fire (The White Panda Remix)'),
('bP670bzonW8', 'john legend - all of me (steve james remix)'),
('BqsQKke_hmc', 'T-Mass x WOLFE - Say Please (feat. Emma Sameth)'),
('bvC_0foemLY', 'Robin Schulz - Sugar (feat. Francesco Yates)'),
('BVHlxD1pgz4', 'Arman Cekin & Ellusive - Show You Off (feat. Xuitcasecity)'),
('Bznxx12Ptl0', 'AronChupa - I''m an Albatraoz'),
('c13G_y7g71c', 'ZHU x Skrillex x THEY. - Working For It (NADERI Remix)'),
('Ce0dhdu20IY', 'MORTEN - Beautiful Heartbeat (Nine Lives Remix)'),
('cHHLHGNpCSA', 'Avicii - Waiting For Love'),
('cqkzoskWfww', 'Nilow - ( Lisa Mitchell ) - Neopolitan Dreams - Dubstep Remix'),
('cuX1IBs6_Fc', 'The Tech Thieves & Denis Elezi - Tell Me'),
('C_3d6GntKbk', 'ZAYN - PILLOWTALK'),
('D-fOlAaVlsA', 'Icona Pop- I Love It (I ''t Care)'),
('d3DQy4OxFWw', 'Shawn Mendes | Stitches'),
('d5lN0N_t4RU', 'Wolfsnare & M.H.G ft. Junior Paes - Out Of My Mind (Silence Remix)'),
('bNVRzXQUfjM', 'Jack Ü - Mind (Slander Remix)'),
('UrUJyKsLQeU', 'DNCE - Toothbrush'),
('DMg8LwfXdyc', 'ROBIN SCHULZ & RICHARD JUDGE SHOW ME LOVE'),
('Dr1nN__-2Po', 'Tiesto & KSHMR feat. Vassy - Secrets'),
('V0lw3qylVfY', 'X Ambassadors - Unsteady'),
('vEKRKZ8W38M', 'Filatov & Karas – Tell It To My Heart'),
('TQ0E2lfl7Ho', 'Lucas & Steve - Love On My Mind'),
('e7QvPgEquUk', 'Jackal - Anonymous (feat. Mister Blonde)'),
('eDJf0p4yQek', 'Mike Posner - I Took A Pill In Ibiza'),
('eJSik6ejkr0', 'Naughty Boy - Runnin (Lose It All) ft. Beyonce, Arrow Benjamin'),
('eMFZn-M8LfE', 'Illenium - It''s All On U (feat. Liam O''Donnell)'),
('EP625xQIGzs', 'Tobu - Hope'),
('ePQe5E69INg', 'Katy Perry - The One That Got Away'),
('eUesDQxGLXA', 'Veorra & The Tech Thieves - Ghost Town'),
('oS6wfWu0JvA', 'Lykke Li - I Follow Rivers (The Magician Remix)'),
('Ey_hgKCCYU4', 'Jonas Blue - Perfect Strangers ft. JP Cooper'),
('f9zvK8tMmiE', 'Skrillex & Diplo - Where Are U Now (feat. Justin Bieber) (Marshmello Remix)'),
('fDrTbLXHKu8', 'Skrillex & Diplo - "Mind" feat. Kai'),
('zXDAYlhdkyg', 'Florida Georgia Line - H.O.L.Y.'),
('YUYjxf9rHCY', 'Marc E. Bassy - You & Me ft. G-Eazy'),
('Fo2A2CwIdss', 'I''m yours - Jason Mraz'),
('Fw0R0b2r6pE', 'it''s different - Pokemon Ãœ (feat. Broderick Jones)'),
('FyASdjZE0R0', 'The Chainsmokers - Roses'),
('g2rdrNONy7k', 'tiesto l''amour toujours '),
('gAHnVrM6kw8', 'Paradise - Coldplay'),
('gCYcHz2k5x0', 'Martin Garrix - Animals'),
('Gk6PD_T50rM', 'Hotel Garuda - Smoke Signals (Alizzz Remix)'),
('GnQcMBzhr8E', 'Years & Years - King (MACE Remix)'),
('Gqp_8E4zB6g', 'T.I. - No Mediocre ft. Iggy Azalea (Grandtheft Remix ft. Migos) '),
('GsPq9mzFNGY', 'James Bay - Let It Go'),
('gxE4ngu78Ro', 'Blackbear - Idfc (Tarro Remix)'),
('Y43dXgGpJfE', 'Mokita x The Ready Set - Broken Parts'),
('hEqAqWbHfPw', 'PLS&TY & Autolaser - Hiding From The Rain (Xan Griffin Remix)'),
('hHUbLv4ThOo', 'Pitbull - Timber ft. Ke$ha'),
('HJb0VYVtaNc', 'Calvin Harris - Blame ft. John Newman'),
('3fxq7kqyWO8', 'TheFatRat - Time Lapse'),
('FJWRtYPzHy0', 'Adam Jensen - Sandcastles (ToWonder x Severo Remix)'),
('hvynkEbRgDc', 'Dimitri Vegas & Like Mike, Steve Aoki vs Ummet Ozcan - Melody'),
('YlwveK7O5uA', 'Jakoban & D!avolo - Stay (feat. Gaby Henshaw)'),
('I8mS8Pfgros', 'twenty one pilots - Heathens (DISTO Remix)'),
('Ib_8bAYLLNo', 'Capital Cities - Safe And Sound'),
('IkmAu0KeHYw', 'Faytal - You Got Me (ft. Courtney Grace)'),
('ilw-qmqZ5zY', 'Lost Frequencies feat. Janieck Devy - Reality (Official Music Video)'),
('ip4Q1pbrYDg', 'Avicii - Broken Arrows'),
('J1b22l1kFKY', 'Sia - Cheap Thrills'),
('j5-yKhDd64s', 'Eminem - Not Afraid'),
('J9NQFACZYEU', 'Calvin Harris - Outside ft. Ellie Goulding'),
('jD0asf_uxKA', 'gnash - i hate u, i love u (ft. olivia o''brien) (Zo Grand Remix)'),
('JF8BRvqGCNs', 'Rihanna - Stay ft. Mikky Ekko'),
('jFxUhh2HHX4', 'Justin Bieber - Company'),
('jhdhD2RXvd0', 'Arman Cekin - Sever The Ties (ft. Esther Sparkes)'),
('_daZh_WlHvY', 'Just A Gent & Kasbo - Sovereign (feat. Jon)'),
('jPW5A_JyXCY', 'Robin Schulz - Sugar (feat. Francesco Yates)'),
('JrlfFTS9kGU', 'Lilly Wood & The Prick - Prayer in C (Robin Schulz remix)'),
('j_z8IFKGvq4', 'Jetta - Take It Easy (Matstubs Remix)'),
('k1gsZ-OsGpI', 'Coldplay - Hymn For The Weekend (Seeb remix)'),
('K533gW3boIY', 'G-Eazy X Bebe Rexha - Me, Myself & I '),
('kdemFfbS5H0', '#SELFIE - The Chainsmokers'),
('58TBZnvyGwQ', 'Ruth B - Lost Boy'),
('kHo0pn8C7F0', 'Chris Brown ft. Usher & Zayn - Back To Sleep (Remix)'),
('V13MbW3oMUw', 'Shaun Frank - Let You Get Away (ft. Ashe)'),
('KnL2RJZTdA4', 'Martin Garrix & Jay Hardway - Wizard'),
('kQFywYvqhd0', 'R3hab & Quintino - Freak'),
('LWvCZyHTTnc', 'Yoe Mase - Your Light'),
('kujYMUlVnvk', 'Marshmello - Alone (Xan Griffin Remix)'),
('KWZGAExj-es', 'Sia - Elastic Heart feat. Shia LaBeouf & Maddie Ziegler'),
('lbMeZUM0slg', 'Marshmello - CoLoUR'),
('LG558yBrNfk', 'Katy Perry - Hot N Cold'),
('2-MBfn8XjIU', 'Meghan Trainor - Like Im Gonna Lose You ft. John Legend'),
('LMjIvK6ndSc', 'Point Point - All This'),
('LNcicU_A55Q', 'Ship Wrek & Zookeepers - Stranded'),
('VrGScAzGtXs', 'Vicetone - Anywhere I Go'),
('lqYQXIt4SpA', 'Alan Walker - Force'),
('LrUvu1mlWco', 'Miley Cyrus - We Can''t Stop'),
('lWeKIcjOeF0', 'Justin Bieber - Company (Rajiv Dhall Cover) [it''s different Remix]'),
('Ly7uj0JwgKg', 'Flume - Never Be Like You feat. Kai'),
('McEoTIqoRKk', 'Calvin Harris - Summer'),
('MDJ0U4FC5KM', 'San Holo - RAW'),
('mKzLoZFz8PE', 'Marshmello - Keep it Mello ft. Omar LinX'),
('EsGiBwK4Ycc', 'Yuna - Lullabies (Adventure Club Remix)'),
('MoHnffhBwqs', 'David Guetta ft. Zara Larsson - This One''s For You'),
('mOKqNxN4jWM', 'DJ Snake - Middle ft. Bipolar Sunshine'),
('mqt10gn7e8k', 'Justin Bieber - Love Yourself'),
('MwSkC85TDgY', 'Pegboard Nerds - Disconnected'),
('n4tK7LYFxI0', 'Spektrem - Shine'),
('N7jRV_rgagM', 'AREA21 - Spaceships'),
('nAygLkdS2ZY', 'Bassjackers - F*CK (Dimitri Vegas & Like Mike Edit)'),
('NdTMw5OW14U', 'Channels - Flare (feat. Kat Kennedy)'),
('nntGTK2Fhb0', 'Skrillex and Diplo - "Where Are U Now" with Justin Bieber'),
('ntLop32pYd0', 'Diplo - Revolution (SEAN&BOBO REMIX)'),
('jclnm-0ktHM', 'OneRepublic - Wherever I Go'),
('nv76KvFV748', 'Diplo - Revolution (feat. Faustix & Imanos and Kai)'),
('O56GyG_nvqA', 'Taska Black - Leave Me'),
('oC-GflRB0y4', 'David Guetta & Showtek - Bad ft.Vassy'),
('OJBxNA8cX-E', 'Razihel - Love U'),
('W-W6_o13F3U', 'Cheat Codes x Kris Kross Amsterdam - Sex'),
('OOsjtzL4WOA', 'DVBBS & Jay Hardway - Voodoo '),
('LuclB2rZYMk', 'Shawn Mendes - Treat You Better'),
('OVMuwa-HRCQ', 'Tristam & Braken - Flight'),
('PfGaX8G0f2E', 'Justin Bieber - I''ll Show You'),
('7n2EFr-o_DA', 'Breathe Carolina & Crossnaders - Stable'),
('PMUt0lShZfs', 'twenty one pilots - Ride (Jaydon Lewis Remix)'),
('ppv-0Csa5uo', 'Pegboard Nerds - Just Like That ft. Johnny Graves (WOLFE Remix)'),
('pVLmZMjxfjw', 'Eiffel 65 - Blue (KNY Factory Remix)'),
('PVzljDmoPVs', 'David Guetta - She Wolf (Falling To Pieces) ft. Sia'),
('MGaEf0CZfbQ', 'Calvin Harris - My Way'),
('qDcFryDXQ7U', 'Major Lazer - Light It Up (feat. Nyla & Fuse ODG) [Remix]'),
('gA2OtDUFBWI', 'NoMbe x Sonny Alven - California Girls'),
('qj5zT4t7S6c', 'Sigala - Sweet Lovin'' Feat. Bryn Christopher'),
('NzppOnbr7P8', 'J. Lisk - NYC'),
('qo6ygYSxwEY', 'Gioni - Trigger'),
('qP0xBgSgapM', 'Michael Canitrot - Sucker For Your Love (Futuristic Polar Bears Remix)'),
('QPAqgakepHo', 'The Chainsmokers & Tritonal - Until You Were Gone ft. Emily Warren (YULTRON Remix)'),
('Q_R8GHkXaYM', 'Bright Lights - Runaway ft. 3LAU (T-Mass Remix)'),
('N9hazmsUxrM', 'David Guetta & Akon - Sexy Bitch'),
('RDIMl4VKBf8', 'Jason Derulo feat. Snoop Dogg - Wiggle (Onderkoffer Remix)'),
('J-gYJBsln-w', 'Krewella - Alive'),
('RiJG0OgdTZo', 'Kaskade ft. Ilsey - Disarm You (Illenium Remix)'),
('rLHOGHjU-Uk', 'ChildsPlay - Chase'),
('RmVxsoz8-Oc', 'Avicii ft. Robbie Williams - The Days'),
('Dg8tsMrzcP0', 'Anna Lunoe - Radioactive'),
('oydff0QlXSM', 'Britney Spears - Make Me... ft. G-Eazy'),
('s8XIgR5OGJc', 'The Chainsmokers - Don''t Let Me Down (Illenium Remix)'),
('SrojgRmqmOE', 'Playmen - Stand By Me Now (Gioni Remix)'),
('SsrVM4yXf5w', 'Yellow Claw & Flux Pavilion - Catch Me (WY Flip)'),
('svpmv65Ii60', 'Fabian Mazur & Luude - Right Now'),
('SYM-RJwSGQ8', 'Tove Lo - Habits (Stay High) - Hippie Sabotage Remix'),
('szj59j0hz_4', 'Galantis - Runaway (U & I)'),
('tD4HCZe-tew', 'Zara Larsson - Lush Life'),
('tgIqecROs5M', 'AWOLNATION - Sail'),
('tLY3D1Ii-Wo', 'Coyote Kisses - Waiting For You (feat. Madison Love)'),
('ZcSr18uyPvc', 'Skrux - Our Fragment (feat. Missio)'),
('toDqvHvTN7c', 'Adam Lambert - "Ghost Town"'),
('HdAkYCyCZv8', 'Lukas Graham - Mama Said'),
('tyrUaI4KBRk', 'FURY - Fade Away (feat. Tallyn)'),
('u3VFzuUiTGw', 'Mike Posner - I Took A Pill In Ibiza (SeeB Remix)'),
('U7kP-t6uU5k', 'Kygo x Romy Wave - Raging (SGNFCNTS Remix)'),
('uiyUOrr5Ieo', 'Martin Garrix - Bouncybob (Feat. Justin Mylo & Mesto)'),
('UJfT-C6XKI4', 'Calvin Harris - Feel So Close'),
('ulhCd_dOLuE', 'Jesse Marco & D Star - 2 GOOD 2 U'),
('ulPvZFgoGYk', 'Glude - Breathe'),
('uRvRtTY3ybA', 'SNBRN - Gangsta Walk (feat. Nate Dogg) (JayKode Remix)'),
('UvD7nmXysNI', 'P-Holla - Do it For Love'),
('uWweJ2d21RQ', 'Lost Frequencies feat. Janieck Devy - Reality'),
('vAEwLvxHVVk', 'Robin Schulz - Headlights [feat. Ilsey]'),
('vBdnfyfBSKg', 'Black Coast - TRNDSTTR (Lucian Remix)'),
('VEpMj-tqixs', 'Youth - Daughter'),
('vPxf8m93GgY', 'Valesco - Cloud 9'),
('vZv9-TWdBJM', 'Dr. Dre - The Next Episode (San Holo Remix)'),
('w-5PHBFLMLk', 'Diplo & Sleepy Tom - Be Right There'),
('w5IfUiJ8Vvw', 'Young Squage - Transformer (Steerner Remix)'),
('WIXjHt8KmUc', 'Zara Larsson - Never Forget You (Price & Takis Remix)'),
('x9Subae5SSY', 'Aazar - Gyal'),
('xGiBiHocSZM', 'Redfoo - New Thang'),
('xj6fHiF8Osg', 'Maroon 5 - Maps'),
('XmIgg9De9hY', 'Avicii - The Nights'),
('xoUVtthd7gY', 'Bastille - Pompeii (Audien Remix)'),
('xswW7ah3XIY', 'Rich Edwards - Where I''ll Be Waiting (VIP Mix) (feat. Cozi Zuehlsdorff)'),
('sO9cBXRcBvo', 'Kiiara - Gold'),
('DM5tJ7q9rYk', 'Andra & Mara - Sweet Dreams (Pascal Junior Remix)'),
('XUUjliDBAmk', 'Kygo - Firestone ft. Conrad Sewell'),
('xUVz4nRmxn4', 'Galantis - No Money'),
('XYAghEq5Lfw', 'Troye Sivan - YOUTH'),
('y34W7TIUe2A', 'WiDE AWAKE & Xam Volo - Games'),
('Ybo4QvKVHoE', 'Calvin Harris - This Is What You Came For ft. Rihanna'),
('YHcqlLkeduw', 'Devault - Closer'),
('JhymqpDJOXw', 'LVNDSCAPE ft. Mingue - Bigger Than This'),
('YnwsMEabmSo', 'Marshmello - Alone'),
('yV8tm-ZPdpE', 'Deorro, Chris Brown - Five More Hours'),
('YZKN73_0xtI', 'Vanic x K.Flay - Cops'),
('yzTuBuRdAyA', 'The Weeknd - The Hills'),
('Z7CTnA3dTU0', 'G-Eazy & Bebe Rexha - Me, Myself & I (No Sleep Remix)'),
('ZAcDOuPxMyQ', 'Vanic x K.Flay - Can''t Sleep'),
('1nz8aEpkpDw', 'Cruel Youth - Hatefuck'),
('zfvEpnTr0xM', 'Rain Man feat. Oly - Bring Back The Summer (Not Your Dope Remix)'),
('ZiXQG6A4itE', 'Vérité - Gesture (BKAYE Remix)'),
('ZLFI6gM1TOQ', 'ZHU x Skrillex x THEY. - Working For It (Naderi Remix)'),
('3SA09WJyeb0', 'Benny Benassi - Cinema feat. Gary Go (Skrillex Remix)'),
('zp7NtW_hKJI', 'Coldplay - A Sky Full Of Stars'),
('ZWlrw2Tx1Yk', 'All Of Me - John Legend'),
('ZWyktWYW3ZM', 'Kygo - Raging ft. Kodaline'),
('nV_A8CD0Cp8', 'Two Feet - Go Fuck Yourself'),
('_2LbtaStOWM', 'MAX - Lights Down Low (Not Your Dope remix)'),
('_cb0O-pRdF0', 'Autolaser & PLS&TY - Hiding From The Rain'),
('_eyboAohORI', 'KSHMR - Sounds of KSHMR (Vol 2.)'),
('_ovdm2yX4MA', 'Avicii - Levels'),
('_sxfiNmrHT4', 'Bronze Whale - Love To Feel ft. Khai (Laetho Remix)'),
('_u6RZddOgzw', 'KXA - Tempted ft. Zimri'),
('uUXAaJp3iQg', 'Major Lazer - Cold Water feat. Justin Bieber '),
('4aldkngvhH8', 'Don Diablo & Steve Aoki x Lush & Simon - What We Started ft. BullySongs'),
('ODtxmhKio9U', 'Andra & Mara - Sweet Dreams (T-Mass Remix)'),
('bjEwOXIBrhQ', 'PBH & Jack Shizzle - Feel The Music ft Emilie Adams'),
('bEQOu3C8FME', 'JAEGER & Meric - After Dawn'),
('A3U8zo_lsEI', 'PAZ - Diplo Tears'),
('VcUWXvdsfOc', 'Meric - Take Off (feat. Paul Rey)'),
('d8MHUBmd-8Y', 'Manse - Freeze time (Price & Takis Remix)'),
('zUueYq54Foc', 'Valesco - All I Need'),
('s0GHp90kYkw', 'Devault - Nothing New'),
('7xBTm_MxETk', 'Getter - Rip N Dip (Tisoki & Ray Volpe Remix)'),
('6b1IMiMbb-U', 'Wizard - The Club'),
('gW3ptHTvTAw', 'TroyBoi feat. Sam Sure - Wasted Love'),
('WtOu2A6StRY', 'Unlike Pluto - Found You (feat. Michelle Buzz)'),
('KiEr-4cQiOY', 'Luna Shadows - Waves (Hex Cougar Remix)'),
('0gxIZLHBxBQ', 'Futuristik - Little Bit (feat. Sethh)'),
('y2ak_oBeC-I', 'Fat Joe, Remy Ma - All The Way Up ft. French Montana, Infared'),
('0E6KXgWuaHo', 'Desmeon - Undone (feat. Steklo)'),
('2UeMLPCL1Cs', 'Alex Skrindo - Get Up Again (feat. Axol)'),
('Kk2kUK4VD4c', 'TroyBoi feat. NEFERA - Bad Behaviour'),
('hZe5K1DN4ec', 'Flume - Say It feat. Tove Lo'),
('SMs0GnYze34', 'DJ Snake ft. Justin Bieber - Let Me Love You'),
('dc-nyGo0aC8', 'Clean Bandit - Tears ft. Louisa Johnson'),
('rhcc1KQlCS4', 'Andra - Why'),
('2Y6Nne8RvaA', 'Kungs vs Cookin’ on 3 Burners - This Girl'),
('5JxgDJvqGmM', 'Mike Perry - The Ocean ft. Shy Martin'),
('WUcXQ--yGWQ', 'MØ - Final Song'),
('yiNrVLIOOtw', 'Florian Paetzold - Easy'),
('sOUQ3kfxEaQ', 'Pitbull - Sexy Beaches ft. Chloe Angelides'),
('CictPbTWkBU', 'VINAI Feat. Anjulie - Into The Fire'),
('110csW7KUbM', 'Pep & Rash x Lucas & Steve - Enigma'),
('_zK8HGVwcX0', 'R3hab - Sakura'),
('fB63ztKnGvo', 'Disclosure - Omen ft. Sam Smith'),
('6WbZIoCtBmk', 'WiDE AWAKE - Ready'),
('OkAPoah5MTI', 'Tiësto & Mike Williams - I Want You'),
('57Jf8n34kDU', 'Deepend - I’m Intoxicated'),
('5RPx5_8dmQE', 'Sam Feldt X Lucas & Steve feat Wulf - Summer on You (Club Edit) '),
('0LYgk9seuh8', 'Tony Junior & KURA ft. Jimmy Clash - Walk Away'),
('B-0e0HvR74s', 'Cheat Codes & Dante Klein - Let Me Hold You (Turn Me On)'),
('yZnUhW-SCwY', 'EDX - Roadkill (EDX Ibiza Sunrise Remix)'),
('Ey1_nkmS54g', 'Sam Feldt x Lucas & Steve feat. Wulf - Summer On You'),
('EmI6b8xFSX4', 'Cash Cash - How To Love (feat. Sofia Reyes) (Boombox Cartel Remix)'),
('M899kqdR--U', 'San Holo - Still Looking (CESQEAUX Remix)'),
('UxEXW8d_Lp8', 'Lincoln Jesser - Lost With You'),
('MqUCDzom5Xw', 'Jim Yosef - Cant Wait (feat. Anna Yvette)'),
('fugQAnzL1uk', 'Uplink - To Myself (feat. NK)'),
('QP5_n5UmbHc', 'Bob Sinclar - Someone Who Needs Me'),
('iq7npmYlOK8', 'Anne-Marie - Alarm (Marshmello Remix)'),
('xXvJuVcI5mU', 'Melanie Martinez - Pity Party (K Theory Remix)'),
('Mr29X77OA5g', 'CL - LIFTED M/V'),
('IAdUzo4XmLk', 'Michael Calfan - Treasured Soul'),
('KD5fLb-WgBU', 'Sigma - Nobody To Love'),
('b6vSf0cA9qY', 'Klingande - Jubel'),
('8sPj0Ic8KQ8', 'R.I.O. feat. Nicco - Party Shaker'),
('nlcIKh6sBtc', 'Lorde - Royals'),
('dtgoDXEOxTM', 'The Script - Hall of Fame ft. will.i.am'),
('ZRuoUf9PVu0', 'Ferreck Dawn & Joe Stone - Sublime'),
('9h0CT-hHjaY', 'Breathe Carolina & Jay Cosmic feat. Haliene - See The Sky'),
('Gcpys_iX0Qs', 'Zaeden x Nina & Malika - Never Let You Go'),
('BEP3juB0KzE', 'Vicetone ft. Cosmos & Creature - Bright Side'),
('USVg_E7r20g', 'R3hab & Headhunterz - Wont Stop Rocking'),
('dU3r68jWp0w', 'DVBBS - Never Leave'),
('2Y_33mzzLsA', 'Blasterjaxx & DBSTF - Hit Me feat. Go Comet!'),
('NJvfE-5lhwo', 'Tiga - Make Me Fall In Love (Benny Benassi Remix)'),
('kucP6R7JrJs', 'Madison Mars - Milky Way'),
('6VV5wxbX828', 'Jolique ft Daddys Girl - Negin'),
('EVVRuorghFs', 'Bjonr ft. Tom Bailey - Broken'),
('ieCqe93w7hc', 'Tavi Castro - Survive'),
('Zp2fz99lIAs', 'Major Lazer - Cold Water (Neptunica & Matt Defreitas Remix)'),
('AewNd29wRUM', 'Martin Garrix & Tiësto - The Only Way Is Up'),
('py_XYMf6XR8', 'Showtek ft. We Are Loud & Sonny Wilson - Booyah'),
('NaEbWyb9bOA', 'INNA feat. Daddy Yankee - More Than Friends'),
('mFkrlAnDgZM', 'R3hab vs Skytech & Fafaq - Tiger'),
('Cbvqv19Nf0E', 'Tiësto & Don Diablo - Chemicals (feat. Thomas Troelsen)'),
('r6E3J4GPpjc', 'Don Diablo - On My Mind'),
('KlJAiwwGHMg', 'KSHMR & Marnik - Bazaar (Official Sunburn Goa 2015 Anthem) '),
('ux9vr4xfWj4', 'KSHMR - Wildcard (feat. Sidnie Tipton)'),
('LzVGvfBLEq0', 'KSHMR and BASSJACKERS ft SIRAH - Memories'),
('J5lDFroE4zY', 'R3hab & Felix Snow - Care (Ft. Madi)'),
('mOivOlP9GRk', 'Alan Walker vs Coldplay - Hymn For The Weekend [Remix]'),
('Iaa03itxNZ0', 'Bastille - Good Grief (Don Diablo Remix)'),
('6ITx-AvLE0g', 'Lukas Graham - 7 Years (DYTONE Remix)'),
('lkWoCwGult4', 'Tiësto - Summer Nights (Official Video) ft. John Legend'),
('8eCGkOL6WGw', 'A R I Z O N A - I Was Wrong (Robin Schulz Remix)'),
('UZmarShE5GY', 'Dimitri Vegas & Like Mike - Stay A While'),
('F82W3tKtr8c', 'Avicii vs. Conrad Sewell - Taste The Feeling'),
('SSw0yb3tYG4', 'Hambleton - No Love From Me'),
('CFF0mV24WCY', 'Tiësto - Red Lights'),
('RTxuIdxmv4c', 'Armin van Buuren feat. BullySongs - Freefall'),
('63KRkw8f1rM', 'Ed Sheeran - Photograph (Felix Jaehn Remix)'),
('dlF1KxtArCg', 'SOFI TUKKER - Drinkee'),
('RnBT9uUYb1w', 'Martin Garrix & Bebe Rexha - In The Name Of Love'),
('dqVZaN4lnwQ', 'C-BooL - Never Go Away'),
('6N5RhmDQiyQ', '3LAU - Is It Love (ft. Yeah Boy)'),
('2EsdeUWAD34', 'Steve Aoki & Boehm - Back 2 U feat. WALK THE MOON'),
('n7dLt6uy-Fg', 'Janieck - Feel The Love (Sam Feldt Edit)'),
('fEOyePhElr4', 'Dua Lipa - Hotter Than Hell'),
('sAQ_IBEq-3w', 'Carla s Dreams - Sub Pielea Mea (Midi Culture Remix)'),
('gRcjgCL2O18', 'ROBIN SCHULZ feat. NICO SANTOS – MORE THAN A FRIEND'),
('kx5khPvVdTs', 'ROBIN SCHULZ FEAT. AKON – HEATWAVE'),
('cedoBlUvBlI', 'Era Istrefi - Bonbon'),
('LtoGGA7Lo4E', 'Klingande - Losing U (ft. Daylight)'),
('_DQ2mNdyV4s', 'Kyfra & Dastic - Magic'),
('OggDVRkivs8', 'Otto Knows feat. Avicii - Back Where I Belong'),
('GQ0X7_rv38s', 'Julian Perretta - Miracle'),
('RNC1IA1POw0', 'Lost Frequencies ft. Sandro Cavazza - Beautiful Life'),
('wQRV5omnBBU', 'Martin Solveig - Do It Right ft. Tkay Maidza'),
('BqvGEAaqr5E', 'XUITCASECITY, VMK & CRLMASTR - Somebody Say'),
('0gqSRvx1Ioc', 'Michl - Tell Me The Same'),
('huyubjGGngE', 'KING - Promise'),
('QllVOUxorbQ', 'W&W - How Many (Extended Mix)'),
('YXN_lNZZAZA', 'DJ Antoine & Timati feat. Grigory Leps - London'),
('6n7cL1jokAE', 'Sak Noel & Salvi ft. Sean Paul - Trumpets'),
('Bkj3IVIO2Os', 'Stereoact feat. Kerstin Ott - Die Immer Lacht'),
('ze6H75NCUs8', 'Sigala - Give Me Your Love ft. John Newman, Nile Rodgers'),
('rQ7tMWOCQlM', 'Mahmut Orhan - Feel feat. Sena Sener'),
('k8GRwt0Aa-A', 'Alan Walker - Faded (Tiësto Northern Lights Remix)'),
('SyRv0-oPfKE', 'Seeb - Breathe ft. Neev'),
('rtTQYA8fkxM', 'Major Lazer & MOTi - Boom (Feat. Ty Dolla $ign, Wizkid, & Kranium)'),
('VjHMDlAPMUw', 'Lost Frequencies - Are You With Me'),
('YqW7uJs0BJE', 'Patrick Dyco - Summertime'),
('MFXYxusZEhM', 'Julie Bergan - Arigato'),
('IKZSP-mvslk', 'Jane XØ - I Dont Wanna'),
('b-s1CQLo0ds', 'Whethan - Cant Hide (feat. Ashe)'),
('dQLngV189IU', 'EDEN - rock and roll'),
('KHWhF-KnlOk', 'Adam Jensen - Sandcastles'),
('0rflghuHtg8', 'EDEN - drugs'),
('7p1y7HmKVDQ', 'Steve James - In My Head (feat. RKCB)'),
('eH4F1Tdb040', 'Stephen - Crossfire'),
('U9P-BA91giY', 'Danrell - White Noise (feat. Ryder)'),
('HTMCciohs6A', 'Syn Cole - Follow Me (feat. Joshua Radin) (VIP Mix)'),
('uhlkafwFk_I', 'Don Diablo - Drifter ft DYU'),
('t4TwbS45QAM', 'Yves Larock & LVNDSCAPE feat. Jaba - Rise Up 2k16'),
('jtRFd1N43y4', 'LuvBug - Best Is Yet To Come'),
('qGSWjp11mvY', 'DJ Katch feat. Greg Nice, Dj Kool & Deborah Lee - The Horns'),
('G2H1LXZLcPU', 'Armin Van Buuren feat Cimo Fränkel - Strong Ones'),
('e8zB7QKU87c', 'Headhunterz & Skytech - Kundalini'),
('5AOtEnH87Mg', 'Dillon Francis, Kygo - Coming Over ft. James Hersey'),
('FMUf8K-dkIk', 'Galantis - Louder Harder Better'),
('AD5nNXxCGPo', 'Twenty One Pilots - Stressed Out (Dave Winnel Remix)'),
('ZTdlWQ3FChg', 'Spada - You & I feat. Richard Judge'),
('WfGGGdMne_8', 'Attom - Better feat. Justin Stein'),
('Ou2eIHO41F0', 'Wishes - I Want To Be Alone With You'),
('Fn1D3jdkCLs', 'L D R U - Keeping Score feat. Paige IV'),
('ScjT8zvT7d0', 'Hailee Steinfeld, Grey - Starving ft. Zedd'),
('7k_8yzln6jE', 'Boehm - Future Self feat. Melody Noel'),
('wugdBLEOnwo', 'Headhunterz & Conro - Unique feat. Clara Mae'),
('10b7d0PaVo8', 'Mahama vs. Wolf Tide - Spoke The Words'),
('M6KUI1WnSak', 'Tom Swoon, Belle Humble & Dank - Phoenix (We Rise)'),
('71rSc6LXlSo', 'Major Lazer - Be Together (feat. Wild Belle) (Vanic Remix)'),
('xQiLOv_ZQ1A', 'Axwell & Shapov - Belong'),
('0R8Lt4PY7Kc', 'Louis The Child & Icona Pop - Weekend (Lexxmatiq Remix)'),
('mt9Z2iqmVG8', 'Zaza - Decisions'),
('ecP-XLv1Rv0', 'Bassjackers ft. Luciana - Fireflies'),
('ESb-ot2psIA', 'Jane XØ - Hard To Forget'),
('6Yr_gDLcX7Q', 'Jane XØ - Lies'),
('fKCejWupowA', 'Jane XØ - Dreams'),
('DfTUs-s_XkI', 'Skott - Porcelain'),
('xMtSwsbZfaQ', 'Jane XØ x Dannic - Undone'),
('hhHXAMpnUPM', 'Adventure Club - Dreams (feat. ELEA)'),
('gotPuqgYwc0', 'Hitimpulse - Im In Love With The Coco'),
('CKeZYkRb1D8', 'Steve Aoki & Felix Jaehn - Cant Go Home feat. Adam Lambert (Noisecontrollers Remix)'),
('vkwvMehlP0o', 'Klingande - Somewhere New feat. M-22'),
('IpugyTzDBFg', 'XYLØ - Fools Paradise (Remix)'),
('Gh6JkwZ-5QM', 'Armand Van Helden - Wings'),
('zGm4p1bQrWE', 'Burak Yeter - Go'),
('pTaqcGz2O5o', 'ZAYN - LIKE I WOULD'),
('QYWHPqQLzRA', 'Mathieu Koss & Boris Way - Campfire'),
('YGMZT46eNjc', 'One Day Hero ft. Lions Head - One Day Hero (MOGUAI Edit)'),
('tk6HRHhF8ZU', 'Funkerman ft Enlery - We ve Got The Love'),
('p70uzxhM2dA', 'J. Lisk - To California'),
('S-l6a34mwWw', 'The Chainsmokers - Closer ft. Halsey (T-Mass Remix)'),
('wVGP7wEAkxI', 'Cash Cash & Digital Farm Animals - Millionaire ft. Nelly (Jackal Remix)'),
('Mqz98iib7gQ', 'Azad - Enough Of You (WYOMI Remix)'),
('a-YUYQtFKyE', 'Türküm & Kydra - Akimbo'),
('OVL75x6Yas0', 'FTampa - Stay feat. Amanda Wilson'),
('FxyqPI7cggg', 'PANG! - One Big Laugh (Cogent Remix)'),
('aICdfAWVXI4', 'Kygo - Carry Me feat. Julia Michaels'),
('1YRWKGBiwTw', 'Phantom Sage - The Light'),
('7C_yCosO1_w', 'Echos - Say It'),
('zA8RGZXWQHA', 'Prismo - Heathens (twenty one pilots Cover)'),
('SBGFbsVO2YE', 'The Strumbellas - Spirits (Sondr Remix)'),
('Jv-UemrBg9E', 'Jo Cohen & Sex Whales - We Are'),
('artkCpjfdiQ', 'Imany - Dont Be so Shy (Filatov & Karas Remix)'),
('RAs1ex5Wj0s', 'Kygo - Carry Me (Aventry Remix)'),
('arU1ejAOYgA', 'Hardwell & Craig David - No Holding Back'),
('C_ujLGobR6k', 'TRACE - Low'),
('cJpMCqiQGME', 'Bearson - Imposter feat. Mark Johns'),
('n7dZVwrFwJk', 'Bearson - Pink Medicine'),
('9-tFEVKZnkI', 'Coyote Kisses - Illusion'),
('S-GJ7unPLlA', 'Luvian - Dayglo feat. Youth'),
('OoBCWJiKsBo', 'Madison Mars - Future Is Now'),
('Bmc9W9als_w', 'JETFIRE x RIVERO & Nolan van Lith - Tears Of The Sun'),
('_QGTDqqxRtw', 'LVNDSCAPE ft. Bright Sparks - Sunkissed'),
('Eagm9TEOPSU', 'Carta - Shanghai'),
('WlaTBER_tUw', 'HYDDE & MOONZz - Anything You Want'),
('YlB-5zKCQac', 'Khamsin - Once (feat. Layna)'),
('iH4eRWDfcN8', 'Zara Larsson - Uncover (Afterfab Remix)'),
('6iVpQ5m2j5M', 'Marshmello - Alone (Konstantin Remix)'),
('AZpweVsR2QU', 'RYDER - Ruins (BKAYE & Ben Maxwell Remix)'),
('mEOb5OW2BUI', 'Coolwater Set - Dubs Up ft. Problem & Whitney Phillips'),
('OFlFAuB9x30', 'TroyBoi - Voyager'),
('WLtUKtdHitk', 'Pegboard Nerds & NGHTMRE - Superstar (Feat. Krewella) (Alexi. Remix)'),
('dXLor0RIYFM', 'Sub Focus, Steerner - Turn Back Time (Limitless Remix)'),
('Kx1QIlGmhPo', 'Take/Five - Tell Me'),
('j4_epb0Bz5A', 'Fedde Le Grand - Immortal feat. Erene'),
('VKsX4Zwl1JY', 'L D R U - Next To You feat. Savoi'),
('R2qcImwQ11Q', 'James Newman - If Youre Not Going To Love Me (Filatov & Karas Remix)'),
('3AtDnEC4zak', 'Charlie Puth - We Dont Talk Anymore'),
('r2HmqXNPlz0', 'Suicide Squad - sucker for pain'),
('wfN4PVaOU5Q', 'Rihanna - Needed Me'),
('BiQIc7fG9pA', 'gnash - i hate u, i love u (ft. olivia obrien)'),
('fk4BbF7B29w', 'Adele - Send My Love (To Your New Lover)'),
('barmbS0SfQs', 'Beauvois - Little Lights'),
('eGq1BifpN2Y', 'Molly Moore - Dont Believe It'),
('80AlC3LaPqQ', 'Flume - Say It (feat. Tove Lo) (Illenium Remix)'),
('jDLjNUOAr_Y', 'DVBBS - Ur on My Mind'),
('B53jiatsuBs', 'Yoste - Chihiro (Color K Remix)'),
('S2PeAVB4fhg', 'Quintino x Cheat Codes - Cant Fight It'),
('wtO3H7bq71A', 'Jonas Aden - Feel My Soul'),
('r9E1bf0EE78', 'LUCA LUSH - Anything 4 U'),
('YVh1tr37zU0', 'Julian Calor - Liberation'),
('d4p38D3JoQY', 'Steve Void & No Mondays - Chemistry (feat. Clara Mae)'),
('SXiSVQZLje8', 'Ariana Grande - Side To Side ft. Nicki Minaj'),
('_DHOqsHEN98', 'Revoke - Dont Leave the Light On (feat. Tom Cantillon)'),
('i33DB6R8YUY', 'DJ Snake - Let Me Love You (BOXINBOX & LIONSIZE Cover Remix)'),
('TZd4iz-OkGc', 'Sikdope - Stardust'),
('LrcJmywTa7A', 'Headhunterz - Lift Me Up feat. Mike Taylor (Axero Remix)'),
('2PISrZ7srDc', 'Kap Slap - Harbor feat. Jake Etheridge'),
('HGxBmnPXZ0c', 'SNBRN - Sometimes feat. Holly Winter (Bees Knees Remix)'),
('gjR22jTU0_8', 'SNBRN - Sometimes feat. Holly Winter (Win & Woo Remix)'),
('TGVKR29yFxI', 'Black Coast - Sleep Alone feat. Soren Bryce'),
('DqhoVt96FVM', 'Curtis Alto - Afraid'),
('U879CBXLkM0', 'Vintage Culture, Ricci - Wild Kidz'),
('fyyRXwBMJBQ', 'Florian Paetzold - Love Will Never Do'),
('35fBK7kCTgU', 'FRND - Friend'),
('652T4lD-xp4', 'machineheart - Stonecold'),
('tKOv-zl7rqM', 'Matoma & Becky Hill - False Alarm'),
('IB3lcPjvWLA', 'Afrojack, Spree Wilson - The Spark ft. Spree Wilson'),
('ppy-fgbPn2s', 'Hardwell ft. Mitch Crown - Call Me A Spaceman'),
('QE8PxcQnxT8', 'Dimitri Vegas, Moguai & Like Mike feat. Julian Perretta - Body Talk (Mammoth)'),
('f2xGxd9xPYA', 'JJD - Adventure'),
('Bxl7i4jiUy0', 'Tep No - The Best Crew (Sam Hanson Remix)'),
('dKoQvR5K9-s', 'Stylez Major - Dreams'),
('zWU3CotSYpE', 'P!nk - Just Like Fire'),
('uo35R9zQsAI', 'Flo Rida - My House'),
('Ys304bfdo2g', 'Stylez Major- New Day'),
('KRt5WWnVCoA', 'Billie Eilish - Six Feet Under (Hazey Eyes Remix)'),
('Ff8bDe9_i7M', 'Pink Panda feat. Celeste - Tell Me Why'),
('ZMLNL2D2A70', 'TV Noise ft. Jessame - Think'),
('Jlz49Ln4twg', 'Clams Casino - Im God (San Holo Edit)'),
('pqAowUWdgvc', 'Andrew Rayel feat. Jonny Rose - Daylight'),
('w4s6H4ku6ZY', 'Far East Movement - Like A G6 ft. The Cataracs, DEV'),
('EPo5wWmKEaI', 'Pitbull & Ne-Yo  - Give Me Everything'),
('zyXmsVwZqX4', 'Cartoon - Why We Lose (feat. Coleman Trapp)'),
('67qworViFpY', 'Selena Gomez & Zedd - I Want You To Know'),
('aukHA92Czzo', 'Meadowlark - Headlights'),
('4E17h14UtU0', 'GHITA & Mickey Valen - How Low'),
('YQY9BZBrZds', 'R. City - Locked Away ft. Adam Levine'),
('nBtDsQ4fhXY', 'Major Lazer - Cold Water (feat. Justin Bieber & MØ)'),
('8xwk6zptNNU', 'Gigi D agostino - L Amour Toujours (Streex Remake)'),
('ZuOna_Xtu2A', 'Not Your Dope - 5 A.M'),
('yioy_3KusgA', 'Jerome Price - Me Minus You'),
('M2hW6jgomwo', 'twenty one pilots - Heathens (BOXINBOX & LIONSIZE Remix)'),
('JBUtbL5jiQk', 'The Chainsmokers - Closer ft. Halsey (No Riddim Remix)'),
('ABda1XBD6A0', 'Fedde Le Grand - Immortal feat. Erene(Leroy Styles Remix)'),
('BwhdHAbuiz4', 'Zeds Dead & Diplo - Blame (feat. Elliphant)'),
('6UKDTSR2au4', 'Breathe Carolina & Reez ft. Ray Little - Getaway Car'),
('mBHTXQo65p8', 'Mickey Valen - Meet Me (feat. Noé)'),
('IctghRr8ZN8', 'Prismo - Senses (William Black Remix)'),
('uPHKkewD1G0', 'Daya - Sit Still, Look Pretty'),
('1zPBOygFqsI', 'Yves V, Sem Thomasson ft. Ruby Prophet - On Top Of The World '),
('WHMl15X7kkw', 'Lincoln Jesser feat. Quiñ - Between These Lines'),
('24IiZVt8Me4', 'Hazey Eyes - Goodbye'),
('TnSfwONWlk8', 'Alesso - I Wanna Know ft. Nico & Vinz'),
('r3RXHOTMmLw', 'Anne-Marie - Alarm'),
('KDxJlW6cxRk', 'Duke Dumont - Ocean Drive'),
('zQEfHMPEO6w', 'The Chainsmokers - Closer ft. Halsey'),
('G0zMqAR0oSM', 'Nicky Romero - Take Me (ft. Colton Avery)'),
('UKp2CrfmVfw', 'Alessia Cara - Here'),
('1TsVjvEkc4s', 'Selena Gomez - Good For You'),
('m_xlkC2DsSI', 'LVNDSCAPE - Everyday My Life'),
('n_HxC8BOH3Q', 'Streex - Alive'),
('SrC-BQIbWuo', 'Just A Gent - Rolling Dice (feat. Ella Vos & Joey Chavez)'),
('Oy9V_4im0wg', 'Don Diablo - Cutting Shapes'),
('BDyuZ0_mWPI', 'Sam Feldt & Deepend ft. Teemu - Runaways');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id` int(3) NOT NULL,
  `name` varchar(32) COLLATE utf32_bin NOT NULL,
  `songs` mediumtext COLLATE utf32_bin NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `songs`, `type`) VALUES
(0, 'Automática', '["JhymqpDJOXw","A3U8zo_lsEI","S-l6a34mwWw","NaEbWyb9bOA","zWU3CotSYpE","EZt6mZ-Te1U","ppv-0Csa5uo","lbMeZUM0slg","EsGiBwK4Ycc","UrUJyKsLQeU","N7jRV_rgagM","Bkj3IVIO2Os","Cbvqv19Nf0E","AZpweVsR2QU","Bxl7i4jiUy0","-fxMThzEqlg","0rflghuHtg8","gxE4ngu78Ro","dKoQvR5K9-s","6VV5wxbX828","ZMLNL2D2A70","I8mS8Pfgros","VjHMDlAPMUw","BwhdHAbuiz4","Dg8tsMrzcP0","4QrsAXDxR8I","eJSik6ejkr0","DqhoVt96FVM","B-0e0HvR74s","2UeMLPCL1Cs","LHCob76kigA","ZRuoUf9PVu0","mEOb5OW2BUI","Bznxx12Ptl0","n7dZVwrFwJk","KHWhF-KnlOk","xj6fHiF8Osg","MGaEf0CZfbQ","mKzLoZFz8PE","mt9Z2iqmVG8","KD5fLb-WgBU","ePQe5E69INg","svpmv65Ii60","3IIspaicSnY","YQY9BZBrZds","UvD7nmXysNI","BqvGEAaqr5E","uWweJ2d21RQ","Oy9V_4im0wg","d4p38D3JoQY","eH4F1Tdb040","barmbS0SfQs","2Y6Nne8RvaA","HGxBmnPXZ0c","F82W3tKtr8c","14zIhlfeUjE","tyrUaI4KBRk","UKp2CrfmVfw","4WgWGcED0JQ","qGSWjp11mvY","YUYjxf9rHCY","OVL75x6Yas0","1PvBc2TOpE4","jhdhD2RXvd0","_2LbtaStOWM","YZKN73_0xtI","2-MBfn8XjIU","OoBCWJiKsBo","py_XYMf6XR8","CictPbTWkBU","BDyuZ0_mWPI","Ys304bfdo2g","0LYgk9seuh8","6N5RhmDQiyQ","TZd4iz-OkGc","JF8BRvqGCNs","HTMCciohs6A","eMFZn-M8LfE","OJBxNA8cX-E","UZmarShE5GY","OVMuwa-HRCQ","eVKO5NOW3xU","3x2ABSAMVno","xoUVtthd7gY","Ff8bDe9_i7M","nv76KvFV748","D-fOlAaVlsA","nntGTK2Fhb0","WlaTBER_tUw","KWZGAExj-es","jclnm-0ktHM","Ey1_nkmS54g","6D8tPSR6uvQ","QllVOUxorbQ","y2ak_oBeC-I","jFxUhh2HHX4","CKeZYkRb1D8","i33DB6R8YUY","nBtDsQ4fhXY","d5lN0N_t4RU","n4tK7LYFxI0","ze6H75NCUs8","b6vSf0cA9qY","ulPvZFgoGYk","SXiSVQZLje8","FJWRtYPzHy0","QE8PxcQnxT8","xQiLOv_ZQ1A","IkmAu0KeHYw","gotPuqgYwc0","LrUvu1mlWco","HdAkYCyCZv8","UJfT-C6XKI4","-QpfBAWgVnk","USVg_E7r20g","zQEfHMPEO6w","KRt5WWnVCoA","rQeJmYQe-1o","RTxuIdxmv4c","ABda1XBD6A0","U7kP-t6uU5k","EP625xQIGzs","Fw0R0b2r6pE","RmVxsoz8-Oc","r2HmqXNPlz0","ecP-XLv1Rv0","2Y_33mzzLsA","HJb0VYVtaNc","mBHTXQo65p8","b-s1CQLo0ds","Ou2eIHO41F0","5hEh9LiSzow","63KRkw8f1rM","X9OvgrxaPKU","0gqSRvx1Ioc","652T4lD-xp4","LMjIvK6ndSc","artkCpjfdiQ","3O1_3zBUKM8","PfGaX8G0f2E","OkAPoah5MTI","4aldkngvhH8","SyRv0-oPfKE","_sxfiNmrHT4","RnBT9uUYb1w","7xBTm_MxETk","9-tFEVKZnkI","hZe5K1DN4ec","58TBZnvyGwQ","vEKRKZ8W38M","dQLngV189IU","Gqp_8E4zB6g","ppy-fgbPn2s","x9Subae5SSY","TGVKR29yFxI","j_z8IFKGvq4","YXN_lNZZAZA","gAHnVrM6kw8","TnSfwONWlk8","vZv9-TWdBJM","6n7cL1jokAE","5y_KJAg8bHI","0KSOMA3QBU0","W-W6_o13F3U","SYM-RJwSGQ8","5GL9JoH4Sws","FxyqPI7cggg","tgIqecROs5M","MFXYxusZEhM","fk4BbF7B29w","WLtUKtdHitk","VrGScAzGtXs","jDLjNUOAr_Y","toDqvHvTN7c","EPo5wWmKEaI","ESb-ot2psIA","r6E3J4GPpjc","g2rdrNONy7k","LrcJmywTa7A","83m3v5C-mKY","j4_epb0Bz5A","U879CBXLkM0","OFlFAuB9x30","1nz8aEpkpDw","CFF0mV24WCY","KiEr-4cQiOY","vkwvMehlP0o","NJvfE-5lhwo","nlcIKh6sBtc","Z7CTnA3dTU0","aICdfAWVXI4","szj59j0hz_4","BiQIc7fG9pA","C_ujLGobR6k","J9NQFACZYEU","1TsVjvEkc4s","2EsdeUWAD34","Gcpys_iX0Qs","eDJf0p4yQek","MwSkC85TDgY","Fo2A2CwIdss","7n2EFr-o_DA","28GpKacWLWI","u3VFzuUiTGw","YGMZT46eNjc","e8zB7QKU87c","zp7NtW_hKJI","3AtDnEC4zak","huyubjGGngE","Kx1QIlGmhPo","bvC_0foemLY","1ZpACRqaX6s","lWeKIcjOeF0","s8XIgR5OGJc","kucP6R7JrJs","rtTQYA8fkxM","GnQcMBzhr8E","yiNrVLIOOtw","w-5PHBFLMLk","OOsjtzL4WOA","ZuOna_Xtu2A","ip4Q1pbrYDg","oS6wfWu0JvA","ieCqe93w7hc","BEP3juB0KzE","66G-yyeWFjE","RAs1ex5Wj0s","ulhCd_dOLuE","xUVz4nRmxn4","rQ7tMWOCQlM","O56GyG_nvqA","4E17h14UtU0","6ITx-AvLE0g","M899kqdR--U","ZWyktWYW3ZM","M6KUI1WnSak","_QGTDqqxRtw","9h0CT-hHjaY","ZiXQG6A4itE","_cb0O-pRdF0","YlB-5zKCQac","Gk6PD_T50rM","2PISrZ7srDc","V0lw3qylVfY","pqAowUWdgvc","NdTMw5OW14U","n_HxC8BOH3Q","p70uzxhM2dA","31crA53Dgu0","kdemFfbS5H0","GsPq9mzFNGY","XYAghEq5Lfw","QP5_n5UmbHc","IAdUzo4XmLk","450p7goxZqg","f9zvK8tMmiE","WUcXQ--yGWQ","QPAqgakepHo","gW3ptHTvTAw","McEoTIqoRKk","IctghRr8ZN8","sO9cBXRcBvo","vAEwLvxHVVk","w5IfUiJ8Vvw","VKsX4Zwl1JY","c13G_y7g71c","WtOu2A6StRY","M2hW6jgomwo","wugdBLEOnwo","Gh6JkwZ-5QM","IpugyTzDBFg","zUueYq54Foc","7k_8yzln6jE","mqt10gn7e8k","ZWlrw2Tx1Yk","SBGFbsVO2YE","ntLop32pYd0","uhlkafwFk_I","FyASdjZE0R0","9PB30JUOncw","k8GRwt0Aa-A","Zp2fz99lIAs","YnwsMEabmSo","0E6KXgWuaHo","Mqz98iib7gQ","QYWHPqQLzRA","5g6RBd-vxBk","RDIMl4VKBf8","KlJAiwwGHMg","Ib_8bAYLLNo","WIXjHt8KmUc","tLY3D1Ii-Wo","9hmd7of42DM","gA2OtDUFBWI","80AlC3LaPqQ","lkWoCwGult4","0mOqIsnqSqM","6qPZkCn3-Dk","9ZehWVQp-no","Dr1nN__-2Po","fB63ztKnGvo","j5-yKhDd64s","a-YUYQtFKyE","jtRFd1N43y4","fugQAnzL1uk","uo35R9zQsAI","KDxJlW6cxRk","tk6HRHhF8ZU","LtoGGA7Lo4E","arU1ejAOYgA","YlwveK7O5uA","fDrTbLXHKu8","wtO3H7bq71A","aukHA92Czzo","cJpMCqiQGME","V13MbW3oMUw","cuX1IBs6_Fc","FMUf8K-dkIk","sOUQ3kfxEaQ","gjR22jTU0_8","TQ0E2lfl7Ho","zGm4p1bQrWE","dc-nyGo0aC8","oC-GflRB0y4","hhHXAMpnUPM","XUUjliDBAmk","LuclB2rZYMk","ux9vr4xfWj4","R2qcImwQ11Q","J5lDFroE4zY","bP670bzonW8","dlF1KxtArCg","LWvCZyHTTnc","5EY04LvXqV8","zfvEpnTr0xM","wVGP7wEAkxI","hvynkEbRgDc","ilw-qmqZ5zY","4SKeAGV59Kk","wQRV5omnBBU","mOivOlP9GRk","dtgoDXEOxTM","6UKDTSR2au4","d8MHUBmd-8Y","zXDAYlhdkyg","8Er6l7UOnbI","N9hazmsUxrM","8xwk6zptNNU","Q_R8GHkXaYM","yioy_3KusgA","ZAcDOuPxMyQ","bEQOu3C8FME","zyXmsVwZqX4","dXLor0RIYFM","kx5khPvVdTs","Kk2kUK4VD4c","RiJG0OgdTZo","uUXAaJp3iQg","Ybo4QvKVHoE","MDJ0U4FC5KM","mOKqNxN4jWM","4wpN5XAPoTc","DXcTlvECIHU","EmI6b8xFSX4","U9P-BA91giY","S-GJ7unPLlA","Jlz49Ln4twg","mFkrlAnDgZM","KnL2RJZTdA4","C_3d6GntKbk","07_Zv_nvll4","Ey_hgKCCYU4","nV_A8CD0Cp8","1zPBOygFqsI","gCYcHz2k5x0","xGiBiHocSZM","zA8RGZXWQHA","iq7npmYlOK8","B53jiatsuBs","UxEXW8d_Lp8","f2xGxd9xPYA","ZcSr18uyPvc","110csW7KUbM","EVVRuorghFs","_ovdm2yX4MA","J1b22l1kFKY","Bg5Cfxr7IV4","xEs6rWPCW5g","WfGGGdMne_8","XmIgg9De9hY","kQFywYvqhd0","yV8tm-ZPdpE","_daZh_WlHvY","67qworViFpY","JrlfFTS9kGU","cedoBlUvBlI","4GdWX_bFfdM","LNcicU_A55Q","fEOyePhElr4","BiBEheGyG5o","uiyUOrr5Ieo","57Jf8n34kDU","24IiZVt8Me4","5zARzHddnWc","5JxgDJvqGmM","J-gYJBsln-w","SrC-BQIbWuo","8eCGkOL6WGw","SMs0GnYze34","tD4HCZe-tew","3i-VrbTFIWI","WHMl15X7kkw","OggDVRkivs8","SsrVM4yXf5w","_DHOqsHEN98","xswW7ah3XIY","6Yr_gDLcX7Q","yzTuBuRdAyA","LzVGvfBLEq0","MqUCDzom5Xw","G0zMqAR0oSM","YVh1tr37zU0","kHo0pn8C7F0","qDcFryDXQ7U","s0GHp90kYkw","fKCejWupowA","0t2tjNqGyJI","Fn1D3jdkCLs","GQ0X7_rv38s","DMg8LwfXdyc","bNVRzXQUfjM","rLHOGHjU-Uk","2i2khp_npdE","y34W7TIUe2A","r9E1bf0EE78","IKZSP-mvslk","SSw0yb3tYG4","BVHlxD1pgz4","dqVZaN4lnwQ","PMUt0lShZfs","0gxIZLHBxBQ","bjEwOXIBrhQ","VcUWXvdsfOc","MoHnffhBwqs","vPxf8m93GgY","d3DQy4OxFWw","Iaa03itxNZ0","K533gW3boIY","w4s6H4ku6ZY","cqkzoskWfww","eGq1BifpN2Y","5AOtEnH87Mg","3lcSFAItC4E","nAygLkdS2ZY","qo6ygYSxwEY","dU3r68jWp0w","Ce0dhdu20IY","ZTdlWQ3FChg","_DQ2mNdyV4s","SrojgRmqmOE","cHHLHGNpCSA","5RPx5_8dmQE","Jv-UemrBg9E","eUesDQxGLXA","n7dLt6uy-Fg","pVLmZMjxfjw","4XjgXHxH1Dw","oydff0QlXSM","ZLFI6gM1TOQ","hEqAqWbHfPw","YqW7uJs0BJE","LG558yBrNfk","AtKZKl7Bgu0","vBdnfyfBSKg","uPHKkewD1G0","hHUbLv4ThOo","0R8Lt4PY7Kc","m_xlkC2DsSI","xMtSwsbZfaQ","uRvRtTY3ybA","HGes23KRVtM","7vgN39vrk0c","tKOv-zl7rqM","PVzljDmoPVs","3fxq7kqyWO8","ODtxmhKio9U","Bmc9W9als_w","sAQ_IBEq-3w","RNC1IA1POw0","e7QvPgEquUk","YHcqlLkeduw","S2PeAVB4fhg","7C_yCosO1_w","6WbZIoCtBmk","aho6XmpSgk4","qj5zT4t7S6c","pTaqcGz2O5o","1YRWKGBiwTw","Mr29X77OA5g","jPW5A_JyXCY","BqsQKke_hmc","NzppOnbr7P8","gRcjgCL2O18","iH4eRWDfcN8","xXvJuVcI5mU","IB3lcPjvWLA","qP0xBgSgapM","VEpMj-tqixs","6b1IMiMbb-U","JBUtbL5jiQk","fyyRXwBMJBQ","7p1y7HmKVDQ","Eagm9TEOPSU","35fBK7kCTgU","DM5tJ7q9rYk","_u6RZddOgzw","DfTUs-s_XkI","ScjT8zvT7d0","kujYMUlVnvk","r3RXHOTMmLw","Ly7uj0JwgKg","wfN4PVaOU5Q","6iVpQ5m2j5M","rhcc1KQlCS4","t4TwbS45QAM","k1gsZ-OsGpI","AD5nNXxCGPo","AewNd29wRUM","71rSc6LXlSo","lqYQXIt4SpA","_zK8HGVwcX0","jD0asf_uxKA","10b7d0PaVo8","G2H1LXZLcPU","yZnUhW-SCwY","Y43dXgGpJfE","3SA09WJyeb0","8sPj0Ic8KQ8","_eyboAohORI"]', 0),
(2, 'lol', 'heauheauh', 1),
(3, 'lol', '[]', 1);

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `name` varchar(50) COLLATE utf32_bin NOT NULL,
  `value` varchar(200) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`name`, `value`) VALUES
('ads_interval', '2'),
('ads_pls', '["1","4"]'),
('last_five', '["SsrVM4yXf5w","_DHOqsHEN98","xswW7ah3XIY","6Yr_gDLcX7Q","yzTuBuRdAyA"]'),
('pls_0', '417');

-- --------------------------------------------------------

--
-- Table structure for table `suggestions`
--

CREATE TABLE `suggestions` (
  `id` int(6) NOT NULL,
  `user_id` int(6) NOT NULL,
  `value` varchar(100) COLLATE utf32_bin NOT NULL,
  `type` int(1) NOT NULL,
  `data` varchar(10) COLLATE utf32_bin NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `suggestions`
--

INSERT INTO `suggestions` (`id`, `user_id`, `value`, `type`, `data`, `status`) VALUES
(1, 1, 'https://www.youtube.com/watch?v=BowUK14LM0k', 2, '1470164871', 0),
(2, 1, 'YZKN73_0xtI', 1, '1470620335', 0),
(3, 1, 'Ybo4QvKVHoE', 1, '1470754513', 0),
(4, 5, '', 2, '1475115250', 0),
(5, 7, '', 2, '1475121524', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(6) NOT NULL,
  `token` varchar(50) COLLATE utf32_bin NOT NULL,
  `data` varchar(10) COLLATE utf32_bin NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `data`, `active`) VALUES
(1, 'a0bde74b59ec73ed0404816ce94782fa', '1477790191', 1),
(2, '0d89d84bdb1cf96732b375f4226c5cdf', '1475182104', 1),
(3, '2608413cab690cd850ec211791cc3c79', '1471752262', 1),
(4, '4ee559781f7c11ff490939e75039db9f', '1475111420', 1),
(5, 'f004ab04a41b8aea2452970ce1c154bc', '1475115102', 1),
(6, 'fe04ef58806b9fdf2ca0ff4003391bcd', '1475115890', 1),
(7, '606482285c7bdbd1e2d7bcefb0bac513', '1475121049', 1),
(8, '3eb50cf0067eb9c1e2895dc2f8f95b8b', '1475196344', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(6) NOT NULL,
  `name` varchar(32) COLLATE utf32_bin NOT NULL,
  `email` varchar(50) COLLATE utf32_bin NOT NULL,
  `points` int(6) NOT NULL,
  `fb_id` varchar(32) COLLATE utf32_bin NOT NULL,
  `adm` int(1) NOT NULL,
  `msg_new` tinyint(1) NOT NULL,
  `msg` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `ban` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `points`, `fb_id`, `adm`, `msg_new`, `msg`, `ban`) VALUES
(1, 'Fabio', 'fabiolux999@gmail.com', 0, '1000543436732746', 1, 1, 'Bem vindo à RadioConnecticut!', 0),
(2, 'Vitor Augusto', 'vitoraugustomellosilva@hotmail.com', 0, '955309874591427', 1, 1, 'Bem vindo à RadioConnecticut!', 0),
(3, 'Victor', 'victorgammervp@hotmail.com', 0, '1799855900228659', 0, 1, 'Bem vindo à RadioConnecticut!', 0),
(4, 'Andrey', 'andrey_gutierrez@live.com', 0, '1080573385372606', 0, 1, 'Bem vindo à RadioConnecticut!', 0),
(5, 'Samuel', 'xbakusbr@hotmail.com', 0, '1062223427228023', 0, 1, 'Bem vindo à RadioConnecticut!', 0),
(6, 'Jonathan', 'jonathanmouracastro2013@hotmail.com', 0, '629348410577477', 0, 1, 'Bem vindo à RadioConnecticut!', 0),
(7, 'Luis', 'silvina.professora@gmail.com', 0, '2107588306133535', 0, 1, 'Bem vindo à RadioConnecticut!', 0),
(8, 'Vitoria', 'vitoriabrasil75@gmail.com', 0, '1914202975473987', 0, 1, 'Bem vindo à RadioConnecticut!', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `musics`
--
ALTER TABLE `musics`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id_2` (`id`),
  ADD KEY `title_2` (`title`),
  ADD KEY `title_7` (`title`);
ALTER TABLE `musics` ADD FULLTEXT KEY `title` (`title`);
ALTER TABLE `musics` ADD FULLTEXT KEY `title_3` (`title`);
ALTER TABLE `musics` ADD FULLTEXT KEY `id` (`id`);
ALTER TABLE `musics` ADD FULLTEXT KEY `title_4` (`title`);
ALTER TABLE `musics` ADD FULLTEXT KEY `title_6` (`title`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`name`);

--
-- Indexes for table `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
