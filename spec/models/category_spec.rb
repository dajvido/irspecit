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

require 'rails_helper'

RSpec.describe Category, type: :model do
  it { should belong_to(:user) }
  it { should belong_to(:catalog) }

  it { should validate_presence_of(:name) }
end
