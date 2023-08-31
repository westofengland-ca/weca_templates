--this query SELECTs all data from layer 'a' where it is located within a specified distance of layer 'b'
--for example, we can use this query to find all bus stops within 50m of the A4 road. The bus stops would be layer 'a' and the road would be layer 'b' (filtered to the A4 road only)

SELECT DISTINCT ON (a.id) a.*  --we use DISTINCT ON to only return unique features. Use a column containing unique values; usually this column is called 'id'

FROM schema.target_layer a,  --layer 'a', the layer we want to find features from
schema.reference_layer b  --layer 'b', the reference layer we're using to search against

WHERE ST_DWITHIN(a.shape, b.shape, 50)  --change the numerical value here to match your desired search distance. The unit matches the data projection units (metres if using British National Grid)
AND b.column = 'value'  --an optional secondary condition to filter the reference layer down
;
