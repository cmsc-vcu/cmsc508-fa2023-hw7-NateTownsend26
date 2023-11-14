# hw7-ddl.sql

## DO NOT RENAME OR OTHERWISE CHANGE THE SECTION TITLES OR ORDER.
## The autograder will look for specific code sections. If it can't find them, you'll get a "0"

# Code specifications.
# 0. Where there a conflict between the problem statement in the google doc and this file, this file wins.
# 1. Complete all sections below.
# 2. Table names must MATCH EXACTLY to schemas provided.
# 3. Define primary keys in each table as appropriate.
# 4. Define foreign keys connecting tables as appropriate.
# 5. Assign ID to skills, people, roles manually (you must pick the ID number!)
# 6. Assign ID in the peopleskills and peopleroles automatically (use auto_increment)
# 7. Data types: ONLY use "int", "varchar(255)", "varchar(4096)" or "date" as appropriate.

# Section 1
# Drops all tables.  This section should be amended as new tables are added.

SET FOREIGN_KEY_CHECKS=0;
DROP TABLE IF EXISTS people;
DROP TABLE IF EXISTS skills;
DROP TABLE IF EXISTS peopleskills;
DROP TABLE IF EXISTS roles;
DROP TABLE IF EXISTS peopleroles;
# ... 
SET FOREIGN_KEY_CHECKS=1;

# Section 2
# Create skills( id,name, description, tag, url, time_commitment)
# ID, name, description and tag cannot be NULL. Other fields can default to NULL.
# tag is a skill category grouping.  You can assign it based on your skill descriptions.
# time committment offers some sense of how much time was required (or will be required) to gain the skill.
# You can assign the skill descriptions.  Please be creative!
    
    CREATE TABLE skills(
    skills_id INT NOT NULL AUTO_INCREMENT,
    skills_name VARCHAR(255) NOT NULL,
    skills_description VARCHAR(255) NOT NULL,
    skills_tag VARCHAR(255) NOT NULL,
    skills_url VARCHAR(255) DEFAULT NULL,
    skills_time_commitment VARCHAR(255) DEFAULT NULL,
    PRIMARY KEY (skills_id)
);


# Section 3
# Populate skills
# Populates the skills table with eight skills, their tag fields must exactly contain “Skill 1”, “Skill 2”, etc.
# You can assign skill names.  Please be creative!

INSERT INTO skills (skills_name, skills_description, skills_tag, skills_url, skills_time_commitment) VALUES
('Database Management', 'Organizing and optimizing data storage for efficient retrieval and management.', 'Skill 1', 'https://example-database.com', '150 hours to proficiency'),
('Digital Marketing', 'Strategizing and executing online campaigns to reach target audiences effectively.', 'Skill 2', 'https://example-digitalmarketing.com', 'Varies with platform and audience analysis'),
('Cloud Computing', 'Deploying and managing applications and services in cloud environments.', 'Skill 3', 'https://example-cloudcomputing.com', '100 hours for fundamental concepts'),
('Graphic Design', 'Creating visually appealing and impactful designs for various media.', 'Skill 4', 'https://example-graphicdesign.com', '50 hours to basic design proficiency'),
('Machine Learning', 'Developing algorithms and models for pattern recognition and decision-making.', 'Skill 5', 'https://example-machinelearning.com', '150 hours to grasp core concepts'),
('Social Media Management', 'Building and maintaining an online presence across various social platforms.', 'Skill 6', 'https://example-socialmedia.com', '100 hours to navigate analytics and engagement metrics'),
('Blockchain Technology', 'Understanding and implementing decentralized and secure digital transactions.', 'Skill 7', 'https://example-blockchain.com', '500 hours to comprehend smart contract development'),
('UI/UX Design', 'Crafting user-friendly and visually appealing interfaces for digital products.', 'Skill 8', 'https://example-uiuxdesign.com', '300 hours to create seamless user experiences');


# Section 4
# Create people( id,first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined)
# ID cannot be null, Last name cannot be null, date joined cannot be NULL.
# All other fields can default to NULL.

CREATE TABLE people (
    people_id INT NOT NULL AUTO_INCREMENT,
    first_name VARCHAR(255) DEFAULT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) DEFAULT NULL,
    linkedin_url VARCHAR(255) DEFAULT NULL,
    headshot_url VARCHAR(255) DEFAULT NULL,
    discord_handle VARCHAR(255) DEFAULT NULL,
    brief_bio TEXT DEFAULT NULL,
    date_joined DATE NOT NULL,
    PRIMARY KEY (people_id)
);

# Section 5
# Populate people with six people.
# Their last names must exactly be “Person 1”, “Person 2”, etc.
# Other fields are for you to assign.

#insert into people (people_id,people_last_name) values (1,'Person 1');
INSERT INTO people (first_name, last_name, email, linkedin_url, headshot_url, discord_handle, brief_bio, date_joined) VALUES
('Christopher', 'Person 1', 'christopher1@example.com', 'http://linkedin.com/in/christopher1', 'http://example.com/headshots/1.jpg', 'christopher1#0001', 'Innovative software engineer with a passion for coding and a knack for problem-solving, dedicated to contributing to cutting-edge open-source projects.', '2022-01-15'),
('Sophie', 'Person 2', 'sophie2@example.com', 'http://linkedin.com/in/sophie2', 'http://example.com/headshots/2.jpg', 'sophie2#0002', 'Marketing aficionado with a keen eye for market trends and a talent for crafting compelling brand narratives, leveraging a creative approach to captivate audiences.', '2022-02-20'),
('Alexander', 'Person 3', 'alexander3@example.com', 'http://linkedin.com/in/alexander3', 'http://example.com/headshots/3.jpg', 'alexander3#0003', 'Financial analyst adept in risk management and investment strategies, bringing a wealth of experience to analyze and optimize financial portfolios.', '2022-03-27'),
('Isabella', 'Person 4', 'isabella4@example.com', 'http://linkedin.com/in/isabella4', 'http://example.com/headshots/4.jpg', 'isabella4#0004', 'Creative director with a solid background in graphic design and brand development, driving artistic vision to shape impactful visual identities.', '2022-04-30'),
('Ethan', 'Person 5', 'ethan5@example.com', 'http://linkedin.com/in/ethan5', 'http://example.com/headshots/5.jpg', 'ethan5#0005', 'Proven project manager with a track record of leading cross-functional teams, ensuring the timely delivery of innovative solutions within budget constraints.', '2022-06-01'),
('Hannah', 'Person 6', 'hannah6@example.com', 'http://linkedin.com/in/hannah6', 'http://example.com/headshots/6.jpg', 'hannah6#0006', 'Entrepreneur and business strategist focusing on technology startups, dedicated to driving scalable growth and fostering innovation.', '2022-07-08'),
('Daniel', 'Person 7', 'daniel7@example.com', 'http://linkedin.com/in/daniel7', 'http://example.com/headshots/7.jpg', 'daniel7#0007', 'Experienced software developer specializing in mobile application development and UX design, bringing expertise to create seamless user experiences.', '2022-08-14'),
('Mia', 'Person 8', 'mia8@example.com', 'http://linkedin.com/in/mia8', 'http://example.com/headshots/8.jpg', 'mia8#0008', 'Data scientist with a focus on machine learning and data mining, making data-driven decisions to influence business outcomes positively.', '2022-09-20'),
('Michael', 'Person 9', 'michael9@example.com', 'http://linkedin.com/in/michael9', 'http://example.com/headshots/9.jpg', 'michael9#0009', 'Security specialist with extensive experience in network security and threat analysis, dedicated to safeguarding digital environments.', '2022-10-26'),
('Grace', 'Person 10', 'grace10@example.com', 'http://linkedin.com/in/grace10', 'http://example.com/headshots/10.jpg', 'grace10#0010', 'Digital media expert specializing in content creation, social media marketing, and brand consulting, bringing creativity to the forefront of digital campaigns.', '2022-12-05');


# Section 6
# Create peopleskills( id, skills_id, people_id, date_acquired )
# None of the fields can ba NULL. ID can be auto_increment.
    CREATE TABLE peopleskills (
    peopleskills_id INT NOT NULL AUTO_INCREMENT,
    skills_id INT NOT NULL,
    people_id INT NOT NULL,
    date_acquired DATE NOT NULL,
    PRIMARY KEY (peopleskills_id),
    FOREIGN KEY (skills_id) REFERENCES skills(skills_id),
    FOREIGN KEY (people_id) REFERENCES people(people_id)
);


# Section 7
# Populate peopleskills such that:
# Person 1 has skills 1,3,6;
# Person 2 has skills 3,4,5;
# Person 3 has skills 1,5;
# Person 4 has no skills;
# Person 5 has skills 3,6;
# Person 6 has skills 2,3,4;
# Person 7 has skills 3,5,6;
# Person 8 has skills 1,3,5,6;
# Person 9 has skills 2,5,6;
# Person 10 has skills 1,4,5;
# Note that no one has yet acquired skills 7 and 8.
INSERT INTO peopleskills (skills_id, people_id, date_acquired) VALUES
(1, 1, '2022-01-15'),
(3, 1, '2022-02-20'),
(6, 1, '2022-03-27'),

(3, 2, '2022-04-30'),
(4, 2, '2022-06-01'),
(5, 2, '2022-07-08'),

(1, 3, '2022-08-14'),
(5, 3, '2022-09-20'),

-- Person 4 has no skills

(3, 5, '2022-10-26'),
(6, 5, '2022-12-05'),

(2, 6, '2017-07-03'),
(3, 6, '2017-08-19'),
(4, 6, '2017-09-05'),

(3, 7, '2023-01-09'),
(5, 7, '2023-02-07'),
(6, 7, '2023-03-18'),

(1, 8, '2021-02-28'),
(3, 8, '2021-04-15'),
(5, 8, '2021-05-30'),
(6, 8, '2021-07-01'),

(2, 9, '2020-10-13'),
(5, 9, '2020-11-23'),
(6, 9, '2020-12-11'),

(1, 10, '2022-03-10'),
(4, 10, '2022-04-17'),
(5, 10, '2022-05-21');

 

# Section 8
# Create roles( id, name, sort_priority )
# sort_priority is an integer and is used to provide an order for sorting roles
CREATE TABLE roles (
    roles_id INT NOT NULL AUTO_INCREMENT,
    roles_name VARCHAR(255) NOT NULL,
    roles_sort_priority INT NOT NULL,
    PRIMARY KEY (roles_id)
);



# Section 9
# Populate roles
# Designer, Developer, Recruit, Team Lead, Boss, Mentor
# Sort priority is assigned numerically in the order listed above (Designer=10, Developer=20, Recruit=30, etc.)
INSERT INTO roles (roles_name, roles_sort_priority) VALUES
('Designer', 10),
('Developer', 20),
('Recruit', 30),
('Team Lead', 40),
('Boss', 50),
('Mentor', 60);


# Section 10
# Create peopleroles( id, people_id, role_id, date_assigned )
# None of the fields can be null.  ID can be auto_increment

CREATE TABLE peopleroles (
    peopleroles_id INT NOT NULL AUTO_INCREMENT,
    people_id INT NOT NULL,
    role_id INT NOT NULL,
    date_assigned DATE NOT NULL,
    PRIMARY KEY (peopleroles_id),
    FOREIGN KEY (people_id) REFERENCES people(people_id),
    FOREIGN KEY (role_id) REFERENCES roles(roles_id)
);



# Section 11
# Populate peopleroles
# Person 1 is Developer 
# Person 2 is Boss, Mentor
# Person 3 is Developer and Team Lead
# Person 4 is Recruit
# person 5 is Recruit
# Person 6 is Developer and Designer
# Person 7 is Designer
# Person 8 is Designer and Team Lead
# Person 9 is Developer
# Person 10 is Developer and Designer

(1, 1, CURDATE()), -- Person 1 is a Developer
(2, 2, CURDATE()), -- Person 2 is a Boss
(2, 3, CURDATE()), -- Person 2 is also a Mentor
(3, 4, CURDATE()), -- Person 3 is a Developer
(3, 5, CURDATE()), -- Person 3 is also a Team Lead
(4, 6, CURDATE()), -- Person 4 is a Recruit
(5, 7, CURDATE()), -- Person 5 is a Recruit
(6, 8, CURDATE()), -- Person 6 is a Developer
(6, 1, CURDATE()), -- Person 6 is also a Designer
(7, 9, CURDATE()), -- Person 7 is a Designer
(8, 10, CURDATE()), -- Person 8 is a Designer
(8, 11, CURDATE()), -- Person 8 is also a Team Lead
(9, 12, CURDATE()), -- Person 9 is a Developer
(10, 13, CURDATE()), -- Person 10 is a Developer
(10, 1, CURDATE()); -- Person 10 is also a Designer


