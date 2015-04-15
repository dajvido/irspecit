# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  name        :string
#  important   :boolean
#  deadline    :datetime
#  is_done     :boolean
#  category_id :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Task, type: :model do
  let(:task) { create(:task) }
  it { should belong_to(:category) }
  it { should validate_presence_of(:category) }
  it { should validate_presence_of(:name) }
  it 'important?' do
    expect(task).not_to be_important
  end
  it 'is_done?' do
    expect(task).not_to be_is_done
  end
end
