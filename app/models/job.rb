# == Schema Information
#
# Table name: jobs
#
#  id         :integer          not null, primary key
#  title      :string
#  company    :string
#  url        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :company, presence: true
  validates :url, presence: true, uniqueness: true
end
