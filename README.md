# Chicago Favorites
Menu Management Software that allows users to curate a menu, add items to a shopping cart, create randomized carts between two price points, and view totals with or without tip. 


### What is Used

* [Ruby](https://www.ruby-lang.org/en/) 2.3.1
* App Framework - [Rails](http://rubyonrails.org/) 5.1.2
* Database - [Postgres](https://www.postgresql.org/)
* Backend Testing - [Rspec-Rails](http://rspec.info/documentation/3.6/rspec-rails/)
* [Make](http://www.math.tau.ac.il/~danha/courses/software1/make-intro.html)

### Installation

`make database`

`make server`


### Testing

To run all tests:

`make test`


### Required Stories Completed

* A user should be able to enter, edit, and remove menu items. The menu items have a name, a description, a category (such as appetizer, main course, side, dessert), and a price. 

* A user should be able to view the menu, with items grouped by category, and see the names, descriptions, and prices.

* The menu view should allow users to select items off the menu. On submitting the form, they should be able to see the total price of their potential order. A user should be able to adjust the quantity of items in their order.

### Optional Stories Completed

* When the user sees their total order, they can add an optional tip of 10%, 15%, or 20%, and resubmit the order to see the total with tip.

* The user can enter a minimum and maximum amount of money, click “I feel lucky” and get a random order between the minimum and maximum amounts.
