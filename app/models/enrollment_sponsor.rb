class EnrollmentSponsor < ApplicationRecord
  self.table_name = "uac_sponsor_list"
  self.primary_key = "uac_id", "sponsor_id"

  belongs_to :sponsor, foreign_key: :sponsor_id
end
