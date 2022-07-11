-- Liste / nombre réservation faite sur place en un mois :
SELECT * FROM reservation
WHERE en_ligne = false 
AND date_reservarion = make_interval(months <= 1) ;

-- Liste dépense voyage faite par un chauffeur en un mois :
SELECT depense_regulier, nom_chauffeur FROM voyage v LEFT JOIN chauffeur c 
ON v.id_chauffeur = c.id_chauffeur
WHERE date_depart = make_interval(months <= 1)
LIMIT 1 ;

-- Liste dépense voyage faite par une voiture en un mois :
SELECT depense_regulier, immatriculation FROM
voyage vg LEFT JOIN voiture vt 
ON vg.id_voiture = vt.id_voiture
WHERE date_depart = make_interval(months <= 1)
LIMIT 1 ;

-- Liste de tous les dépenses en une semaine/ mois / trimestre :
SELECT depense_regulier FROM voyage
WHERE date_trunc('days', current_date) = date_depart - interval '7 days' ;

SELECT depense_regulier FROM voyage
WHERE date_trunc('months', current_date) = date_depart - interval '1 months' ;

SELECT depense_regulier FROM voyage
WHERE date_trunc('months', current_date) = date_depart - interval '3 months' ;

          OR
SELECT depense_regulier FROM voyage
ORDER BY date_depart DESC --ou ASC
LIMIT date_depart = make_interval(days <= 7);

SELECT depense_regulier FROM voyage
ORDER BY date_depart DESC --ou ASC
LIMIT date_depart = make_interval(months <=1);

SELECT depense_regulier FROM voyage
ORDER BY date_depart DESC --ou ASC
LIMIT date_depart = make_interval(months <=3);

-- Liste voyage effectuer par un chauffeur en un mois :
SELECT nom_chauffeur, id_voyage FROM chauffeur c LEFT JOIN voyage v 
ON c.id_chauffeur = v.id_chauffeur
WHERE date_depart BETWEEN make_interval(months <= 1) AND current_date ;