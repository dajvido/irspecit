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

require 'rails_helper'

RSpec.describe Catalog, type: :model do
  it { should belong_to(:user) }
  it { should have_many(:categories).dependent(:destroy) }
  it { should validate_presence_of(:name) }
end
