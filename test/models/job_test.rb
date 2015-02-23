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

require 'test_helper'

class JobTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
