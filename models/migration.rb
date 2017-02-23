require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter:  'sqlite3',
  database: 'w4d3.sqlite3'
)

class ApplicationMigration < ActiveRecord::Migration
  def up
    create_table "ipsums", force: true do |t|
      t.text    "text_type"
      t.string  "text"
    end
  end
end

# To execute this in IRB, type:
#
# require './migration'
# ApplicationMigration.migrate(:up)

# To roll this back in IRB, type:
#
# require './migration'
# ApplicationMigration.migrate(:down)
