DROP table if exists street_address_listing_normalized;
CREATE table street_address_listing_normalized as
select 
    pk,
    normalized_address,
    to_tsvector(
        'simple', 
        normalized_address
    ) as textsearchvector
from (
        select pk,
            concat_ws(
                ', ', 
                lower(councilperson_name),
                lower(full_address),
                lower(city), 
                lower(zip), 
                lower(council_district_no)
            ) as normalized_address
        from street_address_listing
) as subquery;

DROP table if exists testerAddress_normalized;
CREATE table testerAddress_normalized as
select 
    pk,
    normalized_address,
    to_tsvector(
        'simple', 
        normalized_address
    ) as textsearchvector
from (
    select pk,
        concat_ws(
            ', ', 
        lower(council_person_name), 
        lower(address_street),      
        lower(address_city), 
        lower(address_zip), 
        lower(district)
        ) as normalized_address
    from testerAddress
) as subquery;
