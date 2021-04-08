# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

def html_strip(strip)
    ActionView::Base.full_sanitizer.sanitize(strip).squish
end

def image_strip(strip)
    ActionView::Base.full_sanitizer.sanitize(strip)
end




resp = RestClient::Request.execute(method: :get, 
    url: "https://www.fishwatch.gov/api/species",
    headers:{
        'Content-Type': 'application/json'
    })
    fish_data = JSON.parse(resp.body)
    fishes = fish_data
    fish = fish_data[0]
    # byebug 
    fishes.each do |fish|
        Fish.create(
            species_name: fish["Species Name"],
            scientific_name: fish["Scientific Name"],
            image_gallery: fish["Image Gallery"],
            biology: html_strip(fish["Biology"]),
            population: fish["Population"],
            calories: fish["Calories"],
            carbohydrate: fish["Carbohydrate"],
            cholesterol: fish["Cholesterol"],
            fat_total: fish["Fat, Total"],
            health_benefits: fish["Health Benefits"],
            physical_description: html_strip(fish["Physical Description"]),
            protein: fish["Protein"],
            saturated_fat: fish["Saturated Fatty Acids, Total"],
            selenium: fish["Selenium"],
            serving_weight: fish["Serving Weight"],
            sodium: fish["Sodium"],
            path: fish["Path"]
        )
    end

    user1 = User.create(username: "GenericUser")
    user2 = User.create(username: "GenericUser2")

    recipe1 = Recipe.create(user_id: 1, fish_id: 13, instruction: "Test Recipe", story: "Test Story")

    puts " 🐟 🎣  Fishing Time 🐡 🎏" 