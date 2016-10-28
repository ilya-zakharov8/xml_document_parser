# == Schema Information
#
# Table name: purchases
#
#  id                         :integer          not null, primary key
#  guid                       :string
#  create_date_time           :datetime
#  registration_number        :integer
#  name                       :string
#  customer_id                :integer
#  purchase_method_code       :integer
#  purchase_code_name         :string
#  placer_id                  :integer
#  contact                    :integer
#  publication_date_time      :datetime
#  modification_date          :datetime
#  documentationDelivery      :integer
#  status                     :string
#  version                    :integer
#  save_user_id               :integer
#  nonelectronic_place_info   :integer
#  examination_place          :text
#  examination_date_time      :datetime
#  submission_close_date_time :datetime
#  publication_planned_date   :datetime
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#
# Indexes
#
#  index_purchases_on_contact                (contact)
#  index_purchases_on_customer_id            (customer_id)
#  index_purchases_on_documentationDelivery  (documentationDelivery)
#  index_purchases_on_placer_id              (placer_id)
#

require 'rails_helper'

RSpec.describe Purchase, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
