-- Récupérer la liste des themes
SELECT *
FROM themes;

-- Récupérer toutes les ressources triées par date de mise à jour
-- SELECT * 
-- FROM resources
-- ORDER BY updated_at DESC;

-- -- Récupérer uniquement le nom et l'url des ressources de type exercice
-- SELECT title, url 
-- FROM resources
-- WHERE type = 'exercice';

-- -- Récupérer le titre et la description des ressources d'Ada uniquement
-- SELECT title, description 
-- FROM resources
-- WHERE is_ada = true;

-- -- Récupérer les ressources qui ont la compétence JavaScript associée
-- SELECT resources.title 
-- FROM resources
-- JOIN resources_skills ON resources.id = resources_skills.resource_id
-- JOIN skills ON skills.id = resources_skills.skill_id
-- WHERE skills.name = 'JavaScript';

-- -- Récupérer les ressources dont le titre contient le mot "react"
-- SELECT * 
-- FROM resources
-- WHERE LOWER(title) LIKE '%react%';