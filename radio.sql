-- phpMyAdmin SQL Dump
-- version 4.5.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Tempo de geração: 23/08/2016 às 20:32
-- Versão do servidor: 10.1.13-MariaDB
-- Versão do PHP: 5.6.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `radio`
--

-- --------------------------------------------------------

--
-- Estrutura para tabela `ads`
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
-- Fazendo dump de dados para tabela `ads`
--

INSERT INTO `ads` (`id`, `name`, `user_id`, `value`, `type`, `freq`, `times`, `status`) VALUES
(1, 'RCBestFemale', 1, 'RCBestFemale', 1, 5, 9908, 1),
(2, 'RCbestMale', 1, 'RCbestMale', 1, 5, 9908, 1),
(3, 'RCfemale', 1, 'RCfemale', 1, 5, 9908, 1),
(4, 'RCfemale2', 1, 'RCfemale2', 1, 5, 9908, 1),
(5, 'RCfemale2', 1, 'RCfemale2', 1, 5, 9908, 1),
(6, 'RCmale2', 1, 'RCmale2', 1, 5, 9908, 1),
(7, 'vcestaouvindo', 1, 'vcestaouvindo', 1, 5, 9907, 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `config`
--

CREATE TABLE `config` (
  `name` varchar(50) COLLATE utf32_bin NOT NULL,
  `value` varchar(200) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Fazendo dump de dados para tabela `config`
--

INSERT INTO `config` (`name`, `value`) VALUES
('ads_interval', '3');

-- --------------------------------------------------------

--
-- Estrutura para tabela `musics`
--

CREATE TABLE `musics` (
  `id` varchar(20) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(100) CHARACTER SET utf8 NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Fazendo dump de dados para tabela `musics`
--

INSERT INTO `musics` (`id`, `title`) VALUES
('-fxMThzEqlg', 'Quintino - Go Hard'),
('-mSRraXCY9w', 'Lenka - Blue Skies (REVOKE Remix)'),
('-QpfBAWgVnk', 'WY - Filthy (feat. Lox Chatterbox)'),
('07_Zv_nvll4', 'One Direction - What Makes You Beautiful'),
('EZt6mZ-Te1U', 'Alan Walker - Sing Me To Sleep (marshmello Remix)'),
('0KSOMA3QBU0', 'Katy Perry - Dark Horse (Official) ft. Juicy J '),
('0mOqIsnqSqM', 'Firebeatz & Fafaq - Sir Duke (Festival Mix)'),
('0t2tjNqGyJI', 'Twenty One Pilots - Stressed Out (Tomsize Remix)'),
('14zIhlfeUjE', 'Arman Cekin - California Dreaming (feat. Paul Rey)'),
('1612_Y7N9x4', 'Chief Keef - Love Sosa (RL Grime Remix)'),
('1ebW7okoIok', 'Secrets - One Republic'),
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
('4UqfrH74wc0', 'Rachel Platten: Fight Song'),
('4WgWGcED0JQ', 'One Republic - Counting Stars'),
('4wpN5XAPoTc', 'Justin Bieber - What Do You Mean (Angelika Vee Cover) [Justin Caruso Remix]'),
('5EY04LvXqV8', 'Don''t Let Me Down (Dom Da Bomb & Electric Bodega Mixshow Remix)'),
('5g6RBd-vxBk', 'Alan Walker - Faded (Dino Roc Remix)'),
('5GL9JoH4Sws', 'Fifth Harmony - Work from Home ft. Ty Dolla $ign'),
('5hEh9LiSzow', 'Jetta - I''d Love to Change the World (Matstubs Remix)'),
('5y_KJAg8bHI', 'Avicii - Wake Me Up'),
('5zARzHddnWc', 'Neptunica - Poseidon'),
('60ItHLz5WEA', 'Alan Walker - Faded'),
('64aA-Qj5ZcE', 'Sex Whales & Fraxo - Dead To Me (feat. Lox Chatterbox)'),
('66G-yyeWFjE', 'Jinco - Tokyo'),
('6D8tPSR6uvQ', 'Levianth - Your Eyes'),
('6qPZkCn3-Dk', 'Yultron - Love Inside'),
('7nUdHAVSLr4', 'Dillon Francis & DJ Snake - Get Low'),
('7vgN39vrk0c', 'Justin Bieber - Love Yourself (Vanic Remix)'),
('83m3v5C-mKY', 'Arman Cekin - California Dreaming (feat. Paul Rey)'),
('8Er6l7UOnbI', 'Vanic x K.Flay - Make Me Fade'),
('9hmd7of42DM', 'Yall - Hundred Miles ft. Gabriela Richardson'),
('9NwZdxiLvGo', 'Skrillex & Diplo - To Ãœ ft AlunaGeorge'),
('9PB30JUOncw', 'Lukas Graham - 7 Years (T-Mass Remix) [feat. Toby Romeo]'),
('9vMh9f41pqE', 'Dimitri Vegas, Martin Garrix, Like Mike - Tremor'),
('9WbCfHutDSE', 'Ariana Grande - Dangerous Woman'),
('9ZehWVQp-no', 'Firebeatz & Jay Hardway - Home'),
('aho6XmpSgk4', 'Levianth & Denis Elezi - Beside Me'),
('AtKZKl7Bgu0', 'Calvin Harris - I Need Your Love ft. Ellie Goulding'),
('Bg5Cfxr7IV4', 'Duelle - Want It All'),
('BiBEheGyG5o', 'Rationale - Fuel To The Fire (The White Panda Remix)'),
('bM7SZ5SBzyY', 'Alan Walker - Fade'),
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
('dF_-sTUzaoQ', 'Milo Bice - Kljucko'),
('Dg6HQ8RlPGQ', 'Keys N Krates - Dum Dee Dum (JiKay Remix)'),
('DMg8LwfXdyc', 'ROBIN SCHULZ & RICHARD JUDGE SHOW ME LOVE'),
('Dr1nN__-2Po', 'Tiesto & KSHMR feat. Vassy - Secrets'),
('dwVEFYL8IBU', 'Ty Dolla $ign - BlasÃ© ft. Future & Rae Sremmurd (Wheathin Remix)'),
('DzwSA7PZj0w', 'Alan Walker - Faded'),
('E5ONTXHS2mM', 'Desiigner - Panda'),
('e7QvPgEquUk', 'Jackal - Anonymous (feat. Mister Blonde)'),
('eDJf0p4yQek', 'Mike Posner - I Took A Pill In Ibiza'),
('eHz2w1cUjjE', 'Waka Flocka - No Handz (CRNKN Remix)'),
('eJSik6ejkr0', 'Naughty Boy - Runnin (Lose It All) ft. Beyonce, Arrow Benjamin'),
('eMFZn-M8LfE', 'Illenium - It''s All On U (feat. Liam O''Donnell)'),
('EP625xQIGzs', 'Tobu - Hope'),
('ePQe5E69INg', 'Katy Perry - The One That Got Away'),
('eUesDQxGLXA', 'Veorra & The Tech Thieves - Ghost Town'),
('Ewr86bQB8Lc', 'Kid Cudi - Day ''N'' Nite (Andrew Luce Remix)'),
('Ey_hgKCCYU4', 'Jonas Blue - Perfect Strangers ft. JP Cooper'),
('f8kJa6JYK9Q', 'Kygo - Firestone ft. Conrad Sewell'),
('F90Cw4l-8NY', 'Bastille - Pompeii'),
('f9zvK8tMmiE', 'Skrillex & Diplo - Where Are U Now (feat. Justin Bieber) (Marshmello Remix)'),
('fDrTbLXHKu8', 'Skrillex & Diplo - "Mind" feat. Kai'),
('fiQoJQ2aNLI', 'Avicii - For A Better Day'),
('FjNdYp2gXRY', 'Ahrix - Nova'),
('FKzJ6UptxnA', 'David Guetta - Play Hard (feat. Ne-Yo & Akon)'),
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
('GZSsOEqgm0c', 'Major Lazer - Be Together feat. Wild Belle'),
('hEqAqWbHfPw', 'PLS&TY & Autolaser - Hiding From The Rain (Xan Griffin Remix)'),
('hHUbLv4ThOo', 'Pitbull - Timber ft. Ke$ha'),
('HJb0VYVtaNc', 'Calvin Harris - Blame ft. John Newman'),
('hjf_e1cr5oI', 'Vincent - No Mercy'),
('FJWRtYPzHy0', 'Adam Jensen - Sandcastles (ToWonder x Severo Remix)'),
('hvynkEbRgDc', 'Dimitri Vegas & Like Mike, Steve Aoki vs Ummet Ozcan - Melody'),
('i14ErNfMHps', 'Nick Jonas - Close ft. Tove Lo'),
('I8mS8Pfgros', 'twenty one pilots - Heathens (DISTO Remix)'),
('Ib_8bAYLLNo', 'Capital Cities - Safe And Sound'),
('IkmAu0KeHYw', 'Faytal - You Got Me (ft. Courtney Grace)'),
('ilw-qmqZ5zY', 'Lost Frequencies feat. Janieck Devy - Reality (Official Music Video)'),
('ip4Q1pbrYDg', 'Avicii - Broken Arrows'),
('J1b22l1kFKY', 'Sia - Cheap Thrills'),
('J2X5mJ3HDYE', 'DEAF KEV - Invincible'),
('j5-yKhDd64s', 'Eminem - Not Afraid'),
('j6aZXX3qqMI', 'James Meyers - I Don''t Wanna Be Alone'),
('J9NQFACZYEU', 'Calvin Harris - Outside ft. Ellie Goulding'),
('jD0asf_uxKA', 'gnash - i hate u, i love u (ft. olivia o''brien) (Zo Grand Remix)'),
('JF8BRvqGCNs', 'Rihanna - Stay ft. Mikky Ekko'),
('jFxUhh2HHX4', 'Justin Bieber - Company'),
('jhdhD2RXvd0', 'Arman Cekin - Sever The Ties (ft. Esther Sparkes)'),
('jK2aIUmmdP4', 'Different Heaven & EH!DE - My Heart'),
('jkPl0e8DlKc', 'Justin Bieber - What Do You Mean?'),
('jPW5A_JyXCY', 'Robin Schulz - Sugar (feat. Francesco Yates)'),
('JrlfFTS9kGU', 'Lilly Wood & The Prick - Prayer in C (Robin Schulz remix)'),
('j_z8IFKGvq4', 'Jetta - Take It Easy (Matstubs Remix)'),
('k1gsZ-OsGpI', 'Coldplay - Hymn For The Weekend (Seeb remix)'),
('K533gW3boIY', 'G-Eazy X Bebe Rexha - Me, Myself & I '),
('kdemFfbS5H0', '#SELFIE - The Chainsmokers'),
('KHiwagLN9F4', 'Jayceeoh - Elevate (feat. Nevve)'),
('kHo0pn8C7F0', 'Chris Brown ft. Usher & Zayn - Back To Sleep (Remix)'),
('KlL4xXwRF9U', 'Aywy. & EphRem - Adderall'),
('KnL2RJZTdA4', 'Martin Garrix & Jay Hardway - Wizard'),
('kQFywYvqhd0', 'R3hab & Quintino - Freak'),
('KrVC5dm5fFc', 'Nicky Romero - Toulouse'),
('kujYMUlVnvk', 'Marshmello - Alone (Xan Griffin Remix)'),
('KWZGAExj-es', 'Sia - Elastic Heart feat. Shia LaBeouf & Maddie Ziegler'),
('lbMeZUM0slg', 'Marshmello - CoLoUR'),
('LG558yBrNfk', 'Katy Perry - Hot N Cold'),
('LJXxkPsNrVM', 'Snavs & Fabian Mazur - Exhale'),
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
('MmqpB_fIx0M', 'Demi Lovato Cool for the Summer'),
('MoHnffhBwqs', 'David Guetta ft. Zara Larsson - This One''s For You'),
('mOKqNxN4jWM', 'DJ Snake - Middle ft. Bipolar Sunshine'),
('mqt10gn7e8k', 'Justin Bieber - Love Yourself'),
('MwSkC85TDgY', 'Pegboard Nerds - Disconnected'),
('n4tK7LYFxI0', 'Spektrem - Shine'),
('N7jRV_rgagM', 'AREA21 - Spaceships'),
('nAygLkdS2ZY', 'Bassjackers - F*CK (Dimitri Vegas & Like Mike Edit)'),
('NdTMw5OW14U', 'Channels - Flare (feat. Kat Kennedy)'),
('NM2r1ZmoqgM', 'Taylor Swift - Bad Blood'),
('nntGTK2Fhb0', 'Skrillex and Diplo - "Where Are U Now" with Justin Bieber'),
('ntLop32pYd0', 'Diplo - Revolution (SEAN&BOBO REMIX)'),
('NtsjUqxcF98', 'Charlie Puth - Marvin Gaye ft. Meghan Trainor'),
('nv76KvFV748', 'Diplo - Revolution (feat. Faustix & Imanos and Kai)'),
('O56GyG_nvqA', 'Taska Black - Leave Me'),
('oC-GflRB0y4', 'David Guetta & Showtek - Bad ft.Vassy'),
('OJBxNA8cX-E', 'Razihel - Love U'),
('W-W6_o13F3U', 'Cheat Codes x Kris Kross Amsterdam - Sex'),
('OOsjtzL4WOA', 'DVBBS & Jay Hardway - Voodoo '),
('oPVTuCt2NF0', 'VINAI - Legend'),
('OVMuwa-HRCQ', 'Tristam & Braken - Flight'),
('p7nIEJ1vpFM', 'Alan Walker - Spectre'),
('PfGaX8G0f2E', 'Justin Bieber - I''ll Show You'),
('PGv902wVRhY', 'Demi Lovato - Stone Cold'),
('PMUt0lShZfs', 'twenty one pilots - Ride (Jaydon Lewis Remix)'),
('ppv-0Csa5uo', 'Pegboard Nerds - Just Like That ft. Johnny Graves (WOLFE Remix)'),
('PQ4YyqTwqOo', 'Matbow - Catch Up'),
('pVLmZMjxfjw', 'Eiffel 65 - Blue (KNY Factory Remix)'),
('PVzljDmoPVs', 'David Guetta - She Wolf (Falling To Pieces) ft. Sia'),
('q-7w-iRQpTQ', 'Snavs & Fabian Mazur - Murda'),
('qDcFryDXQ7U', 'Major Lazer - Light It Up (feat. Nyla & Fuse ODG) [Remix]'),
('qHm9MG9xw1o', 'OneRepublic - Secrets'),
('qj5zT4t7S6c', 'Sigala - Sweet Lovin'' Feat. Bryn Christopher'),
('QLRWXD96_yU', 'Eva Simons ft. Konshens - Policeman'),
('qo6ygYSxwEY', 'Gioni - Trigger'),
('qP0xBgSgapM', 'Michael Canitrot - Sucker For Your Love (Futuristic Polar Bears Remix)'),
('QPAqgakepHo', 'The Chainsmokers & Tritonal - Until You Were Gone ft. Emily Warren (YULTRON Remix)'),
('Q_R8GHkXaYM', 'Bright Lights - Runaway ft. 3LAU (T-Mass Remix)'),
('RBumgq5yVrA', 'Passenger | Let Her Go'),
('RDIMl4VKBf8', 'Jason Derulo feat. Snoop Dogg - Wiggle (Onderkoffer Remix)'),
('rHqO02q4b18', 'Afrojack - Unstoppable'),
('RiJG0OgdTZo', 'Kaskade ft. Ilsey - Disarm You (Illenium Remix)'),
('rLHOGHjU-Uk', 'ChildsPlay - Chase'),
('RmVxsoz8-Oc', 'Avicii ft. Robbie Williams - The Days'),
('RQPkKHamuPI', 'Meric - Turn Back Time'),
('RsbfyO1atRw', 'Ellie Goulding - On My Mind'),
('s8XIgR5OGJc', 'The Chainsmokers - Don''t Let Me Down (Illenium Remix)'),
('SrojgRmqmOE', 'Playmen - Stand By Me Now (Gioni Remix)'),
('SsrVM4yXf5w', 'Yellow Claw & Flux Pavilion - Catch Me (WY Flip)'),
('svpmv65Ii60', 'Fabian Mazur & Luude - Right Now'),
('SYM-RJwSGQ8', 'Tove Lo - Habits (Stay High) - Hippie Sabotage Remix'),
('szj59j0hz_4', 'Galantis - Runaway (U & I)'),
('tD4HCZe-tew', 'Zara Larsson - Lush Life'),
('TFrMDGfW_Sg', 'Ariana Grande - Dangerous Woman'),
('tgIqecROs5M', 'AWOLNATION - Sail'),
('tLY3D1Ii-Wo', 'Coyote Kisses - Waiting For You (feat. Madison Love)'),
('tmPm5iYOklg', 'Fetty Wap - Trap Queen (Crankdat Remix)'),
('toDqvHvTN7c', 'Adam Lambert - "Ghost Town"'),
('TPZnDVnNZ6E', 'Zedd, Kesha - True Colors (Nolan van Lith Remix)'),
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
('vJI09wnmZdY', 'Martin Garrix - Now That I''ve Found You (feat. John & Michel)'),
('vPxf8m93GgY', 'Valesco - Cloud 9'),
('vZv9-TWdBJM', 'Dr. Dre - The Next Episode (San Holo Remix)'),
('w-5PHBFLMLk', 'Diplo & Sleepy Tom - Be Right There'),
('w5IfUiJ8Vvw', 'Young Squage - Transformer (Steerner Remix)'),
('Wg92RrNhB8s', 'Ariana Grande - One Last Time'),
('WIXjHt8KmUc', 'Zara Larsson - Never Forget You (Price & Takis Remix)'),
('x9Subae5SSY', 'Aazar - Gyal'),
('xGiBiHocSZM', 'Redfoo - New Thang'),
('xj6fHiF8Osg', 'Maroon 5 - Maps'),
('XmIgg9De9hY', 'Avicii - The Nights'),
('xoUVtthd7gY', 'Bastille - Pompeii'),
('xswW7ah3XIY', 'Rich Edwards - Where I''ll Be Waiting (VIP Mix) (feat. Cozi Zuehlsdorff)'),
('xuSxRuk_07Y', 'Martin Garrix - ''Now That I''ve Found You (feat. John & Michel)'),
('XUUjliDBAmk', 'Kygo - Firestone ft. Conrad Sewell'),
('xUVz4nRmxn4', 'Galantis - No Money'),
('XYAghEq5Lfw', 'Troye Sivan - YOUTH'),
('y34W7TIUe2A', 'WiDE AWAKE & Xam Volo - Games'),
('Ybo4QvKVHoE', 'Calvin Harris - This Is What You Came For ft. Rihanna'),
('YHcqlLkeduw', 'Devault - Closer'),
('yjmp8CoZBIo', 'One Direction - History'),
('YnwsMEabmSo', 'Marshmello - Alone'),
('yV8tm-ZPdpE', 'Deorro, Chris Brown - Five More Hours'),
('YZKN73_0xtI', 'Vanic x K.Flay - Cops'),
('yzTuBuRdAyA', 'The Weeknd - The Hills'),
('Z7CTnA3dTU0', 'G-Eazy & Bebe Rexha - Me, Myself & I (No Sleep Remix)'),
('ZAcDOuPxMyQ', 'Vanic x K.Flay - Can''t Sleep'),
('zadjWitPrOs', 'Borgore Ft. G-Eazy - Forbes (Wildfellaz & Asuhruh Remix)'),
('zfvEpnTr0xM', 'Rain Man feat. Oly - Bring Back The Summer (Not Your Dope Remix)'),
('ZiXQG6A4itE', 'Vérité - Gesture (BKAYE Remix)'),
('ZLFI6gM1TOQ', 'ZHU x Skrillex x THEY. - Working For It (Naderi Remix)'),
('zoJAcgmOS4Q', 'Katy Perry - Roar'),
('zp7NtW_hKJI', 'Coldplay - A Sky Full Of Stars'),
('ZWlrw2Tx1Yk', 'All Of Me - John Legend'),
('ZWyktWYW3ZM', 'Kygo - Raging ft. Kodaline'),
('zZg2a9L4yoE', 'R3LL & HVNS â€“ All 2 U ft. Kiff (MERCE VIP)'),
('_2LbtaStOWM', 'MAX - Lights Down Low (Not Your Dope remix)'),
('_cb0O-pRdF0', 'Autolaser & PLS&TY - Hiding From The Rain'),
('_eyboAohORI', 'KSHMR - Sounds of KSHMR (Vol 2.)'),
('_ovdm2yX4MA', 'Avicii - Levels'),
('_sxfiNmrHT4', 'Bronze Whale - Love To Feel ft. Khai (Laetho Remix)'),
('_u6RZddOgzw', 'KXA - Tempted ft. Zimri'),
('uUXAaJp3iQg', 'Major Lazer - Cold Water feat. Justin Bieber '),
('4aldkngvhH8', 'Don Diablo & Steve Aoki x Lush & Simon - What We Started ft. BullySongs'),
('ODtxmhKio9U', 'Andra & Mara - Sweet Dreams (T-Mass Remix)'),
('QeWED8i5NeU', 'Ummet Ozcan - Megatron'),
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
('Ag3qFsqBJZo', 'Mendum - Red Hands (feat. Omri)'),
('0E6KXgWuaHo', 'Desmeon - Undone (feat. Steklo)'),
('2UeMLPCL1Cs', 'Alex Skrindo - Get Up Again (feat. Axol)'),
('Kk2kUK4VD4c', 'TroyBoi feat. NEFERA - Bad Behaviour'),
('FK3TomAJaMQ', 'TroyBoi - Sensei'),
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
('kp9-Xjpo2oc', 'TOP SHELF - Heavy Hitta'),
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
('wQRV5omnBBU', 'Martin Solveig - Do It Right ft. Tkay Maidza');

-- --------------------------------------------------------

--
-- Estrutura para tabela `playlist`
--

CREATE TABLE `playlist` (
  `id` int(3) NOT NULL,
  `name` varchar(32) COLLATE utf32_bin NOT NULL,
  `songs` mediumtext COLLATE utf32_bin NOT NULL,
  `type` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Fazendo dump de dados para tabela `playlist`
--

INSERT INTO `playlist` (`id`, `name`, `songs`, `type`) VALUES
(0, 'Automática', '["kujYMUlVnvk","qj5zT4t7S6c","Bznxx12Ptl0","KlJAiwwGHMg","zp7NtW_hKJI","uiyUOrr5Ieo","_cb0O-pRdF0","1PvBc2TOpE4","NdTMw5OW14U","hvynkEbRgDc","JF8BRvqGCNs","GZSsOEqgm0c","tLY3D1Ii-Wo","-fxMThzEqlg","eMFZn-M8LfE","fB63ztKnGvo","OJBxNA8cX-E","dU3r68jWp0w","USVg_E7r20g","n4tK7LYFxI0","uUXAaJp3iQg","LG558yBrNfk","ZLFI6gM1TOQ","szj59j0hz_4","Ly7uj0JwgKg","6ITx-AvLE0g","bM7SZ5SBzyY","KD5fLb-WgBU","PVzljDmoPVs","tgIqecROs5M","83m3v5C-mKY","xoUVtthd7gY","YnwsMEabmSo","uRvRtTY3ybA","U7kP-t6uU5k","ieCqe93w7hc","31crA53Dgu0","k1gsZ-OsGpI","mqt10gn7e8k","9hmd7of42DM","66G-yyeWFjE","8sPj0Ic8KQ8","GsPq9mzFNGY","yzTuBuRdAyA","PGv902wVRhY","JrlfFTS9kGU","u3VFzuUiTGw","vAEwLvxHVVk","N7jRV_rgagM","5hEh9LiSzow","VrGScAzGtXs","rHqO02q4b18","sOUQ3kfxEaQ","YHcqlLkeduw","FK3TomAJaMQ","MoHnffhBwqs","0E6KXgWuaHo","BVHlxD1pgz4","5RPx5_8dmQE","Bg5Cfxr7IV4","Gk6PD_T50rM","Dr1nN__-2Po","9h0CT-hHjaY","ZiXQG6A4itE","6b1IMiMbb-U","KnL2RJZTdA4","6WbZIoCtBmk","xswW7ah3XIY","YZKN73_0xtI","ilw-qmqZ5zY","Wg92RrNhB8s","gW3ptHTvTAw","iq7npmYlOK8","LMjIvK6ndSc","LrUvu1mlWco","fDrTbLXHKu8","Zp2fz99lIAs","mOivOlP9GRk","EZt6mZ-Te1U","cuX1IBs6_Fc","dc-nyGo0aC8","eHz2w1cUjjE","Z7CTnA3dTU0","OVMuwa-HRCQ","FKzJ6UptxnA","F90Cw4l-8NY","BiBEheGyG5o","8Er6l7UOnbI","r6E3J4GPpjc","xj6fHiF8Osg","nlcIKh6sBtc","pVLmZMjxfjw","BqsQKke_hmc","-mSRraXCY9w","M899kqdR--U","Iaa03itxNZ0","aho6XmpSgk4","oPVTuCt2NF0","0gxIZLHBxBQ","4SKeAGV59Kk","nAygLkdS2ZY","uWweJ2d21RQ","EP625xQIGzs","F82W3tKtr8c","28GpKacWLWI","AtKZKl7Bgu0","NM2r1ZmoqgM","vJI09wnmZdY","w5IfUiJ8Vvw","0LYgk9seuh8","ZAcDOuPxMyQ","yZnUhW-SCwY","J9NQFACZYEU","qP0xBgSgapM","vPxf8m93GgY","rLHOGHjU-Uk","Ey_hgKCCYU4","rhcc1KQlCS4","4GdWX_bFfdM","KHiwagLN9F4","ulPvZFgoGYk","5y_KJAg8bHI","OkAPoah5MTI","5GL9JoH4Sws","cHHLHGNpCSA","4wpN5XAPoTc","_ovdm2yX4MA","5zARzHddnWc","dF_-sTUzaoQ","b6vSf0cA9qY","ODtxmhKio9U","OOsjtzL4WOA","3O1_3zBUKM8","7vgN39vrk0c","zfvEpnTr0xM","gAHnVrM6kw8","d8MHUBmd-8Y","D-fOlAaVlsA","eUesDQxGLXA","_zK8HGVwcX0","UZmarShE5GY","O56GyG_nvqA","nv76KvFV748","xuSxRuk_07Y","FJWRtYPzHy0","ppv-0Csa5uo","UJfT-C6XKI4","9ZehWVQp-no","450p7goxZqg","BEP3juB0KzE","eDJf0p4yQek","110csW7KUbM","QP5_n5UmbHc","Gqp_8E4zB6g","nntGTK2Fhb0","bEQOu3C8FME","vBdnfyfBSKg","FjNdYp2gXRY","tmPm5iYOklg","tD4HCZe-tew","Fw0R0b2r6pE","4QrsAXDxR8I","dwVEFYL8IBU","xXvJuVcI5mU","RDIMl4VKBf8","NaEbWyb9bOA","3lcSFAItC4E","E5ONTXHS2mM","IkmAu0KeHYw","9PB30JUOncw","kucP6R7JrJs","57Jf8n34kDU","WIXjHt8KmUc","hEqAqWbHfPw","tyrUaI4KBRk","DzwSA7PZj0w","0t2tjNqGyJI","14zIhlfeUjE","VcUWXvdsfOc","MqUCDzom5Xw","6VV5wxbX828","MmqpB_fIx0M","Cbvqv19Nf0E","GnQcMBzhr8E","PMUt0lShZfs","C_3d6GntKbk","XUUjliDBAmk","PfGaX8G0f2E","_sxfiNmrHT4","jFxUhh2HHX4","bP670bzonW8","SsrVM4yXf5w","lWeKIcjOeF0","I8mS8Pfgros","Ag3qFsqBJZo","B-0e0HvR74s","6D8tPSR6uvQ","ntLop32pYd0","_u6RZddOgzw","RQPkKHamuPI","RTxuIdxmv4c","RnBT9uUYb1w","dqVZaN4lnwQ","6N5RhmDQiyQ","dlF1KxtArCg","63KRkw8f1rM","KWZGAExj-es","2i2khp_npdE","hHUbLv4ThOo","CictPbTWkBU","ip4Q1pbrYDg","3x2ABSAMVno","2EsdeUWAD34","gRcjgCL2O18","OggDVRkivs8","wQRV5omnBBU","RNC1IA1POw0","GQ0X7_rv38s","_DQ2mNdyV4s","LtoGGA7Lo4E","cedoBlUvBlI","kx5khPvVdTs","sAQ_IBEq-3w","fEOyePhElr4","n7dLt6uy-Fg","jhdhD2RXvd0","AewNd29wRUM","toDqvHvTN7c","s8XIgR5OGJc","_eyboAohORI","jPW5A_JyXCY","zoJAcgmOS4Q","Ewr86bQB8Lc","4UqfrH74wc0","zZg2a9L4yoE","fugQAnzL1uk","kp9-Xjpo2oc","lbMeZUM0slg","qDcFryDXQ7U","RBumgq5yVrA","vZv9-TWdBJM","qHm9MG9xw1o","QPAqgakepHo","Ybo4QvKVHoE","5JxgDJvqGmM","UxEXW8d_Lp8","ZWlrw2Tx1Yk","5g6RBd-vxBk","mOKqNxN4jWM","hjf_e1cr5oI","mFkrlAnDgZM","j5-yKhDd64s","gCYcHz2k5x0","yjmp8CoZBIo","xGiBiHocSZM","9WbCfHutDSE","MDJ0U4FC5KM","SrojgRmqmOE","py_XYMf6XR8","3IIspaicSnY","QeWED8i5NeU","J1b22l1kFKY","TFrMDGfW_Sg","1612_Y7N9x4","Kk2kUK4VD4c","CFF0mV24WCY","jK2aIUmmdP4","2UeMLPCL1Cs","x9Subae5SSY","-QpfBAWgVnk","0KSOMA3QBU0","ePQe5E69INg","WUcXQ--yGWQ","p7nIEJ1vpFM","9vMh9f41pqE","f9zvK8tMmiE","zUueYq54Foc","QLRWXD96_yU","EmI6b8xFSX4","9NwZdxiLvGo","1ZpACRqaX6s","ux9vr4xfWj4","J5lDFroE4zY","bvC_0foemLY","dtgoDXEOxTM","7nUdHAVSLr4","7xBTm_MxETk","McEoTIqoRKk","s0GHp90kYkw","ulhCd_dOLuE","c13G_y7g71c","eJSik6ejkr0","60ItHLz5WEA","j_z8IFKGvq4","LNcicU_A55Q","jkPl0e8DlKc","jD0asf_uxKA","KrVC5dm5fFc","XYAghEq5Lfw","W-W6_o13F3U","q-7w-iRQpTQ","Fo2A2CwIdss","2Y6Nne8RvaA","2Y_33mzzLsA","Ce0dhdu20IY","K533gW3boIY","UvD7nmXysNI","f8kJa6JYK9Q","RiJG0OgdTZo","MwSkC85TDgY","Q_R8GHkXaYM","y34W7TIUe2A","6qPZkCn3-Dk","HJb0VYVtaNc","fiQoJQ2aNLI","LzVGvfBLEq0","qo6ygYSxwEY","5EY04LvXqV8","gxE4ngu78Ro","ZRuoUf9PVu0","SYM-RJwSGQ8","VEpMj-tqixs","w-5PHBFLMLk","Mr29X77OA5g","rQeJmYQe-1o","1ebW7okoIok","PQ4YyqTwqOo","zadjWitPrOs","ZWyktWYW3ZM","NtsjUqxcF98","lqYQXIt4SpA","8eCGkOL6WGw","64aA-Qj5ZcE","lkWoCwGult4","e7QvPgEquUk","SMs0GnYze34","yV8tm-ZPdpE","EVVRuorghFs","svpmv65Ii60","4aldkngvhH8","kdemFfbS5H0","FyASdjZE0R0","oC-GflRB0y4","_2LbtaStOWM","NJvfE-5lhwo","d3DQy4OxFWw","IAdUzo4XmLk","kHo0pn8C7F0","kQFywYvqhd0","RmVxsoz8-Oc","mKzLoZFz8PE","07_Zv_nvll4","XmIgg9De9hY","xUVz4nRmxn4","4WgWGcED0JQ","DMg8LwfXdyc","cqkzoskWfww","3i-VrbTFIWI","J2X5mJ3HDYE","Dg6HQ8RlPGQ","LJXxkPsNrVM","A3U8zo_lsEI","KlL4xXwRF9U","d5lN0N_t4RU","Ey1_nkmS54g","0mOqIsnqSqM","g2rdrNONy7k","Gcpys_iX0Qs","KiEr-4cQiOY","j6aZXX3qqMI","i14ErNfMHps","TPZnDVnNZ6E","RsbfyO1atRw","SSw0yb3tYG4","yiNrVLIOOtw","Ib_8bAYLLNo","WtOu2A6StRY"]', 0),
(2, 'lol', 'heauheauh', 1),
(3, 'lol', '[]', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `status`
--

CREATE TABLE `status` (
  `name` varchar(50) COLLATE utf32_bin NOT NULL,
  `value` varchar(200) COLLATE utf32_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Fazendo dump de dados para tabela `status`
--

INSERT INTO `status` (`name`, `value`) VALUES
('ads_interval', '2'),
('ads_pls', '["3","5","2","4","3","2","6","1","5","7","6","4","1"]'),
('last_five', '["2EsdeUWAD34","gRcjgCL2O18","OggDVRkivs8","wQRV5omnBBU","RNC1IA1POw0"]'),
('pls_0', '216');

-- --------------------------------------------------------

--
-- Estrutura para tabela `suggestions`
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
-- Fazendo dump de dados para tabela `suggestions`
--

INSERT INTO `suggestions` (`id`, `user_id`, `value`, `type`, `data`, `status`) VALUES
(1, 1, 'https://www.youtube.com/watch?v=BowUK14LM0k', 2, '1470164871', 0),
(2, 1, 'YZKN73_0xtI', 1, '1470620335', 0),
(3, 1, 'Ybo4QvKVHoE', 1, '1470754513', 0);

-- --------------------------------------------------------

--
-- Estrutura para tabela `tokens`
--

CREATE TABLE `tokens` (
  `user_id` int(6) NOT NULL,
  `token` varchar(50) COLLATE utf32_bin NOT NULL,
  `data` varchar(10) COLLATE utf32_bin NOT NULL,
  `active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf32 COLLATE=utf32_bin;

--
-- Fazendo dump de dados para tabela `tokens`
--

INSERT INTO `tokens` (`user_id`, `token`, `data`, `active`) VALUES
(1, '2f96e27edb3ee2a19f0f504e2b2b4ce2', '1471973284', 1),
(2, '8e039b8d52523f5c90c488c1a80e6fe1', '1471752243', 1),
(3, '2608413cab690cd850ec211791cc3c79', '1471752262', 1);

-- --------------------------------------------------------

--
-- Estrutura para tabela `users`
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
-- Fazendo dump de dados para tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `points`, `fb_id`, `adm`, `msg_new`, `msg`, `ban`) VALUES
(1, 'Fabio', 'fabiolux999@gmail.com', 0, '1000543436732746', 1, 1, 'Bem vindo à RadioConnecticut!', 0),
--Outros usuários foram ocultos por motivos de segurança

--
-- Índices de tabelas apagadas
--

--
-- Índices de tabela `ads`
--
ALTER TABLE `ads`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`name`);

--
-- Índices de tabela `musics`
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
-- Índices de tabela `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`name`);

--
-- Índices de tabela `suggestions`
--
ALTER TABLE `suggestions`
  ADD PRIMARY KEY (`id`);

--
-- Índices de tabela `tokens`
--
ALTER TABLE `tokens`
  ADD PRIMARY KEY (`user_id`);

--
-- Índices de tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
