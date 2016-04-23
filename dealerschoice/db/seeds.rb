
first_gen = Tag.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)

second_gen = []
second_gen << 2.times {first_gen.children.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)}

third_gen = []
third_gen = second_gen.each do {|tag| 2.times {tag.children.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence)}}

