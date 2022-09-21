class SecretMenuItem < ApplicationRecord
  validates_presence_of :menu_name, :restaurant_name, :menu_description
end
