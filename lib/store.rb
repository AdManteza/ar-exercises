class Store < ActiveRecord::Base
  has_many :employees

  validates :name, :annual_revenue, presence: true 
  validates :mens_apparel, :womens_apparel, :inclusion => { :in => [true, false] }
  validate :stores_must_have_mens_or_womens_apparel, on: :create

  def stores_must_have_mens_or_womens_apparel
    if mens_apparel == false && womens_apparel == false
      errors.add(:mens_apparel, "Must have a men's apparel")
      errors.add(:womens_apparel, "Must have a women's apparel")
    end
  end
 
end

