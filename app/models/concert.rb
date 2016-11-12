# == Schema Information
#
# Table name: concerts
#
#  id         :integer          not null, primary key
#  musician   :string
#  source_id  :string
#  venue      :string
#  date       :datetime
#  city       :string
#  price      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Concert < ApplicationRecord
  has_many :users
end
