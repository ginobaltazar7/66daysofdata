with queries as (
select 
	councilperson_name,
	full_address,
    council_district_no,
	phraseto_tsquery(
		'simple',
		concat_ws(
			', ', 
			lower(councilperson_name), 
			lower(full_address), 
			lower(city),
			lower(zip)
		)
	) as tsq
from street_address_listing
)
select 
	testerAddress.*,
	street_address_listing_normalized.*,
	queries.councilperson_name,
	queries.full_address
from testerAddress
join street_address_listing_normalized using (pk)
join queries on (street_address_listing_normalized.textsearchvector @@ queries.tsq);