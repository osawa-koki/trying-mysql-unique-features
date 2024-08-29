DROP TABLE IF EXISTS projects;

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    project_name VARCHAR(50),
    team_members VARCHAR(255)
);

INSERT INTO projects (project_name, team_members) VALUES
('Project Alpha', 'Alice,Bob,Charlie'),
('Project Beta', 'David,Eve,Frank'),
('Project Gamma', 'George,Hannah,Ivy,Alice');

SELECT project_name, FIND_IN_SET('Alice', team_members) AS position_of_alice
FROM projects;
