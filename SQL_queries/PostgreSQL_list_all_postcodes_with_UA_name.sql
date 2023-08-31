SELECT postcode, pc_nospace, admin_district_code,
CASE
WHEN admin_district_code = 'E06000025' THEN 'South Gloucestershire'
WHEN admin_district_code = 'E06000022' THEN 'Bath and North East Somerset'
WHEN admin_district_code = 'E06000024' THEN 'North Somerset'
WHEN admin_district_code = 'E06000023' THEN 'City of Bristol'
END ua_name

FROM os.codepoint_open_lep
ORDER BY admin_district_code ASC
;
