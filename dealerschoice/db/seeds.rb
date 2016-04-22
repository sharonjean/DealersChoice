2.times { Tag.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence, parent_tag_id: 1) }
2.times { Tag.create(name: Faker::Hipster.word, description: Faker::Hipster.sentence, parent_tag_id: 2) }

