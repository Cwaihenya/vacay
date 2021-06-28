class Place < ApplicationRecord
has_many :stations, dependent: :destroy
validates_presence_of :property_name,
          message: "Property name should be listed"
validates_presence_of :address,
            message: "Property address should be listed"
validates_presence_of :rent,
            message: "Property name should be listed"
validates_presence_of :building_age,
            message: "Property name should be listed"
accepts_nested_attributes_for :stations, :allow_destroy => true
end
