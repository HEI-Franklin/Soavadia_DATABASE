-- Liste voyage effectuer par un chauffeur en un mois :

SELECT nom_chauffeur, id_voyage FROM chauffeur c LEFT JOIN voyage v 

ON c.id_chauffeur = v.id_chauffeur

WHERE date_depart BETWEEN make_interval(months <= 1) AND current_date ;

