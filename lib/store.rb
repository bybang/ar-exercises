class Store < ActiveRecord::Base
  has_many :employees
  validates :name, length: {minimum: 3}
  validates :annual_revenue, numericality: {only_integer: true, greater_than: 0}
  validate :has_apparel

  def has_apparel
    if !mens_apparel.present? && !womens_apparel.present?
      errors.add(:mens_apparel, "Stores must carry men or womens apparel")
      errors.add(:womens_apparel, "Stores must carry men or womens apparel")
    end
  end
end
