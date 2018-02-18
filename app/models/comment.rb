class Comment < ApplicationRecord

    belongs_to :user
    belongs_to :post

    validates :title, :content, presence: true
    validates :title, length: { maximum: 150 }

    before_validation :fill_datetime

    private

    def fill_datetime
        self.datetime = Time.zone.now
    end
end
