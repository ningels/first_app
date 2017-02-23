# Include both the migration and the app itself
require_relative 'migration'
require_relative 'ipsum.rb'
require          'pry'



#nancy insert, delete on merge, just for testing
#ActiveRecord::Base.logger = Logger.new(STDOUT)

# Overwrite the development database connection with a test connection.
ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'w4d3.sqlite3'
)

 ApplicationMigration.migrate(:down)
 ApplicationMigration.migrate(:up)


#Remember, ActiveRecord takes a hash, so the format of the create is different from blackjack
#  ipsum.text_type = Faker::Lorem.paragraph


  ipsum = Ipsum.new
  ipsum.text_type = "/samuel"
  ipsum.text = "The path of the righteous man is beset on all sides by the iniquities of the selfish and the tyranny of evil men"
  ipsum.save

  Ipsum.create(text_type: "/hipster-test",  text: "Mustache forage trust fund, austin cold-pressed man bun")

  Ipsum.create :text_type => '/futurama', :text => "Oh dear! She's stuck in an infinite loop, and he's an idiot!"


#binding.pry
#  Ipsum.create("hipster" => "Mustache forage trust fund, austin cold-pressed man bun")
#  ipsum = Ipsum.create(text_type: "hipster", text: "Mustache forage trust fund, austin cold-pressed man bun")
#  ipsum = Ipsum.create :text_type: "fillerma" "Oh dear! She's stuck in an infinite loop, and he's an idiot!")

#:hashtag.text
