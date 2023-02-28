## TITLE
phase-3-code-challenge-product-review

## AUTHOR : Name Date 
Name: Mark Sangiriaki Date: 26/2/2023

## About
A ruby application modelling an e-commerce domain with User, Product and Review classes with a focus on product reviews.

## Getting Started
-First clone this repository to your local environment 
-Navigate to the root directory in the project folder 
-Run bundle install to install all the dependencies
-On the terminal run 'ruby bin/run' to start a pry session

## Database Structure
### Users Table
| column  | Type     |
| ------- | -------  |
| id      | integer  |
| name    | string   |

### Products Table 
| column  | Type     |
| ------- | -------  |
| id      | integer  |
| name    | string   |

### Reviews Table
| column      | Type    |
| ----------- | ------- |
| id          | integer |
| star_rating | integer |
| comment     | string  |
| user_id     | integer |
| product_id  | integer |

## Commands for the methods defined in each class
### Review 
    Review#user
        Returns the User instance for this Review
    Review#product
        Returns the Product instance for this Review
    Review#print_review
        This should puts in the terminal a string formatted as follows: Review for {insert product name} by {insert user name}: {insert review star_rating}. {insert review comment}

### Product
    Product#reviews
        Returns a collection of all the Reviews for the Product
    Product#users
        Returns a collection of all the Users who reviewed the Product
    Product#leave_review(user, star_rating, comment)
        Takes a User (an instance of the User class), a star_rating (integer), and a comment (string) as arguments, and creates a new Review in the database associated with this Product and the User
    Product#print_all_reviews
        This should puts in the terminal a string representing each review for this product
    Product#average_rating
    Returns a float representing the average star rating for all reviews for this product

### User
    User#reviews
        Returns a collection of all the Reviews that the User has given
    User#products
        Returns a collection of all the Products that the User has reviewed
    User#favorite_product
        Returns the product instance that has the highest star rating from this user
    User#remove_reviews(product)
    Takes a Product (an instance of the Product class) and removes all of this user's reviews for that product
    You will have to delete any rows from the reviews table associated with this user and the product

## MIT License
Copyright (c) 2023 :Mark Sangiriaki