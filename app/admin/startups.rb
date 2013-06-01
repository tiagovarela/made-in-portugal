ActiveAdmin.register Startup do
  index do
    selectable_column
    column :name
    column :tag_1
    column :tag_2
    column :foundation_date
    column :city
    column :url
    
    actions
  end

  form do |f|
    f.inputs "Details" do
      f.input :name
      f.input :tag_1
      f.input :tag_2
      f.input :foundation_date, :as => :select, :collection => Startup::FOUNDATION_DATES
      f.input :city, :as => :select, :collection => Startup::CITIES
      f.input :url
      f.input :founders, :as => :check_boxes
      f.input :description
      f.input :twitter_username
      f.input :facebook_url
      f.input :angel_list_url
      f.input :is_hiring
      f.input :hiring_url
      f.input :address
      f.input :logo_url
      f.input :dimension, :as => :select, :collection => Startup::DIMENSIONS
      f.input :funding_amount, :as => :select, :collection => Startup::FUNDING_AMOUNTS
      f.input :is_dead

      f.actions
    end
  end
end
