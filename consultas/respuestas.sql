-- 1. Busqué el reporte del crimen en la fecha y ciudad indicadas. Descubrí que hay dos testigos.
SELECT * FROM crime_scene_report 
WHERE date = 20180115 AND city = 'SQL City' AND type = 'murder';

-- 2. Busqué al primer testigo filtrando por la calle y ordenando por número de casa descendente para hallar la última.
SELECT * FROM person 
WHERE address_street_name = 'Northwestern Dr' 
ORDER BY address_number DESC 

-- 3. Busqué a la segunda testigo 
SELECT * FROM person 
WHERE address_street_name = 'Franklin Ave';

-- 4. Leí las transcripciones de las entrevistas de ambos testigos usando sus IDs.
SELECT * FROM interview 
WHERE person_id IN (14887, 16371);

-- 5. Busqué a los miembros del gimnasio con membresía Gold y número iniciando en 48Z.
SELECT * FROM get_fit_now_member 
WHERE id LIKE '48Z%' AND membership_status = 'gold';

-- 6. Verifiqué las placas de los vehículos asociados a las licencias de los dos sospechosos.
SELECT person.name, drivers_license.plate_number 
FROM person 
JOIN drivers_license ON person.license_id = drivers_license.id 
WHERE person.id IN (28819, 67318);

-- 7. Consulta de verificación del sistema para el asesino encontrado.
INSERT INTO solution VALUES (1, 'Jeremy Bowers');
SELECT value FROM solution;