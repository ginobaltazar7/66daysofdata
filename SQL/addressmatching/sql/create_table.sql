DROP TABLE IF EXISTS street_address_listing;
CREATE TABLE street_address_listing (
    pk serial primary key,
    address_no varchar,
    street_prefix_direction varchar,      
    street_prefix_type varchar,
    street_name varchar,
    street_suffix_type varchar,
    street_suffix_direction varchar,
    street_extension varchar,
    full_address varchar,
    city varchar,
    zip varchar,
    council_district_no varchar,
    councilperson_name varchar,
    jurisdiction varchar
);  

COPY street_address_listing (
    address_no,
    street_prefix_direction,      
    street_prefix_type,
    street_name,
    street_suffix_type,
    street_suffix_direction,
    street_extension,
    full_address,
    city,
    zip,
    council_district_no,
    councilperson_name,
    jurisdiction
)
FROM ‘/tmp/street_address_listing.csv’ WITH (format csv, header true);

DROP TABLE IF EXISTS testerAddress;
CREATE TABLE testerAddress (
    pk serial primary key,
    council_person_name varchar,
    address_street varchar,      
    address_city varchar,
    address_state varchar,
    address_zip varchar,
    district varchar
);  

COPY testerAddress (
    council_person_name,
    address_street,      
    address_city,
    address_state,
    address_zip,
    district
)
FROM '/tmp/testerAddress.csv' WITH (format csv, header true);

-- requires copying from localhost to docker container
-- e.g. docker cp /Users/GB/Documents/Jobs/address_matching/data/File2.csv e239c87d0466:/tmp/. 