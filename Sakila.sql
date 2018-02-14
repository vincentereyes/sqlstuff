
SELECT city.city_id, city.city, customer.first_name, customer.last_name, customer.email, address.address
FROM city
JOIN address ON city.city_id = address.city_id
JOIN customer ON address.address_id = customer.address_id
WHERE city.city_id = 312

SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre
FROM film
JOIN film_category on film.film_id = film_category.film_id
JOIN category on category.category_id = film_category.category_id
WHERE category.name = "Comedy"

SELECT actor.actor_id, CONCAT(actor.first_name, " ", actor.last_name) as actor_name, film.film_id, film.description, film.release_year
FROM film
JOIN film_actor on film.film_id = film_actor.film_id
JOIN actor on actor.actor_id = film_actor.actor_id
WHERE actor.actor_id = 5

SELECT store.store_id, address.city_id, customer.first_name, customer.last_name, customer.email, address.address
FROM store
JOIN customer ON store.store_id = customer.store_id
JOIN address ON customer.address_id = address.address_id
WHERE (address.city_id = 1 or address.city_id = 42 or address.city_id = 312 or address.city_id = 459) and store.store_id = 1

SELECT film.title, film.description, film.release_year, film.special_features
FROM film
JOIN film_actor on film.film_id = film_actor.film_id
JOIN actor on film_actor.actor_id = actor.actor_id
WHERE actor.actor_id = 15 and rating = "G" and special_features like "%Behind the Scenes%"


SELECT film.film_id, film.title, actor.actor_id,  CONCAT(actor.first_name, " ", actor.last_name) as actor_name
FROM film
JOIN film_actor on film.film_id = film_actor.film_id
JOIN actor on actor.actor_id = film_actor.actor_id
WHERE film.film_id = 369-- 

SELECT film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre, film.rental_rate
FROM film
JOIN film_category on film.film_id = film_category.film_id
JOIN category on category.category_id = film_category.category_id
WHERE film.rental_rate = 2.99 and category.name = "Drama"

SELECT actor.actor_id,  CONCAT(actor.first_name, " ", actor.last_name) as actor_name, film.film_id, film.title, film.description, film.release_year, film.rating, film.special_features, category.name as genre
FROM film
JOIN film_actor on film.film_id = film_actor.film_id
JOIN actor on actor.actor_id = film_actor.actor_id
JOIN film_category on film.film_id = film_category.film_id
JOIN category on category.category_id = film_category.category_id
WHERE (actor.first_name = "SANDRA" and actor.last_name = "KILMER") and category.name = "Action"