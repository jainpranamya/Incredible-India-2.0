-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 12, 2018 at 06:02 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `incredible_india`
--

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `user_name` text NOT NULL,
  `place_name` varchar(150) NOT NULL,
  `file_name` text NOT NULL,
  `email_id` varchar(100) NOT NULL,
  `permission` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`user_name`, `place_name`, `file_name`, `email_id`, `permission`) VALUES
('Pranamya', 'Bahu Fort', 'Bahu-Fort-2-JK.jpg', 'pj@gmail.com', 1),
('Pranamya', 'Leh', 'NameValidate.png', 'pjain@out.com', 1),
('Pj', 'Leh', '1.jpg', 'student@admin.com', 1),
('Tejas Parmar', 'Phuktal', 'Phuktal-Gompa-in-Jammu-Kashmir.jpg', 'tejasparmar99@gmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `place_desc`
--

CREATE TABLE `place_desc` (
  `place_id` int(11) NOT NULL,
  `place_name` text NOT NULL,
  `description` text NOT NULL,
  `img_name` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `place_desc`
--

INSERT INTO `place_desc` (`place_id`, `place_name`, `description`, `img_name`) VALUES
(1, 'Parule Bhogwe', 'An authentic farm stay experience, complete with plantation walks and Malvani cuisine. The Konkani settlement of Parule was once Parulya gramam, built around a Surya temple where the rays of the setting sun touched the idol before disappearing over the horizon. Nearby, Bhogwe, lying in the shadow of Tarkarli, has remained unnoticed by travellers.', 'Parule-Bhogwe-Maharashtra.jpg'),
(2, 'Damro', 'Visit the original village of the Adi Padam tribe and witness their age-old customs. The longest hanging bridge in Arunachal Pradesh at Damro sways gently over a silvery slash of the Yamne River as Adi Padam herders head to the forests with their mithun.\n', 'Damro-ArunachalPradesh.jpg'),
(3, 'Nubra Valley', 'Nubra is a tri-armed valley located to the north east of Ladakh valley. Diskit the capital of Nubra is about 150 km north from Leh town, the capital of Ladakh district, India. Local scholars say that its original name was Ldumra (the valley of flowers). The Shyok River meets the Nubra or Siachan River to form a large valley that separates the Ladakh and Karakoram Ranges.', 'Nubra-Valley-JK.jpg'),
(4, 'Skiing in Kufri', 'Kufri is a destination in its own right, this is 16 km from Shimla and has long been famous for its ski slopes and fine views. Known for its ski runs Kufri,  attracts the largest number of tourists who come to Shimla. It has a backdrop of peaks covered with snow and a small zoo. Yak-ride is added attraction. Along the ridge shaded by tall trees runs a road to Chail, yet another tourist spot in solan District.  The Himalayan Nature Park is also at Kufri and the area has a fair amount of options fro family entertainment.', 'Skiing-Kufri-HP.jpg'),
(5, 'Maravanthe', 'Maravanthe is a village and a beach near Kundapura, Karnataka, India. Outlook travel considers it one of Karnataka\'s most beautiful beaches. It is about 55 km (34 mi) from Udupi runs next to the beach and the Suparnika River flows on the other side of the road, creating a spectacular scenery that is considered the only one of its kind in India. \n', 'Maravanthe-Karnataka.jpg'),
(6, 'Valley of flowers\r\n', 'Valley of Flowers National Park is an Indian national park, located in West Himalaya, in the state of Uttarakhand and is known for its meadows of endemic alpine flowers and the variety of flora. This richly diverse area is also home to rare and endangered animals, including the Asiatic black bear, snow leopard, musk deer, brown bear, red fox, and blue sheep. ', 'Valley-of-flowers-Uttarakhand.jpg\r\n'),
(7, 'Jawai', 'India\'s coolest, newest leopard-spotting destination.Equidistant from Udaipur and Jodhpur, and an hour’s drive away from the Jain temple at Ranakpur and the UNESCO World Heritage Site of Kumbhalgarh Fort, is Jawai Leopard Camp.Stay in luxurious tents with a private deck offering an uninterrupted view of the wilderness and the dramatic landscape of granite formations, scrub and sandy riverbeds.', 'Jawai-Rajasthan.jpg'),
(8, 'Champaner', 'Champaner is a historical city in the state of Gujarat, in western India. It is located in Panchmahal district, 47 kilometres from the city of Vadodara.\n', 'Champaner-Gujarat.jpg'),
(9, 'Hogenakkal', 'Hogenakkal Falls is a waterfall in South India on the Kaveri river in the Dharmapuri district of the Indian state of Tamil Nadu.Sometimes referred to as the \"Niagara Falls of India,\" it is known for medicinal baths and hide boat rides, projecting itself as a major tourist attraction.', 'Hogenakkal-TamilNadu.jpg'),
(10, 'Chitrakoot Falls\r\n', 'The Chitrakote Falls is a natural waterfall located to the west of Jagdalpur, in Bastar district in the Indian state of Chhattisgarh on the Indravati River. The height of the falls is about 29 metres (95 ft). It is the widest fall in India, Because of its width and wide spread during the monsoon season, it is often called the Niagara Falls of India.\n', 'Chitrakoot-Falls-Chattisgarh.jpg\r\n'),
(11, 'Bundi', 'Bundi is a city with 104,457 inhabitants (2011) in the Hadoti region of Rajasthan state in northwest India. Situated on the hillside adjacent to the Taragarh Fort and is notable for its lavish traditional murals and frescoes. The Chitrashala (picture gallery) of the palace is open to the general public.', 'Bundi-Rajasthan.jpg'),
(12, 'Radhanagar Beach', 'Radhanagar Beach on the western coast, also known as Number 7 Beach, is one of the most popular beaches on Havelock and was named \"Best Beach in Asia\" by Time in 2004. Other notable beaches include Elephant Beach on the northwest coast and Vijay Nagar Beach (No. 5), Beach No. 3 and Beach No. 1 on the east coast. Kalapathar is another famous beach.', 'Radhanagar-Beach-ANI.jpg'),
(13, 'Scuba diving in Andaman & Nicobar Islands', 'Andaman Bubbles is proud to be amongst the top dive centers in the Andamans and can guarantee that we provide the BEST \'Price to service\' ratio.', 'Scuba-diving-ANI.jpg'),
(14, 'Belum Caves', 'The Belum Caves is the largest and longest cave system open to the public on the Indian subcontinent, known for its speleothems, such as stalactite and stalagmite formations. The Belum Caves have long passages, galleries, spacious caverns with fresh water and siphons.', 'Belum-Caves-Andhra.jpg'),
(15, 'Ethipothala Falls', 'Ethipothala Falls is a 70 feet (21 m) high river cascade, situated in Guntur district, Andhra Pradesh India. Located on the Chandravanka river, which is a tributary of River Krishna joining on its right bank. There is a crocodile breeding centre in the pond formed by the water fall.', 'Ethipothala-Falls-Andhra.jpg'),
(16, 'Tawang Monestry', 'Tawang Monastery, in the Indian state of Arunachal Pradesh, is the largest monastery in India and second largest in the world after the Potala Palace in Lhasa, Tibet.Tawang Monastery is known in Tibetan as Galden Namgey Lhatse, which translates to \"celestial paradise in a clear night.\" It was founded by Merak Lama Lodre Gyatso in 1680-1681 in accordance with the wishes of the 5th Dalai Lama, Ngawang Lobsang Gyatso.', 'Tawang-Monestry-Arunachal.jpg'),
(17, 'White Water Rafting in Subansiri', 'The Subansari \"Gold River\" is the biggest tributary of the Upper Brahmaputra and descends through verdant rainforests in the tribal state of Arunachal Pradesh. It has volume, flow and adrenal flowing rapids set in a scenic breathtaking environment astride the Eastern Himalayas.', 'White-Water-Rafting-Subansiri-Arunachal.jpg'),
(18, 'Maa Kamakhya Temple in Guwahati', 'The Kamakhya Temple, also Kamrup-Kamakhya is a Hindu temple dedicated to the mother goddess Kamakhya. It is one of the oldest of the 51 Shakti Pithas.It is an important pilgrimage destination for general Hindu and especially for Tantric worshipers.', 'Maa-Kamakhya-Temple-Guwahati-Assam.jpg'),
(19, 'Tai Museum', 'In the heart of the town Sivasagar, on the bank of Sivasagar Tank. Collections of various historical articles of Ahom era in Assam. The museum building is a prototype of famous Ranghar.It possesses some of the rare objects of the Ahom Kingdom.', 'Tai-Museum-Assam.jpg'),
(20, 'River Rafting in Brahmaputra River\r\n', 'An exciting, true life expedition journey into India\'s tribal north - east and down one of the world\'s greatest rivers. The Tsang Po, after flowing gently eastwards through Tibet, cuts the Greater Himalaya and the highest unclimbed mountain in the world, Namche Barwa before it enters Arunachal Pradesh, where it is called the Chiang, Siang, and the Dihang as it descends the final 200 kms to the plains of India.', 'River-Rafting-Brahmaputra-Assam.jpg\r\n'),
(21, 'Gautam Buddha Wildlife Sanctuary', 'Gautam Budha Wildlife Sanctuary is a wildlife sanctuary located in Gaya district of Bihar state and Koderma district of Jharkhand state in east-central India.Fauna include tigers, leopards, wolves, sloth bears, chitals, chinkaras, and many species of birds. The sanctuary has a rest house. The refuge is 65 km southeast of Gaya, which has a railway station and airport.', 'Gautam-Buddha-Wildlife-Sanctuary-Bihar.jpg\r\n'),
(22, 'Flying Fox in Kikar\r\n', 'Built over the Shivalik Hills, Flying Fox Kikar takes you over canopies of forested valleys, and over the course of our 5 zip-lines here, you get to skim treetops and take some serene treks through the beautiful jungle.\n', 'Flying-Fox-Kikar-Chandigarh.jpg\r\n'),
(23, 'Sukhna Lake\r\n', 'Sukhna Lake in Chandigarh, India, is a reservoir at the foothills of the Himalayas. Sukhna is a sanctuary for many exotic migratory birds like the Siberian duck, storks and cranes, during the winter months. The lake has been declared as a protected national wetland by the Government of India.\n', 'Sukhna-Lake-Chandigarh.jpg\r\n'),
(24, 'Garden of silence', 'The Garden of Silence is a meditative space at the end of Sukhna Lake, Chandigarh, India. It features a seated Buddha. The garden is financed by the Ministry of Tourism, Government of India, and developed by Chandigarh Administration. This is the latest monument in Chandigarh.\n', 'Garden-of-silence-Chandigarh.jpg\r\n'),
(25, 'Silvassa Lion Safari', 'Lion Safari at Vasona near Silvassa is where some Lions from Gir have been resettled and kept in open zoo like area. Guests take a Bus ride into the area for a safari like experience.', 'Silvassa-Lion-Safari-DNH.jpg\r\n'),
(26, 'Naida Caves\r\n', 'Naida caves, Diu are located outside the city wall of the Diu Fort, which was constructed by the Portuguese. The caves feature a big network of tunnels with square hewn steps, which is yet to be fully explored.\n', 'Naida-Caves-DD.jpg'),
(27, 'Paragliding in Goa\r\n', 'Paragliding a recreational and competitive adventure sport of flying paragliders: lightweight, free-flying, foot-launched glider aircraft with no rigid primary structure.Safety first is the motto of this service providers.', 'Paragliding-Goa.jpg\r\n'),
(28, 'Underwater walk in Goa\r\n', 'Explore the under water marine life with trained and certified staff in India\'s first and only adventurous Underwater Sea Walk facility in Goa. No swimming experience required. Safety guaranteed.', 'Underwater-walk-Goa.jpg\r\n'),
(29, 'Se Cathedral\r\n', 'The Sé Catedral de Santa Catarina, known as Se Cathedral, is the cathedral of the Latin Rite Roman Catholic Archdiocese of Goa and Daman and the seat of the Patriarch of the East Indies. It is located in Old Goa, India.The architecture style of the Se Cathedral is Portuguese-Manueline.', 'Se-Cathedral-Goa.jpg\r\n'),
(30, 'Dudhsagar Falls', 'Dudhsagar Falls (literally Sea of Milk ) is a four-tiered waterfall located on the Mandovi River in the border of the Indian state of Goa. The area is surrounded by a deciduous forests with a rich biodiversity.In monsoon the falls are fed by rains and form a huge force of water.', 'Dudhsagar-Falls-Goa.jpg\r\n'),
(31, 'Patan\r\n', 'Patan, an ancient fortified town, was founded in 745 AD by Vanraj Chavda, the most prominent king of the Chavda Kingdom.There are many tourist attractions including forts, vavs (step wells), talavs (lakes) and places of worship. The main tourist attractions are the Rani ki vav (World Heritage Site) and patola saris.\n', 'Patan-Gujarat.jpg\r\n'),
(32, 'Motorcycle Trip to Rann of Kutch\r\n', 'Enjoy a leisurely trip to the Rann of Kutch and witness the magnificent Dabosa waterfall, archaeological site, white desert, sunset point, wildlife on a motorbike.\n', 'Motorcycle-Trip-to-Rann-of-Kutch-Gujarat.jpg\r\n'),
(33, 'Pinjore Gardens\r\n', 'Pinjore Gardens (also known as Pinjor Gardens or Yadavindra Gardens) is located in Pinjore, Panchkula district in the Indian state of Haryana. It is an example of the Mughal Gardens style, and was built by Patiala Dynasty Rulers.', 'Pinjore-Gardens-Haryana.jpg\r\n'),
(34, 'Sthaneshwar Mahadev Temple\r\n', 'The ancient Sthaneshwar Mahadev Temple, dedicated to Lord Shiva is situated in Thanesar, a holy town in the Kurukshetra district of Haryana. Legend has it that the waters of the tank adjoining the temple are holy. A few drops of water cured the King Ban of leprosy. ', 'Sthaneshwar-Mahadev-Temple-Haryana.jpg\r\n'),
(35, 'Spiti Valley', 'The Spiti Valley is a cold desert mountain valley located high in the Himalaya mountains in the north-eastern part of the Indian state of Himachal Pradesh. The name \"Spiti\" means \"The Middle Land\", i.e. the land between Tibet and India.', 'Spiti-Himachal.jpg\r\n'),
(36, 'HH Dalai Lama Temple\r\n', 'The Dalai Lama Temple Complex is a beautiful and peaceful place located in Upper Dharamshala, just a short walk away from the Mcleod Ganj Bus Stand.\n', 'H-H-Dalai-Lama-Temple-Himachal.png\n'),
(37, 'Hemis\r\n', 'Hemis, is a village in the Leh district of Jammu and Kashmir, India. It is located in the Leh tehsil, 40 km southeast of the Leh town, in Ladakh. Known for breath taking scenery.', 'Hemis-JK.jpg\r\n'),
(38, 'Chadar Trek\r\n', 'The Chadar Trek or the Zanskar Gorge is a winter trail in the Zanskar region of Ladakh, in the Indian state of Jammu and Kashmir. Traditionally the only means of travel in the area during the harsh winter months, the trail has become popular with international adventure tourists.', 'Chadar-Trek-JK.jpg\r\n'),
(39, 'Bahu Fort', 'Sikh Empire by Raja Gulab Singh in the 19th century. The fort is a religious place, and within its precincts has a temple dedicated to the Hindu goddess Kali, the presiding deity of Jammu. The temple is known locally as the \"Bave Kali Mata temple\".\n', 'Bahu-Fort-2-JK.jpg\n'),
(40, 'Jonha Falls\r\n', 'Situated at an edge of the Ranchi plateau, the Jonha Falls is an example of a hanging valley falls. It is an example of a nick point caused by rejuvenation.', 'Jonha-Falls-Jharkhand.jpg\r\n'),
(41, 'Jagannath Temple\r\n', 'Jagannath Temple in Ranchi was built by king of Barkagarh Jagannathpur Thakur Anish Nath Shahdeo, during 1691. The temple has been built on a hill top. To reach the top visitors can climb the stairs or take the vehicle route.', 'Jagannath-Temple-Jharkhand.jpg\r\n'),
(42, 'Microlight Flight in Bangalore\r\n', 'Fondly known as the Garden City, the destination of Bangalore opens up many allures.The activity of microlight flying in Bangalore takes place close to Yelahanka. A charming suburb of Bangalore, it boasts of a rich heritage.\n', 'Microlight-Flight-Bangalore-Karnataka.jpg\r\n'),
(43, 'Nagarhole National Park\r\n', 'Nagarhole National Park (also known as Rajiv Gandhi National Park), is a national park located in Kodagu district and Mysore district in Karnataka.The park has rich forest cover, small streams, hills, valleys and waterfalls. The park has a healthy predator-prey ratio, with many tigers, Indian bison and elephants.', 'Nagarhole-National-Park-Karnataka.jpg'),
(44, 'Camping in Coorg\r\n', 'Witness whirling trails, picturesque tea and coffee plantations, numerous trekking routes and the hilly environs of the Scotland of India; Coorg and enjoy a fun and exciting two day tented camping experience here. Embark on a guided waterfall tour and discover the fascinating cascades situated in one of the private estates in Bettigeri.', 'Camping-in-Coorg-Karnataka.jpg\r\n'),
(45, 'Varkala Beach', 'Varkala Beach or Papanasam beach is a haven for sun-bathing and swimming. It is one of the most popular tourism destination in Kerala. The evening views of the sunset are worth lingering over. ', 'Varkala-Beach-2-Kerala.jpg\n'),
(46, 'Cycling in Munnar\r\n', 'Cycling is a great experience in Munnar. Kanthallore to Marayoor winds down through along the tea estates. Marayoor is a land of sandalwood forests.\n', 'Cycling-in-Munnar-Kerala.jpg\r\n'),
(47, 'Sree Vadakkunnathan Temple\r\n', 'Vadakkunnathan Temple is an ancient Hindu temple dedicated to Shiva at city of Thrissur, of Kerala. This temple is a classic example of the architectural style of Kerala and has monumental towers on all four sides and also a kuttambalam. Mural paintings depicting various episodes from Mahabharata can be seen inside the temple.\n', 'Sree-Vadakkunnathan-Temple-Kerala.jpg\r\n'),
(48, 'Muzhappilangad Beach', 'Kerala\'s only drive-in beach, the Muzhappilangad beach which stretches across four kilometres of sand where one can drive down the entire length.Adventure sports like paragliding, parasailing and microlite flights are possible at the Muzhappilangad Beach in Thalassery.', 'Muzhappilangad-Beach-Kerala.jpg\r\n'),
(49, 'Lonar Lake\r\n', 'Lonar Lake is a saline soda lake located at Lonar in Buldhana district, Maharashtra, India, which was created by a meteor impact during the Pleistocene Epoch and it is the only known hyper velocity impact crater in basaltic rock anywhere on Earth.', 'Lonar-Maharashtra.jpg\r\n'),
(50, 'Bhandardara\r\n', 'Bhandardara is a holiday resort village on the western ghat of India. It is a blend of natural beauty, waterfalls, mountains, tranquility, greenery, invigorating air and pristine ambiance.', 'Bhandardara-2-Maharashtra.jpg\n'),
(51, 'Caving in Meghalaya\r\n', 'Caves enhance the natural beauty of Meghalaya, located in most of the districts of Meghalaya. While exploring the caves, your journey will pass through the dark and murky interiors. Caves provide a sense of exhilaration to your journey. ', 'Caving-Meghalaya.jpg\r\n'),
(52, 'Lunglei\r\n', 'Lunglei is a town, situated in the south-central part of Mizoram. Literally meaning \'bridge of rock\' got its name from a bridge like rock found in the riverine area around Nghasih - a small tributary of the river Tlawng. Blessed with unmatchable natural scenic beauty.', 'Lunglei-Mizoram.jpg\r\n'),
(53, 'Bhedaghat\r\n', 'It\'s most famous sights are the Dhuandhar Falls, Marble Rocks, and the Chaunsath Yogini temple.Another major attraction is \'Bandar Kodini\'.\n', 'Bhedaghat-MP.jpg\r\n'),
(54, 'Bhimbetka\r\n', 'The Bhimbetka rock shelters are an archaeological site of the Paleolithic, exhibiting the earliest traces of human life on the Indian Subcontinent, and thus the beginning of the Indian Stone Age.', 'Bhimbetka-MP.jpg\r\n'),
(55, 'Island Camping in Chilika Lake', 'Camp on a magnificent island in the lake, bask in the sun and feast on the succulent sea food while spending your time spotting the wonderful fauna in this area.', 'Island-Camping-Chilika-Lake-Odisha.jpg'),
(56, 'Chembra Lake', 'Chembra is the highest peak in Wayanad, at 2,100 m (6,890 ft) above sea level. Chembra is located near the town of Meppadi and is 8 km (5 mi) south of Kalpetta. It is part of the Wayanad hill ranges in Western Ghats, adjoining the Nilgiri Hills in Tamil Nadu and Vellarimala in Kozhikode district in Kerala.', 'Chembra-Lake-in-Meppadi.jpg'),
(57, 'Lepakshi', 'Lepakshi is a small village in Mandal in the Anantapur District of Andhra Pradesh, India. It is located 15 km (9.3 mi) east of Hindupur and approximately 120 km (75 mi) north of Bangalore.', 'Lepakshi-in-Andhra-Pradesh2.jpg'),
(58, 'Gurez Valley', 'Gurez is a valley located in the high Himalayas, about 86 kilometres (53 mi) from Bandipore and 123 kilometres (76 mi) from Srinagar in northern Kashmir and southern Gilgit-Baltistan. At about 8,000 feet (2,400 m) above sea level, the valley is surrounded by snow-capped mountains. It has diverse fauna and wildlife including the Himalayan brown bear and the snow leopard.', 'Gurez-Valley-in-Kashmir-2.jpg'),
(59, 'Chopta', 'Chopta is a small region of meadows and evergreen forest area which is a part of kedarnath wildlife sanctuary located in Uttarakhand state, India and a base for trekking to Tungnath, third temple of Panch Kedar, which lies 3.5 kilometres (2.2 mi) away. Located at a distance of 1.5 kilometres (0.93 mi) from Tungnath is Chandrashila, a rising to over 4,000 metres (13,000 ft).', 'Chopta-in-Uttarakhand.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purpose`
--

CREATE TABLE `purpose` (
  `place_id` int(11) NOT NULL,
  `adventure` tinyint(1) NOT NULL DEFAULT '0',
  `holy` tinyint(1) NOT NULL DEFAULT '0',
  `historic` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purpose`
--

INSERT INTO `purpose` (`place_id`, `adventure`, `holy`, `historic`) VALUES
(1, 0, 0, 0),
(2, 1, 0, 0),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 0, 0, 0),
(6, 0, 0, 0),
(7, 0, 0, 0),
(8, 0, 0, 0),
(9, 0, 0, 0),
(10, 0, 0, 0),
(11, 0, 0, 1),
(12, 1, 0, 0),
(13, 1, 0, 0),
(14, 1, 0, 1),
(15, 1, 0, 0),
(16, 0, 1, 0),
(17, 1, 0, 0),
(18, 0, 1, 0),
(19, 0, 0, 1),
(20, 1, 0, 0),
(21, 0, 0, 0),
(22, 1, 0, 0),
(23, 0, 0, 0),
(24, 0, 0, 0),
(25, 0, 0, 0),
(26, 0, 0, 1),
(27, 1, 0, 0),
(28, 1, 0, 0),
(29, 0, 1, 0),
(30, 1, 0, 0),
(31, 0, 0, 1),
(32, 1, 0, 0),
(33, 0, 0, 0),
(34, 0, 1, 0),
(35, 0, 0, 0),
(36, 0, 1, 0),
(37, 0, 0, 0),
(38, 1, 0, 0),
(39, 0, 1, 1),
(40, 0, 0, 0),
(41, 0, 1, 0),
(42, 1, 0, 0),
(43, 0, 0, 0),
(44, 1, 0, 0),
(45, 0, 0, 0),
(46, 1, 0, 0),
(47, 0, 1, 0),
(48, 0, 0, 0),
(49, 0, 0, 0),
(50, 0, 0, 0),
(51, 1, 0, 1),
(52, 0, 0, 0),
(53, 0, 0, 1),
(54, 0, 0, 1),
(55, 1, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `place_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL DEFAULT 'Anonymous',
  `review` text NOT NULL,
  `created_at` text,
  `rating` float NOT NULL,
  `email` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`place_id`, `username`, `review`, `created_at`, `rating`, `email`) VALUES
(1, 'Tejas', 'nice place', '04/11/17, 13:11:03', 4.5, 'parmartejas11@yahoo.com.a'),
(2, 'kamakshi', 'nice place', '04/10/17, 16:06:04', 3.5, 'abcd@abcd.com'),
(2, 'Anand', 'Fantabulous!', '04/23/17, 18:04:03', 5, 'anand@yahoo.com'),
(2, 'Heena', 'Its not my cup of tea! But still good to see it!', '04/23/17, 18:06:26', 3.5, 'heenap643@gmail.com'),
(2, 'Pranamya', 'amazing', '04/10/18, 13:14:30', 4, 'pjain@out.com'),
(2, 'Tej', 'Awesome!', '04/23/17, 18:04:39', 4.5, 'tejasparmar77@gmail.com'),
(2, 'Tejas', 'An adventurous place to visit. Crossing this bridge is thrilling. PS: Not for weak souls. :P', '04/10/17, 01:29:26', 5, 'tejasparmar99@gmail.com'),
(2, 'Yash', 'Yuck!', '04/23/17, 18:05:24', 1, 'yashraj@red.com'),
(3, 'Tejas ', 'Amazing site seeing experience.', '04/09/18, 22:13:17', 4.5, 'tejasparmar99@gmail.com'),
(4, 'Tej', 'Coolazo!', '04/26/17, 18:45:19', 5, 'tej@gmail.com'),
(4, 'Tejas', 'Awesome place for skiing! Must visit for youngsters!', '04/14/17, 23:46:30', 4.5, 'tejasparmar99@gmail.com'),
(14, 'Heena', 'GOOD', '04/11/17, 17:50:08', 4.5, 'heena@gmail.com'),
(14, 'PJ', 'Cool', '04/11/17, 17:53:03', 4, 'pj@gmail.COM'),
(14, 'Praful', 'Awesome', '04/11/17, 17:53:48', 5, 'prafull@yahoo.com'),
(14, 'Sej', 'Nice', '04/11/17, 17:49:44', 4, 'sejpal@gmail.com'),
(14, 'Tej', 'Yolo', '04/11/17, 17:49:18', 3, 'tej@yahoo.com'),
(51, 'PJ', 'Nice.', '04/10/18, 09:37:21', 5, 'pj@yahoo.com'),
(51, 'Tejas Parmar', 'Amazing.', '04/10/18, 09:37:00', 3.5, 'tejasparmar99@gmail.com'),
(56, 'Praful', 'nicee', '04/10/17, 16:54:15', 3.5, 'abcd@abcd.com');

-- --------------------------------------------------------

--
-- Table structure for table `topography`
--

CREATE TABLE `topography` (
  `place_id` int(11) NOT NULL,
  `lakes` tinyint(1) NOT NULL DEFAULT '0',
  `valley` tinyint(1) NOT NULL DEFAULT '0',
  `nature` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topography`
--

INSERT INTO `topography` (`place_id`, `lakes`, `valley`, `nature`) VALUES
(1, 0, 0, 1),
(2, 0, 1, 0),
(3, 0, 1, 0),
(4, 0, 0, 0),
(5, 0, 0, 0),
(6, 0, 1, 0),
(7, 0, 0, 1),
(8, 0, 0, 0),
(9, 1, 0, 0),
(10, 0, 0, 0),
(11, 0, 0, 0),
(12, 1, 0, 0),
(13, 1, 0, 0),
(14, 0, 1, 0),
(15, 0, 0, 0),
(16, 0, 0, 0),
(17, 1, 0, 0),
(18, 0, 0, 0),
(19, 0, 0, 0),
(20, 1, 0, 0),
(21, 0, 0, 1),
(22, 0, 1, 0),
(23, 1, 0, 0),
(24, 0, 0, 1),
(25, 0, 0, 1),
(26, 0, 1, 0),
(27, 0, 0, 0),
(28, 0, 0, 0),
(29, 0, 0, 0),
(30, 0, 0, 0),
(31, 0, 0, 0),
(32, 0, 0, 0),
(33, 0, 0, 1),
(34, 0, 0, 0),
(35, 0, 1, 0),
(36, 0, 0, 0),
(37, 0, 1, 0),
(38, 0, 1, 0),
(39, 0, 0, 0),
(40, 0, 0, 0),
(41, 0, 0, 0),
(42, 0, 0, 0),
(43, 0, 0, 1),
(44, 0, 1, 0),
(45, 1, 0, 0),
(46, 0, 0, 0),
(47, 0, 0, 0),
(48, 1, 0, 0),
(49, 1, 0, 1),
(50, 1, 0, 0),
(51, 0, 1, 0),
(52, 0, 1, 0),
(53, 1, 1, 0),
(54, 0, 0, 0),
(55, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `place_id` int(11) NOT NULL,
  `winter` tinyint(1) NOT NULL DEFAULT '0',
  `summer` tinyint(1) NOT NULL DEFAULT '0',
  `monsoon` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`place_id`, `winter`, `summer`, `monsoon`) VALUES
(1, 0, 0, 1),
(2, 1, 1, 0),
(3, 1, 0, 0),
(4, 1, 0, 0),
(5, 0, 1, 0),
(6, 0, 1, 0),
(7, 1, 0, 0),
(8, 0, 0, 0),
(9, 1, 0, 1),
(10, 0, 0, 1),
(11, 0, 0, 1),
(12, 0, 1, 0),
(13, 0, 1, 0),
(14, 1, 0, 0),
(15, 0, 0, 1),
(16, 0, 0, 0),
(17, 0, 1, 0),
(18, 0, 0, 0),
(19, 0, 0, 0),
(20, 0, 1, 0),
(21, 1, 0, 0),
(22, 1, 0, 0),
(23, 0, 0, 1),
(24, 1, 1, 0),
(25, 1, 0, 0),
(26, 1, 0, 0),
(27, 1, 1, 0),
(28, 0, 1, 0),
(29, 0, 0, 0),
(30, 0, 0, 1),
(31, 0, 0, 0),
(32, 1, 0, 0),
(33, 1, 0, 0),
(34, 0, 0, 0),
(35, 1, 0, 0),
(36, 0, 0, 0),
(37, 1, 0, 0),
(38, 1, 0, 0),
(39, 0, 0, 0),
(40, 0, 1, 1),
(41, 0, 0, 0),
(42, 1, 1, 0),
(43, 1, 0, 0),
(44, 0, 1, 0),
(45, 0, 1, 0),
(46, 1, 1, 0),
(47, 0, 0, 0),
(48, 0, 1, 0),
(49, 0, 0, 1),
(50, 1, 0, 1),
(51, 0, 1, 0),
(52, 1, 0, 1),
(53, 1, 0, 1),
(54, 0, 1, 0),
(55, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_name` text NOT NULL,
  `u_email` varchar(50) NOT NULL,
  `u_password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`place_name`,`email_id`);

--
-- Indexes for table `place_desc`
--
ALTER TABLE `place_desc`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `purpose`
--
ALTER TABLE `purpose`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`place_id`,`email`);

--
-- Indexes for table `topography`
--
ALTER TABLE `topography`
  ADD PRIMARY KEY (`place_id`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`place_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `purpose`
--
ALTER TABLE `purpose`
  ADD CONSTRAINT `purpose_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place_desc` (`place_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place_desc` (`place_id`);

--
-- Constraints for table `topography`
--
ALTER TABLE `topography`
  ADD CONSTRAINT `topography_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place_desc` (`place_id`);

--
-- Constraints for table `type`
--
ALTER TABLE `type`
  ADD CONSTRAINT `type_ibfk_1` FOREIGN KEY (`place_id`) REFERENCES `place_desc` (`place_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
