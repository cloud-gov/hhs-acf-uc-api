class Enrollment < ApplicationRecord
  self.table_name = "uac_info"
  self.primary_key = "uac_id"

  has_many :enrollment_programs, foreign_key: :uac_id
  has_many :programs, through: :enrollment_programs

  has_many :enrollment_sponsors, foreign_key: :uac_id
  has_many :sponsors, through: :enrollment_sponsors

  belongs_to :referring_office, foreign_key: "referring_office"
end
