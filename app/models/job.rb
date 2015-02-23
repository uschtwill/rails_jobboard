# == Schema Information
#
# Table name: jobs
#
#  id              :integer          not null, primary key
#  title           :string
#  company         :string
#  url             :string
#  description     :text
#  salary          :integer
#  working_hours   :integer
#  location        :string
#  department      :string
#  team            :string
#  responsibility  :text
#  job_description :text
#  requirements    :text
#  perks           :text
#  email           :string
#  phone           :integer
#  application     :text
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Job < ActiveRecord::Base
  validates :title, presence: true
  validates :company, presence: true
  validates :url, presence: true, uniqueness: true
end
