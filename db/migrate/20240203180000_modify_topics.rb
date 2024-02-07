class ModifyTopics < ActiveRecord::Migration[7.1]
  def change
    add_index :topics, :alias, unique: true
    Topic.create alias: 'cats', title: 'cats'
    Topic.create alias: 'dogs', title: 'dogs'
    Topic.create alias: 'hamsters', title: 'hamsters'
    Topic.create alias: 'rabbits', title: 'rabbits'
    Topic.create alias: 'turtles', title: 'turtles'
  end
end
