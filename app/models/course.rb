class Course < ActiveRecord::Base
  has_many :syllabuses
  validates :name, presence: true,
                    length: { minimum: 15 }
end
