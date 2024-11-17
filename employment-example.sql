CREATE DATABASE `lightcast_data`;
USE `lightcast_data`;

    CREATE TABLE jobs (
        job_id INTEGER PRIMARY KEY,
        title TEXT,
        employment_type TEXT,
        min_experience INTEGER,
        max_experience INTEGER,
        salary_from REAL,
        salary_to REAL
    );
    

    CREATE TABLE companies (
        company_id INTEGER PRIMARY KEY,
        company_name TEXT,
        is_staffing BOOLEAN
    );
    

    CREATE TABLE locations (
        location_id INTEGER PRIMARY KEY,
        city TEXT,
        state TEXT,
        postal_code TEXT
    );
    

    CREATE TABLE skills (
        skill_id INTEGER PRIMARY KEY,
        skill_name TEXT
    );
    

    CREATE TABLE job_skills (
        job_id INTEGER,
        skill_id INTEGER,
        PRIMARY KEY (job_id, skill_id),
        FOREIGN KEY (job_id) REFERENCES jobs (job_id),
        FOREIGN KEY (skill_id) REFERENCES skills (skill_id)
    );
    

    CREATE TABLE job_postings (
        posting_id INTEGER PRIMARY KEY,
        job_id INTEGER,
        company_id INTEGER,
        location_id INTEGER,
        post_date DATE,
        expire_date DATE,
        FOREIGN KEY (job_id) REFERENCES jobs (job_id),
        FOREIGN KEY (company_id) REFERENCES companies (company_id),
        FOREIGN KEY (location_id) REFERENCES locations (location_id)
    );

-- Insert data into the `jobs` table
INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to)
VALUES
    (1, 'Data Scientist', 'Full-Time', 2, 5, 80000, 120000),
    (2, 'Software Engineer', 'Full-Time', 3, 7, 90000, 150000),
    (3, 'Product Manager', 'Full-Time', 5, 10, 100000, 160000),
    (4, 'Marketing Specialist', 'Part-Time', 1, 3, 40000, 60000),
    (5, 'Machine Learning Engineer', 'Full-Time', 3, 6, 95000, 135000),
    (6, 'Front-End Developer', 'Contract', 2, 5, 70000, 90000),
    (7, 'Technical Support Engineer', 'Full-Time', 1, 4, 50000, 80000),
    (8, 'Data Analyst', 'Full-Time', 2, 5, 70000, 95000),
    (9, 'DevOps Engineer', 'Full-Time', 4, 8, 95000, 140000),
    (10, 'UI/UX Designer', 'Part-Time', 1, 3, 50000, 75000);

-- Insert data into the `companies` table
INSERT INTO companies (company_id, company_name, is_staffing)
VALUES
    (1, 'Google', FALSE),
    (2, 'Amazon', FALSE),
    (3, 'Microsoft', FALSE),
    (4, 'Facebook', FALSE),
    (5, 'Tesla', FALSE),
    (6, 'IBM', FALSE),
    (7, 'Adobe', FALSE),
    (8, 'Intel', FALSE),
    (9, 'Netflix', FALSE),
    (10, 'Salesforce', FALSE);

-- Insert data into the `locations` table
INSERT INTO locations (location_id, city, state, postal_code)
VALUES
    (1, 'San Francisco', 'CA', '94103'),
    (2, 'New York', 'NY', '10001'),
    (3, 'Seattle', 'WA', '98101'),
    (4, 'Boston', 'MA', '02110'),
    (5, 'Austin', 'TX', '73301'),
    (6, 'Chicago', 'IL', '60601'),
    (7, 'Denver', 'CO', '80202'),
    (8, 'Atlanta', 'GA', '30301'),
    (9, 'Los Angeles', 'CA', '90001'),
    (10, 'Miami', 'FL', '33101');

-- Insert data into the `skills` table
INSERT INTO skills (skill_id, skill_name)
VALUES
    (1, 'Python (Programming Language)'),
    (2, 'Machine Learning'),
    (3, 'Data Analysis'),
    (4, 'Project Management'),
    (5, 'JavaScript (Programming Language)'),
    (6, 'Cloud Computing'),
    (7, 'Leadership'),
    (8, 'Problem Solving'),
    (9, 'SQL (Programming Language)'),
    (10, 'Communication');

-- Insert data into the `job_skills` table
INSERT INTO job_skills (job_id, skill_id)
VALUES
    (1, 1), (1, 2), (1, 3), -- Data Scientist skills
    (2, 1), (2, 5), (2, 9), -- Software Engineer skills
    (3, 4), (3, 7),         -- Product Manager skills
    (4, 3), (4, 10),        -- Marketing Specialist skills
    (5, 1), (5, 2),         -- Machine Learning Engineer skills
    (6, 5), (6, 8),         -- Front-End Developer skills
    (7, 8), (7, 10),        -- Technical Support Engineer skills
    (8, 3), (8, 9),         -- Data Analyst skills
    (9, 2), (9, 6),         -- DevOps Engineer skills
    (10, 5), (10, 10);      -- UI/UX Designer skills

-- Insert data into the `job_postings` table
INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date)
VALUES
    (1, 1, 1, 1, '2024-01-01', '2024-01-31'),
    (2, 2, 2, 3, '2024-01-10', '2024-02-10'),
    (3, 3, 3, 4, '2024-01-15', '2024-02-15'),
    (4, 4, 4, 2, '2024-01-20', '2024-02-20'),
    (5, 5, 5, 6, '2024-01-25', '2024-02-25'),
    (6, 6, 6, 5, '2024-01-30', '2024-02-28'),
    (7, 7, 7, 7, '2024-02-01', '2024-03-01'),
    (8, 8, 8, 8, '2024-02-05', '2024-03-05'),
    (9, 9, 9, 9, '2024-02-10', '2024-03-10'),
    (10, 10, 10, 10, '2024-02-15', '2024-03-15');
