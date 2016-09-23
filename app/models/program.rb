class Program < ApplicationRecord
  self.table_name = "list_programs"
  self.primary_key = "program_id"

  belongs_to :program_type
end
