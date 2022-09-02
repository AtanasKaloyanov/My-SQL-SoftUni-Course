ALTER TABLE `products`
ADD CONSTRAINT `fkey_category_id_categories_id`
FOREIGN KEY (`category_id`)
REFERENCES `categories` (`id`);
