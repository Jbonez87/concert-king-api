# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  last_name  :string
#  avatar     :string
#  email      :string
#  password   :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# class User < ApplicationRecord
#   has_many :concerts
#
#   alias_method :authenticate, :validate_password?
#
#   def self.from_token_payload(payload)
#     self.find payload["sub"]
#   end
# end
