class Article < ApplicationRecord
    validates :title, presence: true, length: { minimum: 5 }
    validates :body, presence: true, length: { minimum: 10 }

    paginates_per 2

    scope :desc_order, -> { order(create_at: :desc)}
    scope :without_highlights, -> (ids){where("ID NOT IN(#{ids})" )}
end
