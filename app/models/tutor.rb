class Tutor < ActiveRecord::Base
  validates :firstname, :lastname, :email, presence: true
  has_many :subject_items, dependent: :destroy
  has_secure_password
  has_many :subjects, through: :subject_items
  before_destroy :ensure_not_referenced_by_any_subject_item

private

# ensure that there are no line items referencing this tutor
def ensure_not_referenced_by_any_subject_item
  if subject_items.empty?
    return true
  else
    errors.add(:base, 'Subject Items present')
    return false
  end
end

end
