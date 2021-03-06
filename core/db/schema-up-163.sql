
delete from ECRF_FIELD_STATUS_TRANSITION where e_c_r_f_field_status_types_fk = (select ID from ECRF_FIELD_STATUS_TYPE where NAME_L10N_KEY='validation_corrected');
delete from ECRF_FIELD_STATUS_TRANSITION where e_c_r_f_field_status_types_fk = (select ID from ECRF_FIELD_STATUS_TYPE where NAME_L10N_KEY='validation_data_na');
delete from ECRF_FIELD_STATUS_TRANSITION where e_c_r_f_field_status_types_fk = (select ID from ECRF_FIELD_STATUS_TYPE where NAME_L10N_KEY='validation_closed');

alter table PROBAND_GROUP add column RANDOMIZE BOOLEAN;
update PROBAND_GROUP set RANDOMIZE = 'f';
alter table PROBAND_GROUP alter RANDOMIZE set not null;

alter table PROBAND_LIST_ENTRY_TAG add column STRATIFICATION BOOLEAN;
update PROBAND_LIST_ENTRY_TAG set STRATIFICATION = 'f';
alter table PROBAND_LIST_ENTRY_TAG alter STRATIFICATION set not null;

alter table PROBAND_LIST_ENTRY_TAG add column RANDOMIZE BOOLEAN;
update PROBAND_LIST_ENTRY_TAG set RANDOMIZE = 'f';
alter table PROBAND_LIST_ENTRY_TAG alter RANDOMIZE set not null;

alter table TRIAL add column SIGNUP_RANDOMIZE BOOLEAN;
update TRIAL set SIGNUP_RANDOMIZE = 'f';
alter table TRIAL alter SIGNUP_RANDOMIZE set not null;

