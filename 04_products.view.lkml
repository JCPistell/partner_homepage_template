view: products {
  sql_table_name: products ;;

  dimension: id {
    primary_key: yes
    type: number
    sql: ${TABLE}.id ;;
  }

  dimension: category {
    sql: TRIM(${TABLE}.category) ;;

    link: {
      label: "Google"
      url: "http://www.google.com/search?q={{value}}"
      icon_url: "http://google.com/favicon.ico"
    }

    link: {
      label: "Wikipedia"
      url: "http://www.google.com/search?q=site:wikipedia.com+{{value}}&btnI"
      icon_url: "https://en.wikipedia.org/static/favicon/wikipedia.ico"
    }

    link: {
      label: "Twitter"
      url: "http://www.google.com/search?q=site:twitter.com+{{value}}&btnI"
      icon_url: "https://abs.twimg.com/favicons/favicon.ico"
    }

    link: {
      label: "Facebook"
      url: "http://www.google.com/search?q=site:facebook.com+{{value}}&btnI"
      icon_url: "https://static.xx.fbcdn.net/rsrc.php/yl/r/H3nktOa7ZMg.ico"
    }
  }

  dimension: category_type {
    # sql: trim(${TABLE}.category) ;;
    case: {
      when: {
        sql: ${category} = 'Blazers & Jackets'
            or ${category} = 'Dresses'
            or ${category} = 'Jumpsuits & Rompers'
            or ${category} = 'Suits'
            or ${category} = 'Suits & Sport Coats'
            or ${category} = 'Outerwear & Coats'
            ;;
        label: "Formal Wear"
      }
      when: {
        sql:  ${category} = 'Pants'
            or ${category} = 'Pants & Capris'
            or ${category} = 'Shorts'
            or ${category} = 'Skirts'
            or ${category} = 'Jeans'
        ;;
        label: "Bottoms"
      }
      when: {
        sql: ${category} = 'Sweaters'
            or ${category} = 'Tops & Tees'
            or ${category} = 'Fashion Hoodies & Sweatshirts'
        ;;
        label: "Tops"
      }
      else: "Other"
      # Possibly more when statements
    }
    alpha_sort: yes
  }



  dimension: item_name {
    sql: TRIM(${TABLE}.name) ;;
  }

  dimension: brand {
    sql: TRIM(${TABLE}.brand) ;;

    link: {
      label: "Website"
      url: "http://www.google.com/search?q={{ value | encode_uri }}+clothes&btnI"
      icon_url: "http://www.google.com/s2/favicons?domain=www.{{ value | encode_uri }}.com"
    }

    link: {
      label: "Facebook"
      url: "http://www.google.com/search?q=site:facebook.com+{{ value | encode_uri }}+clothes&btnI"
      icon_url: "https://static.xx.fbcdn.net/rsrc.php/yl/r/H3nktOa7ZMg.ico"
    }

    link: {
      label: "{{value}} Analytics Dashboard"
      url: "/dashboards/thelook::brand_analytics?Brand%20Name={{ value | encode_uri }}"
      icon_url: "http://www.looker.com/favicon.ico"
    }

    drill_fields: [category, item_name]
  }

  dimension: retail_price {
    type: number
    sql: ${TABLE}.retail_price ;;
  }

  dimension: department {
    sql: TRIM(${TABLE}.department) ;;
  }

  dimension: sku {
    sql: ${TABLE}.sku ;;
  }

  dimension: distribution_center_id {
    type: number
    sql: ${TABLE}.distribution_center_id ;;
  }

  ## MEASURES ##

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  measure: brand_count {
    type: count_distinct
    sql: ${brand} ;;
    drill_fields: [brand, detail2*, -brand_count] # show the brand, a bunch of counts (see the set below), don't show the brand count, because it will always be 1
  }

  measure: category_count {
    alias: [category.count]
    type: count_distinct
    sql: ${category} ;;
    drill_fields: [category, detail2*, -category_count] # don't show because it will always be 1
  }

  measure: department_count {
    alias: [department.count]
    type: count_distinct
    sql: ${department} ;;
    drill_fields: [department, detail2*, -department_count] # don't show because it will always be 1
  }

  set: detail {
    fields: [id, item_name, brand, category, department, retail_price, customers.count, orders.count, order_items.count, inventory_items.count]
  }

  set: detail2 {
    fields: [category_count, brand_count, department_count, count, customers.count, orders.count, order_items.count, inventory_items.count, products.count]
  }
}
