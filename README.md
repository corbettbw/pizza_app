# README

* Ruby version: 3.1.4
* Configuration: Development: SQLite3, Production: PostgreSQL (It downloads Postgres as a dependency, but locally uses SQLite3)
* Database creation: set up the database by following the instructions here: https://devcenter.heroku.com/articles/getting-started-with-rails6#create-a-procfile
* Database initialization: `heroku addons:create heroku-postgresql:mini`, then `heroku run rake db:migrate`

# Stories

* It should describe steps required for building and running locally
* It should describe how to run tests locally

## Manage Toppings
### As a pizza store owner I should be able to manage toppings available for my pizza chefs.

* It should allow me to see a list of available toppings

  **Test Steps:**
  1) Navigate to Toppings page by clicking Toppings link
  2) There should be a list of toppings
  3) If the list is empty, create a topping by clicking the `New topping` link
  4) Fill out form and select `Create Topping`
  5) Click `Back to toppings` link
 
  **Expected Results:**
  * User should see toppings listed
 
* It should allow me to add a new topping

  **Test Steps:**
  1) Create a topping by clicking the `New topping` link
  2) Fill out form and select `Create Topping`
  3) Click `Back to toppings` link
  
  **Expected Results:**
  * User should see new topping created
  * User should see green alert at top of page

* It should allow me to delete an existing topping

  **Test Steps:**
  1) Navigate to the `Show this topping` link for the topping you want to delete
  2) Click `Destroy This Topping`
 
  **Expected Results:**
  * User should be redirected to main toppings page
  * User should see a green alert saying topping was deleted
  * User should not see the deleted topping in list
 
* It should allow me to update an existing topping

  **Test Steps:**
  1) Navigate to `Show This Topping` page
  2) Click `Edit this topping` link
  3) Make changes to topping
  4) Click `Update Topping`
 
  **Expected Results:**
  * User should see green alert 
  * User should see changes made to topping
 
* It should not allow me to enter duplicate toppings

  **Test Steps:**
  1) Do test steps for making a new topping
  2) Repeat process and name the second topping the same as the previous
  3) Click `Create Topping`
 
  **Expected Results:**
  * User should see a red alert at top of screen saying `1 error...` and preventing creation of duplicate topping

## Manage Pizzas
### As a pizza chef I should be able to create new pizza masterpieces

* It should allow me to see a list of existing pizzas and their toppings

  **Test Steps:**
  
  1) Go to Pizzas page
  2) If there aren't any pizzas, create one (Follow `Create A New Pizza` test steps
  3) Click the `Back to pizzas` link
 
  **Expected Results:**
  * User should see list of pizzas
 
* It should allow me to create a new pizza and add toppings to it

  **Test Steps:**
  
  1) Follow instructions to create a new topping
  2) Navigate to Pizza page
  3) Click the `New Pizza` link
  4) Fill out form and select `Create Pizza`, including toppings
  5) Click `Back to pizzas` link
 
  **Expected Results:**
  * User should see green alert
  * User should see pizza listed
 
* It should allow me to delete an existing pizza

  **Test Steps:**
  
  1) After creating a pizza, on pizza page, select `Show pizza`
  2) Select `Destroy this pizza` button
 
  **Expected Results:**
  * User should be redirected to main pizza page without the destroyed pizza
  * User should see green alert
 
* It should allow me to update an existing pizza

  **Test Steps:**
  
  1) On pizza page, select `Show this pizza` link for any pizza
  2) Select  `Edit this pizza` link
  3) Make changes to pizza
  4) Select `Update pizza` button
 
  **Expected Results:**
  * User should see pizza with updates made
  * User should see green alert
 
* It should allow me to update toppings on an existing pizza

  **Test Steps:**
  
  1) Follow instructions to update a pizza
  2) Select or deselect toppings listed on the pizza form
  3) Click the `Update Pizza` button
 
  **Expected Results:**
  * User should see updated toppings on pizza
  * User should see green alert
 
* It should not allow me to enter duplicate pizzas

  **Test Steps:**
  
  1) Follow instructions to create a new pizza, twice
  2) On the second pizza, name it the same as the first
  3) Select `Create Pizza` button
 
  **Expected Results:**
  * User should see red alert
 
