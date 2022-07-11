-- Liste de tous les dépenses en une semaine/ mois / trimestre :

SELECT depense_regulier FROM voyage

WHERE date_trunc('days', current_date) = date_depart - interval '7 days' ;

SELECT depense_regulier FROM voyage

WHERE date_trunc('months', current_date) = date_depart - interval '1 months' ;

SELECT depense_regulier FROM voyage

WHERE date_trunc('months', current_date) = date_depart - interval '3 months' ;

