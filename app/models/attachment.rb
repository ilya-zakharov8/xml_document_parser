# == Schema Information
#
# Table name: attachments
#
#  id               :integer          not null, primary key
#  guid             :string
#  create_date_time :datetime
#  file_name        :string
#  description      :text
#  url              :string
#  purchase_id      :integer
#  created_at       :datetime         not null
#  updated_at       :datetime         not null
#

class Attachment < ApplicationRecord
end
