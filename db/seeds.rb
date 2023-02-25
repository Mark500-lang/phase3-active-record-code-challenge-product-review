puts "🌱 Seeding data..."

20.times do
  # create a game with random data
  product = Product.create(
    name: Faker::Commerce.product_name
  )

  user = User.create(
    name: Faker::Name.name
  )

    # create between 1 and 5 reviews for each game
    rand(1..5).times do
    Review.create(
      star_rating: rand(1..10),
      comment: Faker::Lorem.sentence,
      product_id: product.id,
      user_id: user.id # use the ID (primary key) of the game as the foreign key
    )
  end
end
   


puts "🌱 Done seeding!"