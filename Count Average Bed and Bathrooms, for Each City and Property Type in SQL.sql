select * from airbnb_search_details;

-- AVERAGE BATHROOMS
SELECT AVG(bathrooms)
FROM airbnb_search_details;

-- AVERAGE BEDROOMS
SELECT AVG(bedrooms)
FROM airbnb_search_details;

-- AVERAGE BED AND BATH ROOMS
SELECT AVG(bedrooms), AVG(bathrooms)
FROM airbnb_search_details;

-- AVERAGE BED AND BATH ROOMS and Property Type, City
SELECT 
    city, 
    property_type, 
    AVG(bathrooms) AS n_bathrooms_avg, 
    AVG(bedrooms) AS n_bedrooms_avg
FROM airbnb_search_details
GROUP by city, property_type;
