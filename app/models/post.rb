class Post < ApplicationRecord

    belongs_to :user
    has_many :comments

    validates :title, :content, presence: true
    validates :title, length: { maximum: 255 }

    before_validation :fill_date

    private

    def fill_date
        self.date = Time.zone.now.to_date
    end
end
