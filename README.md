OBJECTIVES
Explain how to use to_json to display data.

Use respond_to to render JSON or HTML from the same action.

INTRODUCTION
We're going to convert the previous lab, where we created our own
ProductSerializer, to use to_json instead. The solution for the
previous lab has been included.

OUTLINE
Replace using ProductSerializer with using to_json to serialize the Product. Only include the product id, name, description, inventory and price in the JSON response.

Remove the old products/:id/data route and action and set products#show to render JSON or HTML depending on the format of the request.

Modify the show.html.erb page code to properly request JSON from the products/id route.

Make sure tests pass! Some will pass at the beginning. The trick is making sure they all still pass at the end!

Note: If you do everything correctly, you won't have to change any
of the code that constructs the show view, only the the route to
request the data.
