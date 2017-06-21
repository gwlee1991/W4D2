class Cat < ApplicationRecord
  validates :birth_date, :color, :name, :sex, :description, presence: true
  validates :sex, inclusion: { in: %w(M F),
    message: "%{sex} is not a valid sex"}

  COLORS = %w(white black purple grey brown orange naked)

  def age
    years_old = Time.now.year - birth_date.year
    unless  years_old > 0
      abs(Time.now.month - birth_date.month)
    else
      years_old
    end

  end

  has_many :adoption_requests, dependent: :destroy,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :CatAdoptionRequest

end
