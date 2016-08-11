module Query
  class Enrollments
    attr_reader :starts, :ends

    def lazy
      Enrollement
        .includes(:programs)
        .includes(:sponsors)
    end
  end
end

<<-SQL
SELECT
      A.UAC_ID,     /* alien */
      A.ALIEN_NO,   /* alien */
      A.FIRST_NAME, /* alien */
      A.LAST_NAME,  /* alien */
      TO_CHAR(A.DOB,'MM/DD/YYYY') AS DOB, /* alien */
      A.COB,              /* enrollment */
      A.DATE_OF_ENTRY,    /* enrollment */
      A.STATE_OF_ENTRY,   /* enrollment */
      TO_CHAR(A.DATE_OF_APPREHENSION,'MM/DD/YYYY') AS DATE_OF_APPREHENSION, /* enrollment */
      J.DESCRIPTION AS REFERRING_SECTOR, /* enrollment */
      TO_CHAR(A.DATE_ORR_NOTIFIED,'MM/DD/YYYY') AS DATE_ORR_NOTIFIED, /* enrollment */
      A.TIME_ORR_NOTIFIED,      /* enrollment */
      TO_CHAR(A.DATE_ORR_APPROVED,'MM/DD/YYYY') AS DATE_ORR_APPROVED, /* enrollment */
      A.TIME_ORR_APPROVED,      /* enrollment */
      A.IMMIGRATION_STATUS,     /* alien */
      A.REFERRING_AGENCY,       /* enrollment */
      A.UAC_STATUS,             /* enrollment */
      A.GENDER,                 /* alien */
      B.UAC_PROGRAM_ID,         /* program */
      F.PROGRAM_ID,             /* program */
      TO_CHAR(B.DATE_REFERRED,'MM/DD/YYYY') AS DATE_REFERRED, /* enrollment */
      TO_CHAR(B.DATE_ADMITTED,'MM/DD/YYYY') AS DATE_ADMITTED, /* enrollment */
      B.CURRENT_STATUS,         /* enrollment */
      TO_CHAR(H.DATE_OF_DISCHARGE,'MM/DD/YYYY') AS DATE_DISCHARGED, /* enrollment */
      B.DATE_DISCHARGED AS DATE_DISCHARGED_TEMP, /* enrollment */
      D.FIRST_NAME AS SPONSOR_FIRST_NAME, /* sponsor */
      D.LAST_NAME AS SPONSOR_LAST_NAME,   /* sponsor */
      D.GENDER AS SPONSOR_GENDER,         /* sponsor */
      C.SPONSOR_ADDRESS,                  /* sponsor */
      C.SPONSOR_CITY,                     /* sponsor */
      C.SPONSOR_STATE,                    /* sponsor */
      C.SPONSOR_ZIPCODE,                  /* sponsor */
      D.HOME_PHONE AS SPONSOR_PHONE,      /* sponsor */
      E.RELATIONSHIP AS SPONSOR_RELATIONSHIP_TO_UAC, /* sponsor */
      F.PROGRAM_NAME,                     /* program */
      G.PROGRAM_TYPE,                     /* program */
      I.DISCHARGE_TYPE                    /* enrollment */
FROM UAC_INFO A
      LEFT JOIN UAC_PROGRAM_INFO B ON A.UAC_ID = B.UAC_ID
      LEFT JOIN UAC_SPONSOR_LIST C ON A.UAC_ID = C.UAC_ID
      LEFT JOIN SPONSOR_INFO D ON C.SPONSOR_ID = D.SPONSOR_ID
      LEFT JOIN LIST_RELATIONSHIP E ON C.SPONSOR_RELATIONSHIP_TO_UAC = E.RELATIONSHIP_ID
      LEFT JOIN LIST_PROGRAMS F ON B.PROGRAM_ID = F.PROGRAM_ID
      LEFT JOIN LIST_PROGRAM_TYPE G ON F.PROGRAM_TYPE_ID=G.PROGRAM_TYPE_ID
      LEFT JOIN UAC_PROGRAM_EXIT H ON B.UAC_PROGRAM_ID = H.UAC_PROGRAM_ID
      LEFT JOIN LIST_DISCHARGE_TYPE I ON H.TYPE_OF_DISCHARGE = I.DISCHARGE_TYPE_ID
      LEFT JOIN LIST_ICE_CBP J ON A.REFERRING_OFFICE = J.ICE_CBP_ID;
SQL

<<-NOTES

Model Names:
  UAC_INFO,             Enrollment
  UAC_PROGRAM_INFO,     EnrollmentProgram (rich join)
  UAC_SPONSOR_LIST,     EnrollmentSponsor (join)
  SPONSOR_INFO,         Sponsor
  LIST_RELATIONSHIP,    Relationship
  LIST_PROGRAMS,        Program
  LIST_PROGRAM_TYPE,    ProgramType
  UAC_PROGRAM_EXIT,     ProgramExit
  LIST_DISCHARGE_TYPE,  DischargeType
  LIST_ICE_CBP,         ReferringSector
NOTES
