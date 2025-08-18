-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2024 at 05:41 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `title`, `description`) VALUES
(1, 'Science & Technology', 'All about science discoveries, innovations, and latest technologies.'),
(2, 'Movies & Music', 'News, reviews, and updates on movies, songs, and the entertainment industry.'),
(3, 'Bikes & Cars', 'Automobiles, bike and car reviews, comparisons, and updates.'),
(4, 'Travel', 'Travel stories, guides, tips, and experiences from around the world.'),
(5, 'Food', 'Recipes, restaurant reviews, food culture, and cooking tips.');


-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `thumbnail` varchar(255) NOT NULL,
  `date_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `category_id` int(11) UNSIGNED DEFAULT NULL,
  `author_id` int(11) UNSIGNED NOT NULL,
  `is_featured` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `posts`
--

-- INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
INSERT INTO `posts` (`id`, `title`, `body`, `thumbnail`, `date_time`, `category_id`, `author_id`, `is_featured`) VALUES
(1, 'The Rise of Artificial Intelligence in Daily Life', 
'Artificial Intelligence (AI) has become one of the most significant technological advancements of the 21st century, and its influence is growing rapidly across every sector of society. Today, AI is not just about futuristic robots; it is present in our daily lives in ways that many of us don’t even realize. Virtual assistants such as Siri, Alexa, and Google Assistant rely on AI to interpret voice commands and provide quick solutions. Streaming services like Netflix and YouTube employ recommendation algorithms powered by machine learning, offering content tailored to individual preferences. Even social media platforms optimize feeds using AI, keeping users engaged for longer periods.

Beyond entertainment and convenience, AI plays a vital role in critical fields such as healthcare and finance. In medicine, AI-driven diagnostic tools are now able to detect diseases earlier and more accurately than ever before, sometimes even outperforming human doctors. For instance, AI models are being used to detect cancer from scans, predict patient recovery rates, and design personalized treatment plans. In the financial world, AI underpins fraud detection systems, risk analysis models, and even algorithmic trading strategies, helping institutions save millions.

The workplace is also transforming due to AI and automation. Repetitive tasks are increasingly being handled by machines, freeing employees to focus on creative and decision-making roles. However, this rapid adoption raises concerns about job displacement, privacy, and ethics. Critics warn of algorithmic bias, where AI systems can unintentionally discriminate if not trained on diverse data sets. Others highlight the risks of overreliance, where human oversight becomes secondary.

Despite challenges, the opportunities AI presents are immense. From self-driving cars to smart cities and climate change solutions, AI is likely to shape the way we live in the coming decades. The key will be finding the right balance—embracing innovation while ensuring responsibility, transparency, and fairness. As AI continues to advance, society must focus not only on what machines can do, but also on how we want them to be used responsibly for the benefit of humanity.', 
'ai.jpg', NOW(), 1, 1, 1),

(2, 'How Streaming Platforms Are Changing the Music Industry', 
'Over the last two decades, the music industry has undergone a transformation more radical than any in its history, largely due to the rise of streaming platforms. Before streaming, music lovers relied on CDs, tapes, or digital downloads, but today millions of songs are accessible instantly through services like Spotify, Apple Music, and YouTube. This shift has democratized music consumption, giving listeners the ability to explore artists and genres they may have never discovered otherwise. For many, curated playlists and algorithmic recommendations have become the primary way of finding new music.

One of the most significant impacts of streaming has been on independent musicians. In the past, breaking into the music industry required a contract with a record label, which controlled distribution and promotion. Streaming platforms, however, allow independent artists to upload music directly and reach global audiences. Viral hits on TikTok and YouTube often propel unknown artists to international fame almost overnight, bypassing the traditional gatekeepers of the industry.

While streaming has made music more accessible, it has also sparked debates over artist compensation. The per-stream payout is notoriously low compared to traditional album sales, leading many to argue that streaming companies profit more than the creators themselves. Some musicians have responded by leveraging other revenue streams such as live concerts, merchandise, and exclusive fan content.

On the positive side, the data generated from streaming platforms has become a valuable tool. Artists can now analyze where their listeners are located, which songs are trending, and even when fans stop listening. This information helps shape marketing strategies, tour planning, and creative choices. Music labels also rely on this data to discover rising talent, making the industry more data-driven than ever before.

Ultimately, streaming has reshaped how music is made, shared, and consumed. While challenges remain in terms of fair pay and ownership rights, the undeniable truth is that streaming has made music a more global, diverse, and personalized experience for fans everywhere.', 
'music.png', NOW(), 2, 1, 0),

(3, 'Electric Bikes: The Future of Urban Transportation', 
'As cities around the world continue to grapple with traffic congestion, rising fuel prices, and environmental concerns, electric bikes—or e-bikes—have emerged as a promising solution. Unlike traditional bicycles, e-bikes are equipped with battery-powered motors that assist with pedaling, making it easier for riders to travel longer distances without excessive effort. This simple yet powerful innovation is changing how people think about commuting and personal transportation in urban areas.

E-bikes combine the health and environmental benefits of cycling with the convenience and speed of motorized travel. For many commuters, they offer a practical alternative to cars, buses, and even motorcycles. E-bikes are especially appealing in large cities where parking is scarce and traffic jams are a daily headache. Studies suggest that widespread adoption of e-bikes could significantly reduce greenhouse gas emissions while also lowering noise pollution levels.

The technology behind e-bikes is advancing rapidly. Modern models boast lightweight designs, longer-lasting lithium-ion batteries, and smart features such as GPS tracking and app integration. Riders can monitor battery health, set power modes, and even receive maintenance alerts through connected devices. Governments are also encouraging adoption by building bike-friendly infrastructure and offering subsidies for electric bike purchases.

Despite their many advantages, e-bikes face challenges. Safety is a concern, especially when riders share crowded streets with larger vehicles. Regulations also vary between regions, with some countries treating e-bikes like bicycles and others requiring licenses or registration. Additionally, the upfront cost of e-bikes can be a barrier for many, though prices are expected to drop as technology improves.

Looking forward, e-bikes are poised to play a critical role in the global shift toward sustainable transportation. Whether used for commuting, leisure, or delivery services, they represent a flexible and eco-friendly alternative to traditional vehicles. With continued investment in infrastructure and innovation, e-bikes could very well be the backbone of urban mobility in the coming decades.', 
'ebike.png', NOW(), 3, 1, 0),

(4, 'Top 5 Destinations for Solo Travelers in 2025', 
'Solo travel is no longer seen as a niche choice—it has become one of the fastest-growing travel trends, offering freedom, flexibility, and opportunities for self-discovery. In 2025, more destinations than ever are catering to solo travelers, with safety, affordability, and unique cultural experiences being key considerations. Among the most recommended destinations are Japan, Portugal, Thailand, Iceland, and Vietnam.

Japan continues to attract solo travelers with its perfect balance of tradition and modernity. Cities like Tokyo and Kyoto are safe, efficient, and filled with cultural wonders, while the countryside offers peaceful escapes. Portugal, on the other hand, has become a hotspot for digital nomads and travelers looking for warm weather, stunning coastlines, and affordable living. Its welcoming culture makes it easy for solo travelers to connect with locals and fellow tourists.

Thailand remains a classic favorite, especially for budget-conscious travelers. With its beautiful beaches, rich food culture, and vibrant nightlife, it offers endless opportunities for adventure. Iceland is a dream for those seeking natural beauty, from glaciers to volcanic landscapes. Despite its small population, Iceland is one of the safest countries in the world, making it ideal for solo exploration. Vietnam, with its history, bustling cities, and breathtaking landscapes, has also become increasingly popular thanks to affordable travel costs and warm hospitality.

Solo travel not only allows individuals to explore the world at their own pace but also fosters personal growth and confidence. With online communities and travel apps, it has never been easier to connect with like-minded people and share experiences. While safety should always remain a top priority, simple precautions and awareness make solo adventures both enjoyable and secure. The year 2025 promises to be an exciting time for those willing to embark on journeys of self-discovery, one destination at a time.', 
'travel.jpg', NOW(), 4, 1, 0),

(5, 'The Growing Popularity of Plant-Based Diets', 
'In recent years, plant-based diets have shifted from being a niche lifestyle choice to a mainstream movement, embraced by millions worldwide. This surge in popularity can be attributed to three key factors: health benefits, environmental concerns, and ethical considerations. More and more studies are showing that diets rich in fruits, vegetables, whole grains, and legumes can lower the risk of chronic illnesses such as heart disease, diabetes, and certain types of cancer. As people become increasingly health-conscious, plant-based eating is seen as a natural path to wellness.

Environmental sustainability has also become a driving force. Traditional livestock farming is one of the largest contributors to greenhouse gas emissions, deforestation, and water usage. Switching to plant-based foods significantly reduces an individual’s carbon footprint. Governments and advocacy groups are now promoting plant-based diets as part of global efforts to combat climate change, making it not just a personal choice but also a social responsibility.

The ethical argument is equally compelling. Many individuals are choosing plant-based diets to reduce reliance on animal products and minimize animal suffering. This has fueled a booming industry of plant-based alternatives. Companies are developing innovative meat and dairy substitutes that closely mimic the taste and texture of traditional products, making it easier for consumers to transition.

Restaurants, fast-food chains, and supermarkets have responded to this demand by expanding their plant-based offerings. Once limited to specialized health stores, plant-based products are now available in mainstream markets across the world. Social media influencers, athletes, and celebrities are also promoting plant-based lifestyles, further accelerating the trend.

While critics argue that plant-based diets can be restrictive or expensive, ongoing innovation is addressing these challenges. Affordable and nutrient-rich options are becoming more accessible, and many recipes showcase how plant-based meals can be both delicious and satisfying. With growing awareness and availability, it is clear that plant-based diets are not just a passing fad—they represent a significant shift in how humanity approaches food. In the years ahead, plant-based eating is likely to play an essential role in shaping a healthier, more sustainable future for the planet.', 
'food.jpg', NOW(), 5, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) UNSIGNED NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `avatar` varchar(255) NOT NULL,
  `is_admin` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `email`, `password`, `avatar`, `is_admin`) VALUES
(1, 'Subhranshu', 'Patra', 'Subha', 'bongspatra@gmail.com', '$2a$12$N/EGA4PYxY4YFRMkHf7Me.W/5eeb/qRtlyl3bxzML1VsWdAb3u5Fe', 'me3.jpg', 1);

-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FK_blog_category` (`category_id`),
  ADD KEY `FK_blog_author` (`author_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `FK_blog_author` FOREIGN KEY (`author_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_blog_category` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

CREATE TABLE `messages` (
  `id` INT(11) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
  `name` VARCHAR(100) NOT NULL,
  `email` VARCHAR(100) NOT NULL,
  `subject` VARCHAR(255) NOT NULL,
  `message` TEXT NOT NULL,
  `created_at` TIMESTAMP DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
