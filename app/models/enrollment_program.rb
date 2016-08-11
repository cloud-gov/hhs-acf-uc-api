class EnrollmentProgram < ApplicationRecord
  self.table_name = "uac_program_info"
  self.primary_key = "uac_program_id"

  belongs_to :program, foreign_key: :program_id
end
