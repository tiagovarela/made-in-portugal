class CreateFounders < ActiveRecord::Migration
  def change
    create_table :founders do |t|
      t.string :name, :null => false
      t.string :twitter_url
      t.string :facebook_url
      t.string :linkedin_url

      t.timestamps
    end
  end
end
