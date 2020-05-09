connection: "snowlooker"
label: "Tacos"

include: "*.view" # include all the views

explore: order_items {
  label: "Orders, Items and Users"
  view_name: order_items
}
