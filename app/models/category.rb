# == Schema Information
#
# Table name: categories
#
#  id         :integer          not null, primary key
#  name       :string
#  user_id    :integer
#  catalog_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Category < ActiveRecord::Base
  belongs_to :user
  belongs_to :catalog

  has_many :tasks, dependent: :destroy

  validates :name, presence: true
end
