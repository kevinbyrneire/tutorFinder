class Subject < ActiveRecord::Base
  has_many :subject_items, dependent: :destroy
end
