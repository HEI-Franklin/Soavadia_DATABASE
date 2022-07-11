-- Liste dépense voyage faite par une voiture en un mois :

SELECT depense_regulier, immatriculation FROM

voyage vg LEFT JOIN voiture vt 

ON vg.id_voiture = vt.id_voiture

WHERE date_depart = make_interval(months <= 1)

LIMIT 1 ;

