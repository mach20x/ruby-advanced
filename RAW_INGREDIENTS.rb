


menu =
{
  :sections => [
    {
      :name => "TACOS",
      :items => [
        {
          :name => "Al Pastor",
          :description => "pork, achiote, pineapple",
          :price => 3.50
        },
        {
        :name => "Carnitas",
            :description => "pork, orange, cinnamon",
              :price => 3.50},
        {:name => "Chorizo",
          :description => "pork, paprika, cumin, garlic",
            :price => 3.50},
        {:name => "Asada",
          :description => "steak, citrus, chile de arbol",
            :price => 5.00},
        {:name => "Barbacoa",
          :description => "beef, cumin, pasilla negra",
            :price => 3.50},
        {:name => "Lengua",
          :description => "beef tongue, cerveza victoria",
            :price => 3.50},
        {:name => "Pollo",
          :description => "chicken, scallion, cilantro",
            :price => 3.50},
        {:name => "Camaron",
          :description => "shrimp, red 'mole', slaw",
            :price => 5.00},
        {:name => "Huitlacoche",
          :description => "corn 'truffle', corn, scallion",
            :price => 3.50},
        {:name => "Rajas",
          :description => "poblano, onion, crema, cotija",
            :price => 3.50},
        {:name => "Chapulines",
          :description => "grasshoppers, avocado, tajin",
            :price => 3.50}
      ]
    },
    {
      :name => "SIDES / ANTOJITOS",
      :items => [
        {:name => "Totopos",
          :description => "hand torn blue masa chips: guac +$2.00 | frijoles +$2.00 | salsa +$1.50 ",
            :price => 5.00 },
        {:name => "Elote",
          :description => "charred corn, cilantro-jalapeno crema, cotija",
            :price => 5.00},
        {:name => "Quinoa",
          :description => "jicama, corn, scallion, chile, nopal dressing",
            :price => 6.50}
      ]
    },
    {
      :name => "BEER / CERVEZA",
      :items => [
        {:name => "Corona Extra",
          :price => 7.00},
        {:name => "Corona Light",
          :price => 6.00},
        {:name => "Negra Modelo",
          :price => 6.00},
        {:name => "Pacifico",
          :price => 6.00},
        {:name => "Tecate",
          :price => 5.00},
        {:name => "Victoria",
          :price => 6.00}
      ]
    },
    {
      :name => "BREAKFAST: Everyday 8 AM - 11:30 AM",
      :items => [
        {:name => "Huevos A La Mexicana",
          :description => "scrambled eggs, pico, frijoles, crema, tortillas",
            :price => 5.00},
        {:name => "Quesadillas de Epazote",
          :description => "queso chihuahua, cotija, epazote, pico, frijoles",
            :price => 5.00},
        {:name => "Tostada de Aguacate",
          :description => "avocado, egg, frijoles, cabbage, cotija",
            :price => 6.00},
        {:name => "Chilaquiles",
          :description => "crispy masa, pollo, salsa roja, eggs, crema",
            :price => 6.00},
        {:name => "Tortilla de Aguacate",
          :description => "avocado, queso chihuahua, cotija, frijoles",
            :price => 6.00}
      ]
    },
    {
         :name => "COFFEE & TEA",
         :items => [
        {:name => "Espresso",
          :description => "shot, cortado, latte",
            :price => [
              {shot: 3.00},
              {cortado: 4.00},
              {latte: 5.00 }
            ]

        },
        {:name => "La Endulzada",
          :description => "espresso, condensed milk, ice, shaken",
            :price => 5.00},
        {:name => "Green Tea",
          :description => "Jasmin Cloud by Jojo Tea",
            :price => 3.00},
        {:name => "Orange",
          :description => "Fresh Squeezed Florida OJ",
            :price => 5.00}
          ]
    }
  ]
}



user_input = STDIN.gets.chomp.downcase
case user_input
when "show menu"
  menu[:sections].each do |section|
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  puts section[:name]
  puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
  section[:items].each do |item|
    puts item[:name]
    puts item[:description]
    puts item[:price]
when "place order"
  puts "What item would you like to order?"
  puts section[:name].prepend (1..5)to_a
   end
  end
 end
end
# place_order = gets
