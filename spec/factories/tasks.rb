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

FactoryGirl.define do
    factory :task do
    name "MyString"
    deadline "2015-04-15 22:12:17"
    category
  end

end
