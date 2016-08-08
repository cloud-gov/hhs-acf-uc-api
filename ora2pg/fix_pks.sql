

    alter table uacportal.uac_fast alter column uac_id type bigint;
    alter table uacportal.uac_program_info alter column uac_id type bigint;
    alter table uacportal.sponsor_background_check alter column uac_id type bigint;
    alter table uacportal.sponsor_background_check alter column background_check_id type bigint;
    alter table uacportal.sponsor_background_check alter column sponsor_id type bigint;
    alter table uacportal.sponsor_background_check alter column occumpant_id type bigint;
    alter table uacportal.uac_criminal_history alter column uac_assessment_id type bigint;
