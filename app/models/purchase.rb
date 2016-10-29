# == Schema Information
#
# Table name: purchases
#
#  id                         :integer          not null, primary key
#  guid                       :string
#  create_date_time           :datetime
#  registration_number        :integer
#  name                       :string
#  purchase_method_code       :integer
#  purchase_code_name         :string
#  publication_date_time      :datetime
#  modification_date          :datetime
#  status                     :string
#  version                    :integer
#  save_user_id               :integer
#  examination_place          :text
#  examination_date_time      :datetime
#  submission_close_date_time :datetime
#  publication_planned_date   :datetime
#  created_at                 :datetime         not null
#  updated_at                 :datetime         not null
#  contact_id                 :integer
#

class Purchase < ApplicationRecord
  # ATTRIBUTES = %i(guid create_date_time registration_number name purchase_method_code
  # purchase_code_name contact publication_date_time modification_date documentation_delivery
  # status version save_user_id nonelectronic_place_info examination_place examination_date_time
  # submission_close_date_time publication_planned_date
  # )
  ASSOCIATED_MODELS = {
    customer: { class: 'Organization', type: 'has_one', nested_key: 'customer_attributes' },
    placer: { class: 'Organization', type: 'has_one', nested_key: 'placer_attributes' },
    contact: { class: 'Contact', type: 'belongs_to', nested_key: 'contact_attributes' },
    documentationDelivery: {
      class: 'DocumentationDelivery', type: 'has_one',
      nested_key: 'documentation_delivery_attributes'
    },
    attachments: {
      class: 'Attachment', type: 'has_many',  item_key: 'document',
      nested_key: 'attachments_attributes'
    },
    nonelectronicPlaceInfo: {
      class: 'NonelectronicPlaceInfo', type: 'has_one',
      nested_key: 'nonelectronic_place_info_attributes'
    },
    lots: {
      class: 'Lot', type: 'has_many', item_key: 'lot', nested_key: 'lots_attributes'
    }
  }
  # ASSOCIATED_MODELS = %w(customer placer contact documentation_delivery attachments
  #   nonelectronic_place_info lots)
  NOT_INCLUDE = %w(id contact_id created_at updated_at)

  has_one :customer, class_name: "Organization"
  has_one :placer, class_name: "Organization"
  belongs_to :contact
  has_one :documentation_delivery
  has_one :nonelectronic_place_info
  has_many :attachments
  has_many :lots

  accepts_nested_attributes_for :customer,
                                :placer,
                                :contact,
                                :documentation_delivery,
                                :attachments,
                                :nonelectronic_place_info,
                                :lots
end
