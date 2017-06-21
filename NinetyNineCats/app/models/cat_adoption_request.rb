class CatAdoptionRequest < ApplicationRecord
  validates :cat_id, :status, presence: true

  belongs_to :cat,
    primary_key: :id,
    foreign_key: :cat_id,
    class_name: :Cat

    def overlapping_requests
      CatAdoptionRequest
        .where(cat_id: cat_id)
        .where.not(id: id)
    end



end
