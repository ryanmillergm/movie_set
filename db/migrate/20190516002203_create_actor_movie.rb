class CreateActorMovie < ActiveRecord::Migration[5.1]
  def change
    create_table :actor_movies do |t|
      t.references :actor, foreign_key: true
      t.references :movie, foreign_key: true
    end
  end
end
