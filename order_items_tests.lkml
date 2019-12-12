include: "01_order_items.view"

test: order_item_id_is_unique {
  explore_source: order_items {
    column: id {}
    column: count {}
    sort: {
      field: count
      desc: yes
    }
    limit:  1
  }
  assert: id_is_unique {
    expression: ${order_items.count} = 1;;
  }
}
