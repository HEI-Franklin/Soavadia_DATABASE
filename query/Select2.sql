-- Liste dépense voyage faite par un chauffeur en un mois :

SELECT depense_regulier, nom_chauffeur FROM voyage v LEFT JOIN chauffeur c 

ON v.id_chauffeur = c.id_chauffeur

WHERE date_depart = make_interval(months <= 1)

LIMIT 1 ;

