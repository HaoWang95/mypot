# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Product.delete_all

Product.create!(
  title: "Programming Ruby",
  description: %{
        <p>
        <em>Robust, Reliable, and Resilient</em>
        APIs are transforming the business world at an increasing pace. Gain the essential skills needed to quickly design, build, and deploy
        quality web APIs that are robust, reliable, and resilient. Go from
        initial design through prototyping and implementation to deployment of
        mission-critical APIs for your organization. Test, secure, and deploy
        your API with confidence and avoid the “release into production”
        panic. Tackle just about any API challenge with more than a dozen
        open-source utilities and common programming patterns you can apply
        right away.
        </p>
    },
  image_url: "ruby.jpg",
  price: 19.95,
)

Product.create!(
  title: "Docker for Rails Developers",
  description: "From beginner to professional for Ruby on Rails!",
  image_url: "ridocker.jpg",
  price: 28.88,
)

Product.create!(
  title: "Master Tailwind Css",
  description: "Learn how to use tailwind css to quickly build web pages",
  image_url: "tailwind.jpg",
  price: 21.99,
)
