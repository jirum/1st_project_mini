class CityMunicipalitySerializer < ActiveModel::Serializer
  attributes :code, :name, :is_city, :is_municipality
  belongs_to :province
  belongs_to :district
end
