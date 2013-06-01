class CreateFoundersStartups < ActiveRecord::Migration
  def up
    create_table :founders_startups do |t|
      t.references :founder
      t.references :startup
    end
  end
 
  def down
    drop_table :founders_startups
  end
end
