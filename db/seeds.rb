
MenuItem.create!([
  {name: "Chicago Style Hotdog", description: "Chicago-style hot dog (all-beef hot dog in a steamed poppy-seed bun and “dragged through the garden”: chopped onions, neon green relish, tomato wedges, a dill pickle spear, sport peppers, celery salt, mustard, and no ketchup)", price: 3},
  {name: "Deep Dish Pizza", description: "Deep dish that extols the virtues of simplicity: buttery crust, a thick layer of cheese, bright canned tomatoes, and Italian sausage with a hint of wine.", price: 15},
  {name: "Royal Pie", description: "Pleasant House’s British-inspired savory pies filled with beef, chicken, veggies, and more.", price: 8},
  {name: "Jibarito", description: "Meat, cheese, lettuce, tomato, and mayo on a garlicy 'bun' of fried plantains.", price: 7},
  {name: "Tamale Guy Tamales", description: "Well-known around the bars in Chicago's Wicker Park, Bucktown, and Ukrainian Village neighborhoods, these tamales include masa steamed in corn husks and filled with meat or cheese.", price: 6},
  {name: "Pizza Puff", description: "A smaller, folded version of a pizza wrapped in a soft flour tortilla that’s deep fried — similar to a Hot Pocket.", price: 5},
  {name: "Malort", description: "Good ol’ fashioned Malort. Chicago's favorite bitter liqueur is a rite of passage so make sure to experience it at least once in your life.", price: 5},
  {name: "Italian Lemonade", description: "The seasonal frozen drink provides a respite from the heat. Flavors range from chocolate and pina colada to watermelon and pomegranate.", price: 4},
  {name: "Bloody Mary", description: "Garnished with skewers of Chicago-style favorites, like cherry tomatoes, sport peppers, gherkins, and a grilled Vienna Beef hot dog", price: 7},
  {name: "Duck Fat Fries", description: "Hand-cut fries cooked in duck fat, in the style of Hot Doug's.", price: 3},
  {name: "Chicago Mix Popcorn", description: "A blend of caramel and cheese flavored popcorn.", price: 3},
  {name: "Paczki", description: "The popular Polish pastry, deep-fried to perfection.", price: 2},
  {name: "Doughnut Vault Doughnut", description: "Choose from unique flavors like pistachio, wedding cake, and lemon poppy seed.", price: 3},
])

Category.create([
{name: "Main Courses"},
{name: "Drinks"},
{name: "Sides"},
{name: "Dessert"},
  ])
  

MenuItemCategory.create([
{menu_item_id: 1, category_id: 1},
{menu_item_id: 2, category_id: 1},
{menu_item_id: 3, category_id: 1},
{menu_item_id: 4, category_id: 1},
{menu_item_id: 5, category_id: 1},
{menu_item_id: 6, category_id: 1},
{menu_item_id: 7, category_id: 2},
{menu_item_id: 8, category_id: 2},
{menu_item_id: 9, category_id: 2},
{menu_item_id: 10, category_id: 3},
{menu_item_id: 11, category_id: 3},
{menu_item_id: 12, category_id: 4},
{menu_item_id: 13, category_id: 4},
  ])


