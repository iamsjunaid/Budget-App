class Group < ApplicationRecord
  belongs_to :user, class_name: 'User', foreign_key: 'user_id'
  has_many :group_expenses, class_name: 'GroupExpense', foreign_key: 'group_id'

  validates :name, presence: true, length: { in: 2..300 }
end
