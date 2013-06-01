ActiveAdmin.register Startup do
  index do
    selectable_column
    column :name
    column :tag_1
    column :tag_2
    column :foundation_date
    column :url
    
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :tag_1
      f.input :tag_2
      f.input :foundation_date, :as => :select, :collection => (2000..2013).to_a
      f.input :founders, :as => :check_boxes
      f.input :url
      f.input :description
      f.input :twitter_username
      f.input :facebook_url
      f.input :angel_list_url
      f.input :is_hiring
      f.input :hiring_url
      f.input :address
      f.input :logo_url
      f.input :dimension, :as => :select, :collection => ["1-4", "5-10", "11-20", "21-50", "50+"]
      f.input :funding_amount, :as => :select, :collection => ["<49", "50-149", "150-299", "300+"]
      f.input :is_dead

      f.actions
    end
  end
end
