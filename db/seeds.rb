
# first_gen = Tag.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)

# second_gen = []
# second_gen << 2.times {first_gen.children.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)}

# third_gen = []
# third_gen = second_gen.each do {|tag| 2.times {tag.children.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)}}

tags = [
  "Spirituous",
  "Straight_Forward_1",
  "Smokey_1",
  "Smooth_1",
  "Light_1",
  "Dark_1",
  "Complex_1",
  "Vegetal_1",
  "Bitter_1",
  "Smokey_2",
  "Smooth_2",
  "Dark_2",
  "Light_2",
  "Complex_2",
  "Straight_Forward_2",
  "Vegetal_2",
  "Bitter_2",
  "Light_3",
  "Dark_3",
  "Light_4",
  "Dark_4",
  "Fruity_1",
  "Crisp_1",
  "Decadent",
  "Crisp_2",
  "Citrus",
  "Clove",
  "Tropical",
  "Berry_1",
  "Bubbly",
  "Still",
  "Fruity_2",
  "Herbal",
  "Stonefruit",
  "Berry_2",
  "Gentle"]

tags.each do |tag|
  Tag.create(name: tag, description: "This sure makes a tasty drink.")
end

# Spiritous
Tag.find(1).children << Tag.find(2)
Tag.find(1).children << Tag.find(7)
# Straight_forward_1
Tag.find(2).children << Tag.find(3)
Tag.find(2).children << Tag.find(4)
# Smooth_1
Tag.find(4).children << Tag.find(5)
Tag.find(4).children << Tag.find(6)
# Complex_1
Tag.find(7).children << Tag.find(8)
Tag.find(7).children << Tag.find(9)
# Vegetal
Tag.find(8).children << Tag.find(12)
Tag.find(8).children << Tag.find(13)
# Bitter
Tag.find(9).children << Tag.find(10)
Tag.find(9).children << Tag.find(11)
# Complex_2
Tag.find(14).children << Tag.find(16)
Tag.find(14).children << Tag.find(17)
# Vegetal_2
Tag.find(16).children << Tag.find(18)
Tag.find(16).children << Tag.find(19)
# Bitter_2
Tag.find(17).children << Tag.find(26)
Tag.find(17).children << Tag.find(27)
# Straight_forward_2
Tag.find(15).children << Tag.find(20)
Tag.find(15).children << Tag.find(21)
# Light_4
Tag.find(20).children << Tag.find(22)
Tag.find(20).children << Tag.find(23)
# Fruity_1
Tag.find(22).children << Tag.find(28)
Tag.find(22).children << Tag.find(29)
# Crisp_1
Tag.find(23).children << Tag.find(30)
Tag.find(23).children << Tag.find(31)
# Dark_4
Tag.find(21).children << Tag.find(24)
Tag.find(21).children << Tag.find(25)
# Crisp_2
Tag.find(25).children << Tag.find(32)
Tag.find(25).children << Tag.find(33)
# Fruity_2
Tag.find(32).children << Tag.find(34)
Tag.find(32).children << Tag.find(35)
# Gentle
Tag.find(36).children << Tag.find(14)
Tag.find(36).children << Tag.find(15)

100.times do
  Drink.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)
end

500.times do
  DrinksTag.create(drink_id: rand(1..100),tag_id: rand(1..36))
end

100.times do
  user = User.new
  user.username = Faker::Hipster.word
  user.email = Faker::Internet.email
  user.password = '123456'
  user.password_confirmation = '123456'
  user.save!
end


cocktails = {
    Bitter_Giuseppe: { tags: [ 6, 9, 11, 1, 7], description: "With a big pour of Cynar and a touch of sweet vermouth, this shim (low alchohol cocktail) packs big, bold, bitter flavor with a dark caramel hint.", name: "Bitter Giuseppe"} ,

    1794: { tags: [ 12, 9, 1, 7], description: "Rye Whiskey focused, with a bitter dark chocolate kick.", name: "1794"} ,

    Corpse_Reviver_2: { tags: [36, 20, 23, 15, 31 ] , description: "Refreshing with a good kick of citrus. This drink will help wake you up with a powerful absinthe aroma.", name: "Corpse Reviver #2"},

    Old_Fashioned: { tags: [ 4, 12 , 1, 2] , description: "The original, the famous, the great, the Old Fashioned. This drink will give you a good kick of whiskey, with just a hint of sweetnes and a nose of citrus", name: "Old Fashioned"},

    Sazerac: { tags: [ 4, 12 ,1 , 2], description: "In the same family as the Old Fashioned. This keeps the powerful whiskey kick, and adds a touch of anise and citrus nose.", name: "Sazerac"} ,

    Clover_Club: { tags: [29 ,20 ,22, 36, 15], description: "Raspberry, Sugar, Gin, Lemon, Egg white", name: "Clover Club"} ,

    Williams: { tags: [3 ,2 ,1 ,12 ], description: "Scotch, Yellow Chartreuse, Scotch, Dry Vermouth, Scotch, Orange Bitters, Scotch", name: "Williams"} ,

    Derby: { tags: [ 21, 36, 23, 15], description: "Sweet Vermouth, Bourbon, Lime Juice, Orange Curacao", name: "Derby"} ,

    Monte_Cassino: { tags: [ 7, 3, 36, 14], description: "Yellow Chartruese, Benedictine, Lemon Juice, Rye Whiskey", name: "Monte Cassino"} ,

    Monte_Carlo: { tags: [ 4, 12, 1, 2], description: "Bourbon, Benedictine, Angostura Bitters", name: "Monte Carlo"} ,

    Last_Word: { tags: [36 , 14, 15, 18], description: "Gin, Green Chartreuse, Lime Juice, Luxardo", name: "Last Word"} ,

    Martini: { tags: [ 1, 5, 4, 2], description: "Gin, Dry Vermouth", name: "Martini"} ,

    Zim_Zala_Bim: { tags: [ 1, 7, 8], description: "Reposado Tequila, Regan's Orange Bitters, Yellow Chartreuse, Sugar", name: "Zim Zala Bim"} ,

    Purgatory: { tags: [ 1, 7, 8, 12], description: "Rye Whiskey, Green Chartreuse, Benedictine", name: "Purgatory"} ,

    Basil_Gimlet: { tags: [ 20, 23, 36, 15], description: "Gin, Basil, Lime Juice, Sugar", name: "Basil Gimlet"} ,

    Orange_Whip: { tags: [36 , 15, 22 ,28, 20] , description: "Gin, Egg Whites, Orange Curacao, Orange Juice, Sugar", name: "Orange Whip"},

    Trinidad_Sour: { tags: [36 ,14, 17, 27], description: "Rye Whiskey, Angostura Bitters, Lemon Juice, Orgeat", name: "Trinidad Sour"} ,

    Negroni: { tags: [ 7, 1, 9, 11], description: "Gin, Campari, Sweet Vermouth", name: "Negroni"} ,

    Americano: { tags: [36 ,2 , 17], description: "Campari, Sweet Vermouth, Soda Water", name: "Americano"} ,

    Ephemeral: { tags: [ 7, 1, 8], description: "Gin, Dolin Blanc, St Germain, Celery Bitters", name: "Ephemeral"} ,

    Martinez: { tags: [ 6, 1, 2], description: "Old Tom Gin, Sweet Vermouth, Luxardo, Angostura Bitters, Regan's Orange Bitters", name: "Martinez"} ,

    Cucumber_Cooler: { tags: [15, 20, 23, 30, 36], description: "Gin, Aperol, Lime Juice, Sugar, Soda Water", name: "Cucumber Cooler"} ,

    Gin_Gin_Mule: { tags: [ 20, 36, 23, 15, 30], description: "Gin, Lime Juice, Sugar, Ginger Beer", name: "Gin Gin Mule"} ,

    Favela: { tags: [ 36, 2, 17], description: "Gin, Cocchi Americano, Campari, Falernum, Lemon Juice, Grapefruit Bitters", name: "Favela"} ,

    Royal_Hawaiian: { tags: [36 ,20, 22, 28, 15], description: "Gin, Pineapple Juice, Orgeat, Lemon Juice", name: "Royal Hawaiian"} ,

    Penicillin: { tags: [ 36, 14, 19], description: "Scothc, Ginger, Honey, Lemon", name: "Penicillin"} ,

    Unlucky_Italian: { tags: [36, 17, 14], description: "Cynar, Averna, Honey, Cinnamon, Lemon Juice, Egg White", name: "Unlucky Italian"} ,

    Jack_Rose: { tags: [ 21, 36, 25, 15, 32, 35], description: "Apple Brandy, Lemon Juice, Grenadine", name: "Jack Rose"},

    Chocolate_Flip: { tags: [36, 15, 21, 24], description: "Dark Rum, Tia Maria, Whole Egg, Sugar", name: "Chocolate Flip"},

    Jim_Jam: { tags: [36, 15, 21, 25, 32, 34], description: "Averna, Apry, Lemon Juice", name: "Jim Jam"}
}

top_sf_bars = ["Barbarossa Lounge","Two Sisters Bar and Books","Hi-Lo Club","The Butterfly Lounge","Forgery","Bond","Oddjob","Bourbon + Branch","Blackbird","15 Romolo","Trick Dog","The European","Comstock Saloon","Cantina","Smuggler's Cove","The Alembic","Rickhouse","Maven","Rye","Tradition"]

top_sf_bars.each do |bar|
  Bar.create(name: bar)
end


