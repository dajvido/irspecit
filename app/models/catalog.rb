# == Schema Information
#
# Table name: catalogs
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  user_id    :integer
#

class Catalog < ActiveRecord::Base
  belongs_to :user

  has_many :categories, dependent: :destroy

  validates :name, presence: true
end
