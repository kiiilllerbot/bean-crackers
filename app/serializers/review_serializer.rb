class ReviewSerializer
  include FastJsonapi::ObjectSerializer
  attributes :title, :description, :score, :coffee_id

  belongs_to :coffee
end
