require "ostruct"

class EnrollmentSerializer < ActiveModel::Serializer
  attributes :alien, :program, :sponsor, :orr,
    :id,
    :cob,
    :entered_on,
    :apprehended_on,
    :state,
    :referring_office

  def id
    object.uac_id
  end

  def entered_on
    object.date_of_entry
  end

  def apprehended_on
    object.date_of_apprehension
  end

  def state
    object.state_of_entry
  end

  def referring_office
    if object.referring_office
      {
        type: object.referring_office.ice_cbp_type,
        description: object.referring_office.description
      }
    else
      {
        type: "Unknown",
        description: "Unknown ice_cbp_id"
      }
    end
    # TODO: Is this unforgivably cheesy?
    # select referring_office from uac_info where referring_office not in (select ice_cbp_id from list_ice_cbp);
  end

  def orr # Office of Refugee Resettlement = ORR
    {
      #date_approved:
    }
  end

  def alien
    {
      id: object.alien_no,
      first_name: object.first_name,
      last_name: object.last_name,
      date_of_birth: object.dob,
      immigration_status: object.immigration_status,
      gender: object.gender
    }
  end

  def program
    {
      id: program_object.id,
      name: program_object.program_name,
      type: if program_object.program_type then program_object.program_type.program_type end
    }
  end

  def sponsor
    {
      first_name: sponsor_object.first_name,
      last_name: sponsor_object.last_name,
      gender: sponsor_object.gender,
      address: sponsor_object.address,
      city: sponsor_object.city,
      state: sponsor_object.state,
      zip: sponsor_object.zip_code,
      phone: sponsor_object.home_phone
    }
  end

  private

  def program_object
    object.programs.first || OpenStruct.new
  end

  def sponsor_object
    object.sponsors.first || OpenStruct.new
  end
end
