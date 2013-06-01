class CreateStartups < ActiveRecord::Migration
  def change
    create_table :startups do |t|
      t.string :name, :null => false
      t.string :url, :null => false
      t.belongs_to :tag_1, :null => false
      t.belongs_to :tag_2, :null => false
      t.string :foundation_date, :null => false
      t.string :twitter_username
      t.string :facebook_url
      t.string :angel_list_url
      t.boolean :is_hiring
      t.string :hiring_url
      t.text :description
      t.text :address
      t.string :logo_url
      t.string :dimension
      t.string :funding_amount
      t.boolean :is_dead

      t.timestamps
    end
  end
end
