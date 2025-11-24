-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2022 at 09:21 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `handcrafted_shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `c_id` int(11) NOT NULL,
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `quantity` int(11) NOT NULL,
  `u_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pending_orders`
--

CREATE TABLE `pending_orders` (
  `po_id` int(11) NOT NULL,
  `u_id` int(11) NOT NULL,
  `cart_total` varchar(100) NOT NULL,
  `bill_fname` varchar(100) NOT NULL,
  `bill_lname` varchar(100) NOT NULL,
  `bill_add` varchar(100) NOT NULL,
  `bill_city` varchar(100) NOT NULL,
  `bill_email` varchar(100) NOT NULL,
  `bill_phone` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pending_orders`
--

INSERT INTO `pending_orders` (`po_id`, `u_id`, `cart_total`, `bill_fname`, `bill_lname`, `bill_add`, `bill_city`, `bill_email`, `bill_phone`, `status`, `date`) VALUES
(1, 1, '1564', 'YUGESH', 'VERMA', 'D8/23 GREEN VALLEY SMRITI NAGAR BHILAI', 'khi', 'projectworlds32@gmail.com', '+916263056779', '', '2022-09-28 19:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_price` varchar(100) NOT NULL,
  `product_des` varchar(1000) NOT NULL,
  `file_name` varchar(100) NOT NULL,
  `file_path` varchar(100) NOT NULL,
  `file_ext` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `product_name`, `product_category`, `product_price`, `product_des`, `file_name`, `file_path`, `file_ext`) VALUES
(1, 'Vishnu Lakshmi Decorative Brass Conch', 'Decoration', '100', 'Description: Spruce up your interior decor with this elegant decorative conch shell hand-carved in brass.\r\n\r\nDesign: With naturalistic detailing, this brass conch shell shows the pair of Lord Vishnu and Goddess Laxmi, reclining upon the coils of the Sheshnag. The other side of the conch also features intricate patterns hand-carved with the utmost precision.\r\n\r\nCraft: Brass engraving\r\n\r\nMaterial: Brass\r\n\r\n*This product was handcrafted by a nationally awarded master craftsman. Globally recognized, this artisan has skillfully embedded a piece of their story, a touch of passion, into their work to offer you the finest craftsmanship.', 'dsc06146.jpg', 'C:/xampp55/htdocs/handcrafted/uploads/', '.jpg'),
(2, 'Krayr Brass Planter', 'Planter', '80', 'Description: Add some flavours of ancient charm to your living room with our Krayr Brass Planter.\r\n\r\nDesign: Shaped like a traditional bucket in golden finish is our Krayr Brass Planter. It comes with two handles on its sides for better handling.\r\n\r\nMaterial: Brass', 'img_06921.jpg', 'C:/xampp55/htdocs/handcrafted/uploads/', '.jpg'),
(3, 'Finch Miniature Art ( 8in X 6in)', 'Wall', '670', 'Description: Get your art fix for the day with our soothing miniature paintings. These tiny masterpieces are a breath of fresh air to your home.\r\n\r\nDesign :This painting signifies a couple of finches nesting in their new habitat.\r\n\r\nCraft: Miniature Painting\r\n\r\nMaterial: Vintage Postcard with natural colors\r\n\r\n*This product was handcrafted by a nationally awarded master craftsman. Globally recognized, this artisan has skillfully embedded a piece of their story, a touch of passion, into their work to offer you the finest craftsmanship.', 'dsc05106__1_.jpg', 'C:/xampp55/htdocs/handcrafted/uploads/', '.jpg'),
(4, 'Rufus Side Drawer', 'Rufus Side Drawer', '870', 'Description: Revolutionise your storage and spruce up your living space all at the same time with our Side Drawer.\r\n\r\nDesign: The canopy of floral designs embossed on a red base will make this product your next favourite piece of decor.\r\n\r\nCraft: Paper Mache\r\n\r\nMaterial: Newspaper & Glue\r\n\r\n*This product was handcrafted by a nationally awarded master craftsman. Globally recognized, this artisan has skillfully embedded a piece of their story, a touch of passion, into their work to offer you the finest craftsmanship.', 'dsc08559_1.jpg', 'C:/xampp55/htdocs/handcrafted/uploads/', '.jpg'),
(5, 'Benazira Coasters (Set Of 6)', 'Benazira Coasters (Set Of 6)', '675', 'Description: These subtle yet stricking paper mache coasters are perfect for someone who appreciates finer things in life and on their dining table.\r\n\r\nDesign: An intricate pattern of floral gold design handpainted on a black base.\r\n\r\nCraft: Paper Mache\r\n\r\nMaterial: Newspaper & Glue\r\n\r\n*This product was handcrafted by a nationally awarded master craftsman. Globally recognized, this artisan has skillfully embedded a piece of their story, a touch of passion, into their work to offer you the finest craftsmanship.', 'dsc07527.jpg', 'C:/xampp55/htdocs/handcrafted/uploads/', '.jpg'),
(6, 'Atara Coasters (Set Of 6)', 'Atara Coasters (Set Of 6)', '670', 'Description:A gentle reminder of nature, simplicity, and love, these paper mache coasters will bring a piece of Kashmir to your home.\r\n\r\nDesign: These coasters were skilfully handpainted in dab technique unique to our Master Artisan and adorned with miniature flowers and a bird emblem.\r\n\r\nCraft: Paper Mache\r\n\r\nMaterial: Newspaper & Glue\r\n\r\n*This product was handcrafted by a nationally awarded master craftsman. Globally recognized, this artisan has skillfully embedded a piece of their story, a touch of passion, into their work to offer you the finest craftsmanship.', 'dscf4940_7.jpg', 'C:/xampp55/htdocs/handcrafted/uploads/', '.jpg'),
(7, 'Mughal Marble Decorative Plate', 'Mughal Marble Decorative Plate', '564', 'Description: Flowers have symbolized love, warmth, and innocence for centuries. Give this plate as a meaningful gift or keep it for yourself as a unique reminder of the importance of family and friendship.\r\n\r\nDesign: This flower-shaped marble plate is handcrafted and hand-painted in Mughal style.\r\n\r\nCraft: Hand painting\r\n\r\nMaterial: Marble', 'stylized_2.jpg', 'C:/xampp55/htdocs/handcrafted/uploads/', '.jpg'),
(8, 'Varnin Rabari Earrings', 'Varnin Rabari Earrings', '345', 'Description:Popularly known as Moti Bharat Kaam in Gujarat, the traditional beadwork finds an elaborate and colourful representation in the form of these earrings.\r\n\r\nDesign:Inspired by the traditional jewellery exhibited by the Rabari tribe of Gujarat, these earrings are a stunning combination of matte and glossed glass beads.\r\n\r\nMaterial:Glass Beads', 'img_0605.jpg', 'C:/xampp55/htdocs/handcrafted/uploads/', '.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_history`
--

CREATE TABLE `purchase_history` (
  `ph_id` int(11) NOT NULL,
  `oh` int(11) NOT NULL,
  `p_name` varchar(100) NOT NULL,
  `p_price` varchar(100) NOT NULL,
  `p_qty` varchar(100) NOT NULL,
  `u_id` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase_history`
--

INSERT INTO `purchase_history` (`ph_id`, `oh`, `p_name`, `p_price`, `p_qty`, `u_id`, `date`) VALUES
(5, 1, 'Mughal Marble Decorative Plate', '564', '1', 1, '2022-09-28 19:21:29');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(11) NOT NULL,
  `fname` varchar(100) NOT NULL,
  `lname` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `fname`, `lname`, `username`, `email`, `password`, `status`) VALUES
(1, 'Admin', 'Admin', 'admin', 'admin@admin.com', 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `pending_orders`
--
ALTER TABLE `pending_orders`
  ADD PRIMARY KEY (`po_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase_history`
--
ALTER TABLE `purchase_history`
  ADD PRIMARY KEY (`ph_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `purchase_history`
--
ALTER TABLE `purchase_history`
  MODIFY `ph_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
