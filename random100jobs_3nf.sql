
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
    


        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (0, 'ET8C3862714E338DDD', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (0, 'Tiktok', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (0, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (95334, '[
  "General Data Protection Regulation (GDPR)",
  "Security Engineering",
  "Prioritization",
  "Courage",
  "Auditing",
  "Data Architecture",
  "Finance",
  "Leadership",
  "Security Controls",
  "Risk Analysis",
  "Enterprise Security",
  "Performance Systems Analysis",
  "Business Requirements",
  "Marketing",
  "Writing",
  "Advising",
  "Data Discovery",
  "Sales",
  "Information Privacy",
  "Teaching",
  "TikTok"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (0, 95334);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (0, 0, 0, 0, '2024-05-25', '2024-07-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (1, 'ETAE5A02CCB7D8FDB3', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (1, 'Takeda Pharmaceutical Company', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (1, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97764, '[
  "Value Creation",
  "Lifecycle Management",
  "Customer Service",
  "Research",
  "Management",
  "Statistical Software",
  "Qualitative Data Analysis",
  "Qualitative Research",
  "Vendor Management",
  "Microsoft Access",
  "Influencing Skills",
  "Data Science",
  "Behavioral Science",
  "Communication",
  "Organizational Change Management",
  "Organizational Leadership",
  "SAFe Agile",
  "Interpersonal Communications",
  "Finance",
  "Landscaping",
  "Governance",
  "Python (Programming Language)",
  "Leadership",
  "Data Quality",
  "Collaboration",
  "Landscape Design",
  "Scrum (Software Development)",
  "Stakeholder Management",
  "Enterprise Desktop Administrator (Microsoft Certified IT Professional)",
  "Dynamic Data",
  "Data Lakes",
  "Google Workspace",
  "SQL (Programming Language)",
  "Scalability",
  "Relationship Management",
  "Data-Driven Decision Making",
  "SAS (Software)",
  "Microsoft Excel",
  "Stewardship",
  "SPSS (Statistical Software)",
  "Technology Ecosystems",
  "Data Domain",
  "Environmental Social And Corporate Governance (ESG)",
  "Data Governance",
  "Program Management",
  "Business Development",
  "Artificial Intelligence",
  "Strategic Roadmaps",
  "Innovation",
  "Advanced Analytics",
  "Data Analysis",
  "Auditing",
  "Data Strategy",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (1, 97764);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (1, 1, 1, 1, '2024-07-16', '2024-07-31');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (2, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, 70000, 115000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (2, 'Consolidated Communications', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (2, 'Boise, ID', 'Idaho', '16001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (73218, '[
  "Power BI",
  "Business Reporting",
  "Prioritization",
  "Writing",
  "Information Technology",
  "Communication",
  "Presentations",
  "Business Analytics",
  "Key Performance Indicators (KPIs)",
  "Business Liaison",
  "Influencing Skills",
  "Data Reporting",
  "Data Warehousing",
  "Data Management",
  "Business Process",
  "Oracle Databases",
  "Python (Programming Language)",
  "Ad Hoc Analysis",
  "Professionalism",
  "Leadership",
  "Data Quality",
  "Positivity",
  "Call Center Experience",
  "Visual Basic For Applications",
  "Critical Thinking",
  "Project Management",
  "Operations",
  "Detail Oriented",
  "Data Analysis",
  "Alteryx",
  "SQL (Programming Language)",
  "Ability To Meet Deadlines",
  "Project Scoping",
  "Microsoft Excel",
  "SAS (Software)",
  "Data Pipelines",
  "Willingness To Learn",
  "Business Software",
  "Extract Transform Load (ETL)",
  "Customer Analytics",
  "Process Improvement",
  "JavaScript (Programming Language)",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "Meeting Facilitation",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (2, 73218);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (2, 2, 2, 2, '2024-08-15', '2024-09-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (3, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 1, 
        1, 58968, 61968);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (3, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (3, 'Austin, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (16437, '[
  "Programming Languages",
  "Research",
  "Business Analytics",
  "Management Information Systems",
  "Microsoft Visual Studio",
  "Problem Solving",
  "Self-Motivation",
  "Data Science",
  "Finance",
  "Communication",
  "Python (Programming Language)",
  "Business Intelligence Tools",
  "Mathematics",
  "Data Analysis",
  "Statistics",
  "Policy Development",
  "SQL (Programming Language)",
  "Scripting",
  "Quality Assurance",
  "SPSS (Statistical Software)",
  "Detail Oriented",
  "Economics",
  "Accounting",
  "Data Entry",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (3, 16437);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (3, 3, 3, 3, '2024-06-18', '2024-07-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (4, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (4, 'Moorecroft Systems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (4, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (47389, '[
  "Data Compilation",
  "Airtable",
  "Dashboard",
  "Data Analysis",
  "SQL (Programming Language)",
  "Business Intelligence",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (4, 47389);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (4, 4, 4, 4, '2024-05-02', '2024-07-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (5, 'ET9C054BF2F0CBC304', 'Full-time (> 32 hours)', 7, 
        7, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (5, 'Sierra Business Solution', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (5, 'Sacramento, CA', 'California', '6067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (45613, '[
  "Code Review",
  "Development Environment",
  "Feasibility Studies",
  "SAP Applications",
  "Project Scoping",
  "Quality Assurance"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (5, 45613);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (5, 5, 5, 5, '2024-08-26', '2024-09-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (6, 'ET225F42CAC4F13FF4', 'Full-time (> 32 hours)', NULL, 
        NULL, 35360, 41600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (6, 'Click 'N Close Title Company', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (6, 'Addison, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (17217, '[
  "Power BI",
  "MySQL",
  "Management",
  "Mortgage Loans",
  "Report Writing",
  "Advanced Mathematics",
  "Analytical Skills",
  "English Language",
  "Data Analysis",
  "Communication",
  "Leadership",
  "Data Quality",
  "Information Management",
  "Statistics",
  "Database Management Systems",
  "Forecasting",
  "Detail Oriented",
  "Statistical Packages",
  "SQL (Programming Language)",
  "Data Collection",
  "Microsoft Excel",
  "SAS (Software)",
  "Ad Hoc Reporting",
  "Verbal Communication Skills",
  "SPSS (Statistical Software)",
  "Economics",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (6, 17217);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (6, 6, 6, 6, '2024-07-23', '2024-09-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (7, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 10, 
        10, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (7, 'CDW', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (7, '[Unknown City], IL', 'Illinois', '17999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (3448, '[
  "Management",
  "Security Clearance",
  "Requirements Elicitation",
  "Interpersonal Communications",
  "DoDAF",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Strategic Roadmaps",
  "Governance",
  "Presentations",
  "Templates",
  "Strategic Planning",
  "The Open Group Architecture Framework (TOGAF)",
  "Microsoft Visio",
  "Writing",
  "Scalability"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (7, 3448);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (7, 7, 7, 7, '2024-08-12', '2024-10-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (8, 'ET078B5B5F1C5F4E6C', 'Full-time (> 32 hours)', 9, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (8, 'Concentrix', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (8, 'Columbia, SC', 'South Carolina', '45063');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (29206, '[
  "Relational Databases",
  "Code Review",
  "Java Platform Enterprise Edition (J2EE)",
  "TypeScript",
  "JavaScript (Programming Language)",
  "Object-Oriented Programming (OOP)",
  "Office Equipment",
  "Information Technology",
  "Server-Side",
  "User Interface (UI)",
  "Planning",
  "Spring Framework",
  "Microservices",
  "Build Management",
  "Software Design Patterns",
  "Debugging",
  "Extensible Markup Language (XML)",
  "Apache Kafka",
  "Coordinating",
  "PostgreSQL",
  "React.js (Javascript Library)",
  "Git (Version Control System)",
  "Linux",
  "Service-Oriented Architecture",
  "RxJS",
  "Agile Methodology",
  "Apache Maven",
  "Angular (Web Framework)",
  "Software Quality (SQA/SQC)",
  "Back End (Software Engineering)",
  "Java (Programming Language)",
  "RESTful API",
  "Web Services",
  "Hibernate (Java)",
  "Node.js (Javascript Library)",
  "Python (Programming Language)",
  "Troubleshooting (Problem Solving)",
  "Java Platform Standard Edition (J2SE)",
  "Unit Testing",
  "Object-Relational Mapping",
  "Bash (Scripting Language)",
  "Computer Science",
  "Version Control",
  "Software Development",
  "Software Development Life Cycle"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (8, 29206);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (8, 8, 8, 8, '2024-08-01', '2024-08-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (9, 'ET12141776AA4633EF', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (9, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (9, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (21076, '[
  "Effective Communication",
  "Power BI",
  "Programming Languages",
  "Statistical Analysis",
  "Data Science",
  "Interpersonal Communications",
  "Python (Programming Language)",
  "Data Analysis",
  "Statistics",
  "Project Management",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Economics",
  "Problem Solving",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (9, 21076);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (9, 9, 9, 9, '2024-09-12', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (10, 'ET21DDA63780A7DC09', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (10, 'Smx Corporation Limited', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (10, '[Unknown City], CA', 'California', '6999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (47631, '[
  "Procurement",
  "Financial Statements",
  "Oracle Business Intelligence (BI) / OBIA",
  "Oracle E-Business Suite",
  "PL/SQL",
  "Business Intelligence",
  "Oracle Fusion Middleware",
  "Project Accounting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (10, 47631);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (10, 10, 10, 10, '2024-05-31', '2024-07-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (11, 'ETF80298370B4DBA68', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (11, 'International Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (11, 'San Ramon, CA', 'California', '6013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (50148, '[
  "API Management",
  "Data Exchange",
  "Functional Requirement",
  "Application Programming Interface (API)",
  "Extensible Markup Language (XML)",
  "SAP Process Integration",
  "Communication",
  "Business Process",
  "SAP Applications",
  "RESTful API",
  "Web Services",
  "Problem Solving",
  "Middleware",
  "JSON",
  "Collaboration"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (11, 50148);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (11, 11, 11, 11, '2024-05-29', '2024-06-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (12, 'ETA6FC550E388A1B7C', 'Full-time (> 32 hours)', 5, 
        NULL, 78800, 108500);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (12, 'Humana', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (12, 'Indianapolis, IN', 'Indiana', '18097');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32982, '[
  "Wireless Communications",
  "Power BI",
  "Internet Services",
  "Research",
  "SQL Azure",
  "Microwaves",
  "Microsoft PowerPoint",
  "Finance",
  "Azure Synapse Analytics",
  "Vlookups",
  "Leadership",
  "Mathematics",
  "Digital Subscriber Line",
  "Data Analysis",
  "Statistics",
  "Business Requirements",
  "Business Intelligence",
  "Synapse Citrix",
  "Microsoft Excel",
  "Pivot Tables And Charts",
  "Process Improvement",
  "Economics",
  "Data Visualization",
  "SQL (Programming Language)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (12, 32982);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (12, 12, 12, 12, '2024-08-30', '2024-09-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (13, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', NULL, 
        NULL, 60944, 110323);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (13, 'Emory Healthcare', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (13, 'Atlanta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32996, '[
  "Inventory Staging",
  "Surveying",
  "Research",
  "Workflow Management",
  "Presentations",
  "Information Technology",
  "Communication",
  "Business Analytics",
  "Microsoft Access",
  "User Experience (UX)",
  "Coordinating",
  "Microsoft PowerPoint",
  "User Experience (UX) Design",
  "Usability",
  "Informatics",
  "Self Service Technologies",
  "Health Informatics",
  "UI/UX Research",
  "Innovation",
  "Dashboard",
  "Analytics",
  "Powerapps",
  "Large Language Modeling",
  "Data Analysis",
  "Business Intelligence",
  "Artificial Intelligence Systems",
  "Key Performance Indicators (KPIs)",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Power BI",
  "Problem Solving",
  "Sprint Retrospectives",
  "Quantitative Data Analysis",
  "Project Management",
  "Solution Architecture",
  "Continuous Monitoring",
  "Data Visualization",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (13, 32996);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (13, 13, 13, 13, '2024-05-10', '2024-05-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (14, 'ETCDB614B9159D72EC', 'Full-time (> 32 hours)', 3, 
        NULL, 145600, 145600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (14, 'Sedna Consulting Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (14, 'Jersey City, NJ', 'New Jersey', '34017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (8207, '[
  "Information Technology",
  "Interpersonal Communications",
  "Project Cost Management",
  "Revenue Recognition",
  "JD Edwards EnterpriseOne",
  "Billing",
  "Business Requirements",
  "Troubleshooting (Problem Solving)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (14, 8207);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (14, 14, 14, 14, '2024-05-01', '2024-05-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (15, 'ET9D618B17AA3048DA', 'Full-time (> 32 hours)', 6, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (15, 'Astrion', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (15, 'Hanscom Air Force Base, MA', 'Massachusetts', '25017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (53743, '[
  "OMG Certified SysML Professional",
  "Security Clearance",
  "Enovia (PLM Software)",
  "Systems Modeling Language",
  "Taxonomy",
  "Enterprise Architecture",
  "Computer Aided Three-Dimensional Interactive Application (CATIA)",
  "DoDAF",
  "Project Management Office (PMO)",
  "Middleware"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (15, 53743);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (15, 15, 15, 15, '2024-08-22', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (16, 'ET54C1C151F3D17B20', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (16, 'NavitsPartners', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (16, 'Berkeley, CA', 'California', '6001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (89005, '[
  "Procurement",
  "Management",
  "Oracle Cloud",
  "Application Programming Interface (API)",
  "Scenario Testing",
  "Agile Methodology",
  "Solution Design",
  "Functional Design",
  "Financial Close",
  "Cash Management",
  "Product Design",
  "Atlassian Confluence",
  "Business Analysis",
  "Technical Design",
  "Finance",
  "Business Process",
  "Project Cost Management",
  "Product Metrics",
  "Emerging Technologies",
  "DocuSign (Software)",
  "Information Systems",
  "Product Demonstration",
  "Applications Architecture",
  "Record to Report (R2R)",
  "Enterprise Architecture",
  "JIRA",
  "Data Mapping",
  "Billing",
  "Project Management",
  "Workflow Management",
  "Business Transformation",
  "Technology Solutions",
  "Fixed Asset",
  "Prototyping",
  "Scripting",
  "General Ledger",
  "Enterprise Resource Planning",
  "Exception Handling",
  "Business Intelligence",
  "Product Roadmaps",
  "Financial Systems",
  "Auditing",
  "Postman API Platform",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (16, 89005);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (16, 16, 16, 16, '2024-06-19', '2024-07-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (17, 'ETF71F082D7C98CD42', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (17, 'J.D. Power', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (17, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (28871, '[
  "Automotive Industry",
  "Microsoft PowerPoint",
  "Management",
  "Marketing Planning",
  "Microsoft Excel",
  "Data Manipulation",
  "Service Industries",
  "Predictive Analytics",
  "Big Data",
  "Biology",
  "Sales Reporting",
  "Sales Management",
  "Communication",
  "Leadership",
  "Mathematics",
  "Market Size",
  "Data Analysis",
  "Automotive Sales",
  "Statistics",
  "Go-to-Market Strategy",
  "Business Intelligence",
  "Application Level Gateways",
  "Dynamic Data",
  "Demand Planning",
  "SQL (Programming Language)",
  "Excel Macros",
  "Customer Success Management",
  "Consulting",
  "Sales",
  "Economics",
  "Accounting",
  "Artificial Intelligence",
  "Problem Solving",
  "Consumer Behaviour",
  "Data Visualization",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (17, 28871);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (17, 17, 17, 17, '2024-09-23', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (18, 'ET29C073C03D1F86B4', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (18, 'Tecolote Research', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (18, 'Melbourne, FL', 'Florida', '12009');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52354, '[
  "Mathematics",
  "Office Administration",
  "Communication",
  "Microsoft Teams",
  "Microsoft PowerPoint",
  "Finance",
  "Secret Clearance",
  "Microsoft Outlook",
  "Advanced Mathematics",
  "Strategic Communication",
  "Leadership",
  "Statistics",
  "Microsoft Office",
  "Strategic Planning",
  "Microsoft Visio",
  "Microsoft Excel",
  "Coordinating",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Verbal Communication Skills",
  "Program Management",
  "Accounting",
  "Business Economics",
  "Task Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (18, 52354);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (18, 18, 18, 18, '2024-06-28', '2024-08-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (19, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, 24960, 24960);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (19, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (19, 'Burleson, TX', 'Texas', '48251');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (46627, '[
  "Sales"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (19, 46627);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (19, 19, 19, 19, '2024-05-24', '2024-05-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (20, 'ET126E8A437DFF8C83', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (20, 'Resource Informatics Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (20, 'Detroit, MI', 'Michigan', '26163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (14729, '[
  "User Story",
  "Procurement",
  "Management",
  "Technical Writing",
  "Cutover Planning And Management",
  "Inventory Management",
  "Requirements Traceability",
  "Order To Cash Process",
  "Planning",
  "Agile Software Development",
  "Discrete Manufacturing",
  "Requirements Elicitation",
  "Test Execution Engine",
  "Spreadsheets",
  "Finance",
  "Business Systems Analysis",
  "Material Requirements Planning",
  "Business Process",
  "User Requirements Documents",
  "Process Integration",
  "Software Testing",
  "Supply Chain Management",
  "Test Planning",
  "Supply Chain",
  "SAP Applications",
  "Business Requirements",
  "Project Management",
  "Production Planning",
  "Data Migration",
  "Requirements Analysis",
  "Sales",
  "Enterprise Application Software",
  "Bill Of Materials",
  "SAP Production Planning",
  "Business Process Reengineering",
  "Warehouse Management",
  "Procure-To-Pay (PTP)",
  "SAP Material Management",
  "Computer Science",
  "Industrial Engineering"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (20, 14729);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (20, 20, 20, 20, '2024-05-07', '2024-05-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (21, 'ET28B606BB13A60E8C', 'Full-time (> 32 hours)', 5, 
        NULL, 115000, 140000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (21, 'Simventions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (21, 'Ruther Glen, VA', 'Virginia', '51033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (36778, '[
  "Software Design",
  "Presentations",
  "IAT Level II Certification",
  "Interpersonal Communications",
  "Secret Clearance",
  "Quick Learning",
  "Communication",
  "Systems Modeling Language",
  "Customer Support",
  "Model Based Systems Engineering",
  "Templates",
  "Cyber Security",
  "Functional Analysis",
  "HyperText Markup Language (HTML)",
  "Systems Design",
  "Relational Databases",
  "Systems Engineering"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (21, 36778);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (21, 21, 21, 21, '2024-09-05', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (22, 'ET5A8E3D6999AC17DD', 'Full-time (> 32 hours)', 8, 
        NULL, 131175, 218625);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (22, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (22, 'Pittsburgh, PA', 'Pennsylvania', '42003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79330, '[
  "Forecasting",
  "Oracle Cloud",
  "Account Reconciliation",
  "Corporate Reporting",
  "Agile Methodology",
  "Financial Close",
  "Planning",
  "Process Improvement",
  "Communication",
  "Microsoft Word",
  "Microsoft Office",
  "Oracle Hyperion Financial Management",
  "Software Deployment",
  "Microsoft PowerPoint",
  "Finance",
  "Consolidation",
  "Business Process",
  "Waterfall Methodology",
  "Microsoft Outlook",
  "Cloud Services",
  "Development Testing",
  "Innovation",
  "Presentations",
  "Calculations",
  "Budgeting",
  "Decision Making",
  "Sales Proposals",
  "Real Estate",
  "Financial Data",
  "Request For Proposal",
  "Business Requirements",
  "Prototyping",
  "Critical Thinking",
  "Project Management",
  "Operations",
  "Writing",
  "Oracle Hyperion",
  "Technology Solutions",
  "Financial Consolidations",
  "Microsoft Excel",
  "Data Transformation",
  "Technology Strategies",
  "NextGen Enterprise Practice Management",
  "Consulting",
  "Sales",
  "Quality Management",
  "Extract Transform Load (ETL)",
  "System Deployment",
  "Business Development",
  "Problem Solving",
  "Auditing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (22, 79330);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (22, 22, 22, 22, '2024-09-21', '2024-10-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (23, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, 80000, 145000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (23, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (23, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32164, '[
  "Debugging",
  "Data Modeling",
  "Safety Assurance",
  "Analytical Skills",
  "Data Management",
  "Git (Version Control System)",
  "Influencing Skills",
  "Python (Programming Language)",
  "Mentorship",
  "Leadership",
  "Reinforcement Learning",
  "Writing",
  "Data Analysis",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Data-Driven Decision Making",
  "Product Strategy",
  "Business Strategies",
  "Quantitative Analysis",
  "Problem Solving",
  "Teaching",
  "Inventory Distribution",
  "New Product Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (23, 32164);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (23, 23, 23, 23, '2024-06-17', '2024-07-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (24, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', 5, 
        NULL, 66206, 141294);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (24, 'Oracle', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (24, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (10501, '[
  "Customer Service",
  "Java Platform Enterprise Edition (J2EE)",
  "Functional Testing",
  "Customer Inquiries",
  "Customer Advocacy",
  "Sales Support",
  "Service-Oriented Architecture",
  "Technical Support",
  "Structured Query Language Procedural Language (SQL PL)",
  "Web Services",
  "Internet And Computing Core Certification",
  "SQL (Programming Language)",
  "Oracle Adf",
  "Functional Analysis",
  "Troubleshooting (Problem Solving)",
  "Server Configuration",
  "Web Servers",
  "Sales",
  "Relational Database Management Systems",
  "PL/SQL",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (24, 10501);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (24, 24, 24, 24, '2024-08-30', '2024-10-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (25, 'ETA48C55A0302E7CC6', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (25, 'Comcast', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (25, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79238, '[
  "Presentations",
  "Forecasting",
  "Information Technology",
  "Apache Hadoop",
  "Natural Language Processing (NLP)",
  "Exploratory Data Analysis",
  "Data Collection",
  "Data Science",
  "Business Metrics",
  "Data Management",
  "Business Priorities",
  "Big Data",
  "Business Process",
  "Self Service Technologies",
  "Mentorship",
  "A/B Testing",
  "Splunk",
  "Python (Programming Language)",
  "Upselling",
  "Economics",
  "Analytics",
  "Decision Making",
  "Mathematics",
  "Data Analysis",
  "Statistics",
  "Machine Learning",
  "Reporting Tools",
  "Business Intelligence",
  "Business Operations",
  "Amazon Web Services",
  "Business Strategies",
  "Teradata SQL",
  "Sales",
  "Statistical Hypothesis Testing",
  "People Management",
  "Data Visualization",
  "Balancing (Ledger/Billing)",
  "Surveys"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (25, 79238);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (25, 25, 25, 25, '2024-06-09', '2024-07-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (26, 'ET4276D9C44B5BE244', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (26, 'PricewaterhouseCoopers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (26, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (87604, '[
  "Effective Communication",
  "Management",
  "Coaching",
  "Oracle Cloud",
  "Budgeting",
  "Account Reconciliation",
  "Planning",
  "Cloud Services",
  "Cost Management",
  "Coordinating",
  "Microsoft Word",
  "Oracle Hyperion Financial Management",
  "Microsoft PowerPoint",
  "Data Management",
  "Finance",
  "Consolidation",
  "Oracle Hyperion Planning",
  "Leadership",
  "Calculations",
  "Data Integration",
  "Decision Making",
  "Teamwork",
  "Collections",
  "Ethical Standards And Conduct",
  "Enterprise Performance Management (EPM)",
  "Technological Change",
  "Billing",
  "Communication",
  "Performance Reporting",
  "Project Management",
  "Oracle Hyperion",
  "Workflow Management",
  "Microsoft Office",
  "Financial Consolidations",
  "Microsoft Excel",
  "NextGen Enterprise Practice Management",
  "Consulting",
  "Statutory Reporting",
  "Innovation",
  "Value Propositions",
  "Oracle Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (26, 87604);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (26, 26, 26, 26, '2024-06-05', '2024-08-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (27, 'ET9DA13810B3366E38', 'Full-time (> 32 hours)', NULL, 
        NULL, 33400, 55000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (27, 'S&P Global', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (27, 'Tallahassee, FL', 'Florida', '12073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58057, '[
  "Detail Oriented",
  "Auditing",
  "Management",
  "Amortization",
  "Loans",
  "Trend Analysis",
  "Reference Data",
  "Equities",
  "Data Analysis",
  "Loan Origination",
  "Financial Data",
  "Operations",
  "Proactivity",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Ad Hoc Reporting",
  "Quality Assurance",
  "International Finance",
  "Willingness To Learn"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (27, 58057);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (27, 27, 27, 27, '2024-07-19', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (28, 'ET8A9F101FDE5E1BB8', 'Part-time (≤ 32 hours)', 3, 
        3, 150000, 195000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (28, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (28, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (28959, '[
  "Management",
  "Oracle Cloud",
  "Knowledge Transfer",
  "Technical Support",
  "Demand Planning"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (28, 28959);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (28, 28, 28, 28, '2024-07-29', '2024-08-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (29, 'ETF5C0A8836C95C8B6', 'Full-time (> 32 hours)', NULL, 
        NULL, 41600, 41600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (29, 'Health Research', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (29, 'Syracuse, NY', 'New York', '36067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (34810, '[
  "Research",
  "ArcGIS (GIS Software)",
  "GIS Mapping",
  "Epidemiology",
  "Data Management",
  "Biology",
  "Public Health",
  "Giardia",
  "Data Analysis",
  "Statistics",
  "Communication",
  "Investigation",
  "Geographic Information Systems",
  "SAS (Software)",
  "Communicable Diseases",
  "Microsoft Office",
  "Foodborne Illness"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (29, 34810);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (29, 29, 29, 29, '2024-05-11', '2024-05-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (30, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (30, 'Catalyst Corporate Federal Credit Union', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (30, 'Plano, TX', 'Texas', '48085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (55785, '[
  "Detail Oriented",
  "Power BI",
  "Workflow Management",
  "Management",
  "Agile Software Development",
  "Communication",
  "Automation",
  "Financial Analysis",
  "Finance",
  "Fixed Income",
  "Scrum (Software Development)",
  "Agile Methodology",
  "Information Systems",
  "Test Planning",
  "Mathematics",
  "Business Requirements",
  "Data Analysis",
  "Alteryx",
  "Quality Assurance",
  "Project Sponsorship",
  "Regression Testing",
  "Extract Transform Load (ETL)",
  "Cascading Style Sheets (CSS)",
  "Sprint Planning",
  "Problem Solving",
  "Data Visualization",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (30, 55785);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (30, 30, 30, 30, '2024-07-05', '2024-07-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (31, 'ET60D617B83DCEBBE6', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (31, 'Nestlé', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (31, '[Unknown City], IN', 'Indiana', '18999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (88275, '[
  "Human Resource Strategy",
  "MuleSoft",
  "Effective Communication",
  "Power BI",
  "Project Portfolio Management",
  "API Management",
  "ServiceNow",
  "Management",
  "General Data Protection Regulation (GDPR)",
  "DevSecOps",
  "Solution Architecture",
  "Enthusiasm",
  "Agile Methodology",
  "Microsoft Azure",
  "Planning",
  "Application Development",
  "Privacy Impact Assessments",
  "Automation",
  "SAP ERP",
  "English Language",
  "Robotic Process Automation",
  "IT Security",
  "Emerging Technologies",
  "Enterprise Architecture",
  "Software Design Documents",
  "Cooperation",
  "SAP SuccessFactors",
  "Request For Proposal",
  "SAP Applications",
  "Encryption",
  "Project Management",
  "Vendor Relationship Management",
  "Operations",
  "Application Security",
  "Systems Analysis",
  "Virtual Teams",
  "Quick Learning",
  "Single Sign-On (SSO)",
  "Self-Motivation",
  "Product Strategy",
  "Agile Projects",
  "Business Strategies",
  "Authentications",
  "DevOps",
  "Software Stress Testing",
  "Artificial Intelligence",
  "Problem Solving",
  "Systems Architecture",
  "OAuth",
  "Innovation",
  "Microsoft Power Automate",
  "SAP Business Suite",
  "Confluent",
  "Scalability",
  "Computer Science",
  "Disaster Recovery",
  "Information Privacy",
  "Network Architecture",
  "Curiosity"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (31, 88275);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (31, 31, 31, 31, '2024-07-24', '2024-09-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (32, 'ETB060BE48BBBAFE8F', 'Full-time (> 32 hours)', 2, 
        NULL, 55000, 65000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (32, 'University of Florida', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (32, 'Gainesville, FL', 'Florida', '12001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97314, '[
  "Power BI",
  "Educational Data Mining",
  "Algebra",
  "Research",
  "MySQL",
  "Information Technology",
  "Microsoft SQL Servers",
  "Statistical Software",
  "Data Reporting",
  "Data Literacy",
  "Data Science",
  "Communication",
  "Data Management",
  "Apache Superset",
  "Ability To Meet Deadlines",
  "Python (Programming Language)",
  "Dashboard",
  "Data Quality",
  "Data Analysis",
  "Statistics",
  "Operational Reporting",
  "Forecasting",
  "Project Management",
  "Business Intelligence",
  "Sustainable Systems",
  "Research Methodologies",
  "SQL (Programming Language)",
  "Extract Transform Load (ETL)",
  "Statistical Reporting",
  "Database Systems",
  "Policy Development",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (32, 97314);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (32, 32, 32, 32, '2024-08-08', '2024-10-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (33, 'ETFACFAAE2D4EB7BA9', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (33, 'MITRE Corporation', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (33, 'McLean, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33095, '[
  "Data Processing",
  "Data Science",
  "International Relations",
  "Python (Programming Language)",
  "Supply Chain",
  "Data Analysis",
  "Software Development",
  "Computer Programming",
  "Vulnerability",
  "Problem Solving",
  "Willingness To Learn"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (33, 33095);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (33, 33, 33, 33, '2024-09-19', '2024-10-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (34, 'ETD93E714DA3EF968D', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (34, 'Innosoul', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (34, 'Columbia, SC', 'South Carolina', '45063');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72550, '[
  "Research",
  "Information Technology",
  "Management",
  "Microsoft Project Servers",
  "Verbal Communication Skills",
  "Change Control",
  "Functional Specification",
  "Business Process",
  "Process Flow Diagrams",
  "Business Process Reengineering",
  "Requirements Management",
  "Communication",
  "Business Requirements",
  "Project Management",
  "Business Modeling",
  "Business Process Modeling",
  "Operations",
  "Data Analysis",
  "Microsoft Project",
  "Healthcare Industry Knowledge",
  "Medicaid",
  "Traceability",
  "Version Control"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (34, 72550);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (34, 34, 34, 34, '2024-05-29', '2024-06-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (35, 'ET55CE0A05A8A2FCF2', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (35, 'Hp Tech', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (35, 'San Jose, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (54106, '[
  "SAP S/4HANA",
  "Negotiation",
  "Vendor Relationship Management",
  "Procurement",
  "Management",
  "Purchasing",
  "Continuous Improvement Process",
  "Inventory Management",
  "Analytical Skills",
  "SAP Supplier Relationship Management (SAP SRM)",
  "Supply Chain Planning",
  "Materials Management",
  "Communication",
  "End-User Training And Support",
  "Strategic Procurement",
  "Procurement Management",
  "Supply Chain",
  "SAP Applications",
  "Audit Processes",
  "Operations",
  "Writing",
  "Troubleshooting (Problem Solving)",
  "Demand Forecasting",
  "System Optimization",
  "SAP Material Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (35, 54106);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (35, 35, 35, 35, '2024-09-11', '2024-09-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (36, 'ET595906A85D6498B7', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (36, 'Intergraph', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (36, 'Madison, AL', 'Alabama', '1089');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81296, '[
  "SQL Server Integration Services (SSIS)",
  "Financial Statements",
  "Business Systems",
  "Business Process",
  "Presentations",
  "ASP.NET",
  "End-User Training And Support",
  "Management Information Systems",
  "Microsoft Power Platform",
  "Writing",
  "SQL (Programming Language)",
  "C# (Programming Language)",
  "Scripting",
  "Self-Motivation",
  "Enterprise Resource Planning",
  "Consulting",
  "Customer Relationship Management",
  "Enterprise Application Software",
  "Microsoft Dynamics GP",
  "HyperText Markup Language (HTML)",
  "SQL Server Reporting Services",
  "Cascading Style Sheets (CSS)",
  "Financial Systems",
  "JavaScript (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (36, 81296);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (36, 36, 36, 36, '2024-08-21', '2024-10-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (37, 'ETD8276264B3AFE1D0', 'Full-time (> 32 hours)', 8, 
        NULL, 71200, 158200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (37, 'Oracle', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (37, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (57936, '[
  "Information Technology",
  "Case Management",
  "Security Clearance",
  "Rapport Building",
  "Self-Motivation",
  "Business Process",
  "Configuration Design",
  "Communication",
  "Internet And Computing Core Certification",
  "Workflow Management",
  "Consulting",
  "Higher Education",
  "Process Improvement",
  "Health Information Technology",
  "Security Policies"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (37, 57936);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (37, 37, 37, 37, '2024-09-10', '2024-10-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (38, 'ET8AEDEB1F4C3091D3', 'Full-time (> 32 hours)', 6, 
        NULL, 144600, 241000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (38, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (38, 'San Jose, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (8021, '[
  "Design Specifications",
  "Programming Languages",
  "Stakeholder Communications",
  "Business Process Automation",
  "Management",
  "C++ (Programming Language)",
  "IBM Maximo",
  "Performance Management",
  "Microsoft Word",
  "Requirements Elicitation",
  "Microsoft Teams",
  "Thought Leadership",
  "Mentorship",
  "Python (Programming Language)",
  "Leadership",
  "Electric Utility",
  "Test Planning",
  "Microsoft PowerPoint",
  "Asset Management",
  "Communication",
  "Microsoft SharePoint",
  "Critical Thinking",
  "Technology Solutions",
  "Microsoft OneNote",
  "Service-Oriented Architecture",
  "Web Applications",
  "Consulting",
  "Microsoft Excel",
  "Customer Service",
  "Geographic Information Systems",
  "Risk Analysis",
  "Renewable Energy",
  "Business Development",
  "Problem Solving",
  "Microsoft OneDrive",
  "Writing",
  "JavaScript (Programming Language)",
  "Customer Relationship Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (38, 8021);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (38, 38, 38, 38, '2024-06-02', '2024-07-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (39, 'ET707E25DD53AC062E', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (39, 'Stellent It Llc', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (39, 'Richmond, VA', 'Virginia', '51087');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (83789, '[
  "Management",
  "Order Management",
  "Order Management Systems",
  "Agile Methodology",
  "Cash Management",
  "Communication",
  "Oracle Databases",
  "Collections",
  "Payment Systems",
  "Billing",
  "Technical Recruitment",
  "Oracle E-Business Suite",
  "Accounts Receivable"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (39, 83789);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (39, 39, 39, 39, '2024-07-16', '2024-07-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (40, 'ET643D938D45ED6673', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (40, 'PricewaterhouseCoopers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (40, 'Raleigh, NC', 'North Carolina', '37183');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (66094, '[
  "Presentations",
  "Telecommunications",
  "Management",
  "Coaching",
  "Oracle Cloud",
  "Order To Cash Process",
  "Planning",
  "Intelligent Automation",
  "Supply Chain Management",
  "Finance",
  "Business Process",
  "Thought Leadership",
  "Mentorship",
  "Leadership",
  "Human Capital Management (HCM)",
  "Ethical Standards And Conduct",
  "Communication",
  "Operations",
  "Consulting",
  "Relationship Building",
  "Economics",
  "Artificial Intelligence",
  "Balancing (Ledger/Billing)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (40, 66094);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (40, 40, 40, 40, '2024-05-26', '2024-07-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (41, 'ET1930A9AE585111DD', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (41, 'Amtex System', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (41, '[Unknown City], NY', 'New York', '36999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12738, '[
  "Financial Statements",
  "Process Design",
  "SAP Applications",
  "Financial Close"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (41, 12738);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (41, 41, 41, 41, '2024-08-08', '2024-09-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (42, 'ETDD0D252EE69FF146', 'Full-time (> 32 hours)', 4, 
        4, 83600, 155000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (42, 'Centene', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (42, '[Unknown City], CA', 'California', '6999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (16309, '[
  "Internal Controls",
  "Certified In Risk And Information Systems Control",
  "Certified Information System Auditor (CISA)",
  "Presentations",
  "Management",
  "Key Performance Indicators (KPIs)",
  "Data Collection",
  "Analytical Skills",
  "Auditing",
  "Control Deficiency Management",
  "Communication",
  "Decision Making",
  "Data Analysis",
  "Program Process Monitoring",
  "Project Management",
  "Risk Management",
  "Stakeholder Management",
  "Microsoft Project",
  "Technology Solutions",
  "Certified Information Systems Security Professional",
  "Microsoft Visio",
  "Microsoft Office",
  "Vulnerability"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (42, 16309);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (42, 42, 42, 42, '2024-09-08', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (43, 'ETB87919E9499BE27D', 'Full-time (> 32 hours)', 7, 
        7, 113000, 169000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (43, 'Freddie Mac', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (43, 'McLean, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (66736, '[
  "Relational Databases",
  "Proactivity",
  "Enterprise Resource Planning",
  "Forecasting",
  "Financial Statements",
  "Information Technology",
  "Management",
  "Business Analytics",
  "Continuous Improvement Process",
  "Tooling Design",
  "Agile Methodology",
  "Financial Acumen",
  "Business Acumen",
  "Workday (Software)",
  "Data Architecture",
  "IBM Cognos Business Intelligence",
  "Business Process",
  "Systems Development Life Cycle",
  "Python (Programming Language)",
  "Data Warehousing",
  "Data-Driven Decision Making",
  "Dashboard",
  "Leadership",
  "Budgeting",
  "Investment Decisions",
  "JIRA",
  "Financial Data",
  "Business Requirements",
  "Management Information Systems",
  "Business Intelligence",
  "Detail Oriented",
  "Oracle Smart View",
  "Hyperion Smartview",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Project Management",
  "Growth Mindedness",
  "Oracle Hyperion",
  "Financial Systems",
  "Industry Standards",
  "Data Analysis",
  "Executive Presence",
  "Collaboration",
  "Investment Management",
  "Tableau (Business Intelligence Software)",
  "Agile Software Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (43, 66736);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (43, 43, 43, 43, '2024-06-25', '2024-08-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (44, 'ET6F68F8E7C946DFFF', 'Full-time (> 32 hours)', 12, 
        NULL, 187200, 187200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (44, 'Ait Global', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (44, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (86130, '[
  "Workflow Management",
  "ServiceNow",
  "Design Specifications",
  "Continuous Improvement Process",
  "Solution Design",
  "Extensible Markup Language (XML)",
  "Dataflow",
  "Business Process",
  "Certified Scrum Master",
  "Governance",
  "Leadership",
  "Technical Leadership",
  "Configuration Management Databases",
  "Enterprise Architecture",
  "IT Service Management",
  "Business Requirements",
  "Interoperability",
  "Web Services",
  "Scalability",
  "Technical Documentation",
  "Information Technology Infrastructure Library",
  "Enterprise Application Software",
  "Process Improvement",
  "HyperText Markup Language (HTML)",
  "Innovation",
  "JavaScript (Programming Language)",
  "Regulatory Requirements",
  "Architectural Design"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (44, 86130);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (44, 44, 44, 44, '2024-05-23', '2024-07-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (45, 'ET5B7EB96C2FD86A69', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (45, 'Syms Strategic Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (45, 'Scottsdale, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41340, '[
  "Information Technology",
  "Management",
  "Electronic Engineering",
  "Access Network",
  "Security Clearance",
  "Systems Engineering",
  "Technical Leadership",
  "Architectural Design",
  "NIST Cybersecurity Framework (CSF)",
  "Security Requirements Analysis",
  "GIAC Security Essentials Certification (GSEC)",
  "Operations",
  "FedRAMP",
  "Risk Management Framework",
  "Certified Information Systems Security Professional",
  "Cyber Security",
  "GIAC Certifications",
  "Threat Management",
  "Computer Engineering",
  "Okta",
  "Vulnerability",
  "Computer Science",
  "Federal Information Security Management Act"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (45, 41340);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (45, 45, 45, 45, '2024-05-31', '2024-06-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (46, 'ETB0DC0B5F8AAEA3FD', 'Full-time (> 32 hours)', 14, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (46, 'Quadrant', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (46, 'Annapolis, MD', 'Maryland', '24003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (45886, '[
  "ServiceNow",
  "Analytical Skills",
  "Communication",
  "Standard Operating Procedure",
  "Structured Query Language Procedural Language (SQL PL)",
  "Problem Reporting",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Customer Relationship Management",
  "General Ledger",
  "Peripheral Devices",
  "Business Development",
  "Accounting",
  "Project Accounting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (46, 45886);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (46, 46, 46, 46, '2024-06-12', '2024-08-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (47, 'ET60D617B83DCEBBE6', 'Full-time (> 32 hours)', 10, 
        NULL, 145600, 153920);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (47, 'Flux Resources', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (47, 'Portland, OR', 'Oregon', '41051');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26590, '[
  "Systems Engineering",
  "Cloud Computing",
  "Mitigation",
  "Computer Networks",
  "Gap Analysis",
  "Data Centers",
  "Cisco Certified Network Associate",
  "Management",
  "Coaching",
  "Solution Architecture",
  "Microsoft Azure",
  "Cloud Strategy",
  "Influencing Skills",
  "Cloud Hosting",
  "Cloud Services",
  "Collaboration",
  "Project Management",
  "Interpersonal Communications",
  "IT Governance",
  "Hypervisor",
  "Mentorship",
  "Reference Architecture",
  "Communication",
  "IT Infrastructure",
  "Virtualization",
  "Wide Area Networks",
  "Leadership",
  "Technical Leadership",
  "Decision Making",
  "Risk Analysis",
  "Enterprise Architecture",
  "Active Directory",
  "The Open Group Architecture Framework (TOGAF)",
  "Payment Card Industry (PCI) Data Security Standards",
  "Requirements Engineering",
  "Technology Strategies",
  "ArchiMate",
  "Information Technology Infrastructure Library",
  "Cisco Certified Network Professional",
  "Control Objectives For Information And Related Technology (COBIT)",
  "ISO/IEC 27001",
  "Problem Solving",
  "Presentations",
  "IT Service Management",
  "Industry Standards",
  "ISO/IEC 20000",
  "Risk Management",
  "Teamwork",
  "Scalability",
  "Computer Science",
  "Zachman Framework",
  "Disaster Recovery",
  "Cisco Certified Internetwork Expert"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (47, 26590);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (47, 47, 47, 47, '2024-08-12', '2024-09-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (48, 'ET3A1C9071B19BFC15', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (48, 'BayCare', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (48, 'Tampa, FL', 'Florida', '12057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (30173, '[
  "Power BI",
  "Telecommuting",
  "Patient Safety",
  "Health Sciences",
  "Informatics",
  "Dashboard",
  "Leadership",
  "Decision Making",
  "Data Analysis",
  "Strategic Planning",
  "Critical Thinking",
  "Lean Certification",
  "Detail Oriented",
  "Process Improvement",
  "Six Sigma Green Belt",
  "Quality Improvement",
  "Tableau (Business Intelligence Software)",
  "Six Sigma Certification",
  "Information Privacy",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (48, 30173);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (48, 48, 48, 48, '2024-08-23', '2024-09-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (49, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        2, 70000, 80000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (49, 'Gryphon Environmental', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (49, '[Unknown City], MN', 'Minnesota', '27053');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (63557, '[
  "Power BI",
  "Microsoft SharePoint",
  "Research",
  "Management",
  "Data Modeling",
  "Application Programming Interface (API)",
  "Application Development",
  "Automation",
  "Communication",
  "Microsoft Teams",
  "Python (Programming Language)",
  "Information Management",
  "Data Analysis",
  "Interoperability",
  "Operations",
  "Writing",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Knowledge Management",
  "Pivot Tables And Charts",
  "Problem Solving",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (49, 63557);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (49, 49, 49, 49, '2024-09-23', '2024-10-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (50, 'ET371D0286EA9F079C', 'Full-time (> 32 hours)', 5, 
        NULL, 124800, 146120);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (50, 'Randstad', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (50, 'Spring, TX', 'Texas', '48339');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72714, '[
  "Prioritization",
  "SAP Sales And Distribution",
  "Development Environment",
  "Legacy System Migration Workbench",
  "Post-Production",
  "SAP Supply Chain Management (SCM)",
  "Supply Chain",
  "System Administration",
  "SAP Applications",
  "Business Requirements",
  "Change Requests",
  "Workflow Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (50, 72714);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (50, 50, 50, 50, '2024-08-12', '2024-08-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (51, 'ET5EB325F25EADC971', 'Full-time (> 32 hours)', 12, 
        NULL, 63200, 188600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (51, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (51, 'Detroit, MI', 'Michigan', '26163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97947, '[
  "SAP FI/CO",
  "SAP S/4HANA",
  "Management",
  "Digitization",
  "Corporate Finance",
  "Authorization (Computing)",
  "Finance",
  "Business Process",
  "Apache Maven",
  "Leadership",
  "Accounts Payable",
  "Supply Chain",
  "Technological Change",
  "Billing",
  "SAP Applications",
  "Integration Testing",
  "Accounts Receivable",
  "SAP FI",
  "General Ledger",
  "Consulting",
  "Accounting",
  "Value Propositions"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (51, 97947);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (51, 51, 51, 51, '2024-09-04', '2024-09-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (52, 'ET26C00F12E45D252B', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (52, 'Eli Lilly', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (52, 'Indianapolis, IN', 'Indiana', '18097');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (48375, '[
  "SAP NetWeaver Data Management",
  "Clinical Trials",
  "Planning",
  "Standard Cost Accounting",
  "Data Management",
  "Change Control",
  "Computer Engineering",
  "Data Governance",
  "Technical Services",
  "Innovation",
  "Standard Operating Procedure",
  "Deviation Investigations",
  "TrackWise",
  "American Production And Inventory Control Society (APICS) Certification",
  "Supply Chain",
  "Environment Health And Safety",
  "Supply Chain Integration",
  "Supply Chain Acumen",
  "SAP Applications",
  "Investigation",
  "Operations",
  "Data Analysis",
  "Troubleshooting (Problem Solving)",
  "Data Consistency",
  "Veeva",
  "Change Management",
  "Sales",
  "Process Improvement",
  "Business Planning",
  "Drug Development",
  "Data Maintenance"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (52, 48375);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (52, 52, 52, 52, '2024-07-17', '2024-09-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (53, 'ETF3EF3B2E03076D75', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (53, 'Amerit Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (53, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (16535, '[
  "Electronic Medical Record",
  "Detail Oriented",
  "Effective Communication",
  "IT Capacity Management",
  "Cloud Computing",
  "Azure Data Factory",
  "Research",
  "MySQL",
  "Amazon Elastic Compute Cloud",
  "AWS Networking",
  "Database Administration",
  "Forecasting",
  "ServiceNow",
  "SQL Server Integration Services (SSIS)",
  "Management",
  "C++ (Programming Language)",
  "Warehousing",
  "Agile Methodology",
  "Microsoft Azure",
  "Microsoft Access",
  "Transact-SQL",
  "Complex Problem Solving",
  "Backlogs",
  "Data Extraction",
  "Domain Knowledge",
  "Github",
  "Performance Tuning",
  "Data Science",
  "Data Warehousing",
  "Software Requirements Specification",
  "Interpersonal Communications",
  "Finance",
  "Ability To Meet Deadlines",
  "Query Performance",
  "Stored Procedure",
  "System Administration",
  "Communication",
  "Python (Programming Language)",
  "Leadership",
  "Microsoft SQL Servers",
  "Test Planning",
  "Operations Research",
  "Machine Learning",
  "Extract Transform Load (ETL)",
  "Technical Recruitment",
  "Java (Programming Language)",
  "Operations",
  "Data Migration",
  "SQL (Programming Language)",
  "Scalability",
  "Self-Motivation",
  "Amazon Web Services",
  "Project Planning",
  "Consulting",
  "AWS Glue",
  "Firewall",
  "Backup Devices",
  "User Provisioning",
  "Software Development",
  "Oracle SQL Developer",
  "Business Administration",
  "Relational Database Management Systems",
  "Task Management",
  "IBM InfoSphere DataStage",
  "Writing",
  "Database Management",
  "Windows PowerShell",
  "Amazon S3",
  "Design Modification",
  "Data Security",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (53, 16535);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (53, 53, 53, 53, '2024-07-11', '2024-07-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (54, 'ETCC4B79ED8368977F', 'Full-time (> 32 hours)', 3, 
        NULL, 83300, 145800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (54, 'KBR', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (54, 'Aurora, CO', 'Colorado', '8005');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (7621, '[
  "Mitigation",
  "Auditing",
  "Research",
  "Access Control List",
  "Information Assurance",
  "Media Management",
  "IAT Level II Certification",
  "Network Access Control",
  "Vulnerability Assessments",
  "Security Clearance",
  "Communication",
  "Automation",
  "Timelines",
  "Aurora (Operating System)",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "IT Security",
  "Emerging Technologies",
  "Enterprise Architecture",
  "Network Security",
  "Incident Reporting",
  "Investigation",
  "Project Management",
  "Computer Networks",
  "Risk Management Framework",
  "IT Security Documentation",
  "Information Systems Security",
  "Cyber Security",
  "Packaging And Labeling",
  "Coordinating",
  "Counter Intelligence Polygraph (CI Clearance)",
  "Compliance Auditing",
  "NIST 800",
  "Program Management",
  "Continuous Monitoring"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (54, 7621);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (54, 54, 54, 54, '2024-06-21', '2024-08-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (55, 'ET0F0DAE1988A27690', 'Full-time (> 32 hours)', 8, 
        NULL, 87823, 146372);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (55, 'M&T Bank', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (55, 'Bridgeport, CT', 'Connecticut', '9001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (96966, '[
  "Business Objectives",
  "Power BI",
  "Mitigation",
  "Presentations",
  "Management",
  "Communication",
  "Continuous Improvement Process",
  "Planning",
  "Internal Controls",
  "Analytical Skills",
  "Automation",
  "Internal Auditing",
  "Spreadsheets",
  "Governance",
  "Business Intelligence Tools",
  "Agile Project Management",
  "Risk Analytics",
  "Word Processing",
  "Business Intelligence",
  "Risk Management",
  "Ad Hoc Reporting",
  "External Auditing",
  "Enterprise Risk Management (ERM)",
  "Higher Education",
  "Visual Analytics",
  "Industry Standards",
  "Computer Literacy",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Risk Appetite"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (55, 96966);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (55, 55, 55, 55, '2024-09-05', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (56, 'ET643A9AD3F9764D72', 'Full-time (> 32 hours)', 10, 
        NULL, 131175, 218625);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (56, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (56, 'Indianapolis, IN', 'Indiana', '18097');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (95930, '[
  "Business Objectives",
  "Gap Analysis",
  "Microsoft PowerPoint",
  "Procurement",
  "Streamlining",
  "Management",
  "Oracle Cloud",
  "Order To Cash Process",
  "Functional Design",
  "Planning",
  "Training And Development",
  "Oracle iProcurement",
  "Communication",
  "Process Design",
  "Supply Chain Management",
  "Business Process",
  "Proposal Development",
  "Presentations",
  "Leadership",
  "Record to Report (R2R)",
  "Supply Chain",
  "Portfolio Management",
  "Pricing Strategies",
  "Creating Shareholder Value",
  "Business Requirements",
  "Prototyping",
  "Microsoft Visio",
  "Writing",
  "Business Operations",
  "Purchasing",
  "Organizational Skills",
  "Troubleshooting (Problem Solving)",
  "Enterprise Resource Planning",
  "Business Development",
  "Problem Solving",
  "Innovation",
  "Accounts Receivable",
  "Accounts Payable",
  "Procure-To-Pay (PTP)",
  "Scenario Design"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (56, 95930);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (56, 56, 56, 56, '2024-07-24', '2024-09-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (57, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 1, 
        1, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (57, 'Avocent', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (57, 'Westerville, OH', 'Ohio', '39041');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (34201, '[
  "Enterprise Resource Planning",
  "Power BI",
  "Data Analysis Expressions (DAX)",
  "Presentations",
  "Agile Methodology",
  "Microsoft Access",
  "Data Mining",
  "Proactivity",
  "Microsoft PowerPoint",
  "Data Management",
  "Ability To Meet Deadlines",
  "Electronic Data Interchange",
  "Scrum (Software Development)",
  "Market Analysis",
  "Market Data",
  "Systems Development Life Cycle",
  "Python (Programming Language)",
  "Microsoft Azure",
  "Dashboard",
  "Leadership",
  "Powerapps",
  "Data Quality",
  "Decision Making",
  "Microsoft Power Platform",
  "Visual Basic For Applications",
  "Marketing",
  "Self-Discipline",
  "Business Intelligence",
  "Strategic Prioritization",
  "Microsoft Excel",
  "Customer Service",
  "Ad Hoc Reporting",
  "Scripting",
  "Microsoft UI Automation",
  "Self-Motivation",
  "Verbal Communication Skills",
  "Sales",
  "Product Leadership",
  "Data Governance",
  "Problem Solving",
  "Robotic Process Automation",
  "Microsoft Power Automate",
  "Data Retrieval",
  "Data Analysis",
  "SQL (Programming Language)",
  "Teamwork",
  "Microsoft Certified Professional"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (57, 34201);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (57, 57, 57, 57, '2024-05-22', '2024-07-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (58, 'ETB7F51B196B9E4E8C', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (58, 'United Airlines', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (58, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (67159, '[
  "Group Dynamics",
  "Balanced Scorecard",
  "Microsoft PowerPoint",
  "Finance",
  "Computer Security Awareness Training",
  "Leadership",
  "Advocacy",
  "Resource Planning",
  "Data Analysis",
  "Project Management",
  "Operations",
  "Microsoft Excel",
  "Coordinating",
  "Microsoft Office",
  "Self-Motivation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (58, 67159);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (58, 58, 58, 58, '2024-09-04', '2024-09-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (59, 'ET6BC82897A98848D4', 'Full-time (> 32 hours)', 6, 
        NULL, 113325, 188875);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (59, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (59, 'Columbus, OH', 'Ohio', '39049');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32368, '[
  "Business Objectives",
  "Gap Analysis",
  "Microsoft PowerPoint",
  "Procurement",
  "Streamlining",
  "Management",
  "Oracle Cloud",
  "Order To Cash Process",
  "Functional Design",
  "Training And Development",
  "Oracle iProcurement",
  "Process Design",
  "Supply Chain Management",
  "Business Process",
  "Proposal Development",
  "Presentations",
  "Leadership",
  "Record to Report (R2R)",
  "Portfolio Management",
  "Pricing Strategies",
  "Business Requirements",
  "Prototyping",
  "Writing",
  "Business Operations",
  "Purchasing",
  "Troubleshooting (Problem Solving)",
  "Enterprise Resource Planning",
  "Business Development",
  "Problem Solving",
  "Innovation",
  "Accounts Receivable",
  "Accounts Payable",
  "Procure-To-Pay (PTP)",
  "Microsoft Visio",
  "Scenario Design"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (59, 32368);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (59, 59, 59, 59, '2024-08-26', '2024-10-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (60, 'ET99EC582519F1274E', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (60, 'Thoughtstorm Incorporated', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (60, 'Reston, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (27924, '[
  "JBoss EAP",
  "Enterprise Resource Planning",
  "Code Review",
  "Java Platform Enterprise Edition (J2EE)",
  "Microsoft SharePoint",
  "Workflow Management",
  "Oracle E-Business Suite",
  "Procurement",
  "SQL*Loader",
  "Management",
  "Functional Requirement",
  "Data Import/Export",
  "Order To Cash Process",
  "Agile Methodology",
  "Enterprise Application Software",
  "Mobile Application Development",
  "Atlassian Confluence",
  "Extensible Markup Language (XML)",
  "Self-Motivation",
  "Unix",
  "Verisign",
  "Automation",
  "Technical Design",
  "Git (Version Control System)",
  "Linux",
  "Full Life Cycle Implementation",
  "RESTful API",
  "Scrum (Software Development)",
  "Oracle Databases",
  "Stored Procedure",
  "Engineering Design Process",
  "Innovation",
  "Systems Development Life Cycle",
  "Python (Programming Language)",
  "Selenium (Software)",
  "Technical Support",
  "Apache Maven",
  "Software Engineering",
  "Continuous Integration",
  "Structured Query Language Procedural Language (SQL PL)",
  "Application Programming Interface (API)",
  "Record to Report (R2R)",
  "PL/SQL",
  "Positivity",
  "Supply Chain",
  "Apache Subversion",
  "JIRA",
  "Ansible",
  "Business Requirements",
  "Spring Framework",
  "Collaborative Software",
  "Web Services",
  "SQL (Programming Language)",
  "Requirements Analysis",
  "System Lifecycle",
  "Jenkins",
  "Simple Object Access Protocol (SOAP)",
  "Process Improvement",
  "Computing Platforms",
  "Prototyping",
  "Scripting",
  "Oracle Application Framework (OAF)",
  "Unix Shell",
  "Software As A Service (SaaS)",
  "DevOps",
  "Computer Programming",
  "Kanban Principles",
  "CI/CD",
  "JDeveloper",
  "Procure-To-Pay (PTP)",
  "Database Cursor",
  "Oracle Business Intelligence Enterprise Edition",
  "Computer Science",
  "Lean Manufacturing",
  "Peer-To-Peer"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (60, 27924);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (60, 60, 60, 60, '2024-05-14', '2024-05-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (61, 'ET2BE103DC4EBBC8F4', 'Full-time (> 32 hours)', NULL, 
        NULL, 52000, 62400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (61, 'Magic Spoon', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (61, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (17976, '[
  "Office Supply Management",
  "Detail Oriented",
  "Office Administration",
  "Merchandising",
  "Management",
  "Loading And Unloading",
  "Emergency Preparedness",
  "Google Sheets",
  "Prioritization",
  "Self-Motivation",
  "Building Management",
  "Microsoft Office",
  "Subcontracting",
  "Interpersonal Communications",
  "Communication",
  "Time Management",
  "Restaurant Operation",
  "Operations Management",
  "Office Management",
  "Google Workspace",
  "Microsoft Excel",
  "Coordinating",
  "Business Administration",
  "Problem Solving",
  "Conference Room Technology",
  "Calendar Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (61, 17976);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (61, 61, 61, 61, '2024-05-09', '2024-07-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (62, 'ETD276A62B53EC83FC', 'Full-time (> 32 hours)', 2, 
        NULL, 75067, 85467);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (62, 'Randstad', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (62, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (21369, '[
  "SQL Server Integration Services (SSIS)",
  "Data Management",
  "Data Cleansing",
  "Alteryx",
  "Data Migration",
  "SQL (Programming Language)",
  "Mathematics"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (62, 21369);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (62, 62, 62, 62, '2024-08-09', '2024-09-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (63, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        2, 114400, 135200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (63, 'Russell Tobin', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (63, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26430, '[
  "Detail Oriented",
  "Google Sheets",
  "Communication",
  "Advanced Mathematics",
  "Dashboard",
  "Data Analysis",
  "Statistics",
  "SQL (Programming Language)",
  "Physics",
  "Troubleshooting (Problem Solving)",
  "Willingness To Learn",
  "Economics",
  "Dealing With Ambiguity",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (63, 26430);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (63, 63, 63, 63, '2024-05-05', '2024-06-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (64, 'ET26FD5AC53160D4EB', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (64, 'Homesafe Alliance', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (64, '[Unknown City], KS', 'Kansas', '20999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (66183, '[
  "Detail Oriented",
  "Power BI",
  "Key Performance Indicators (KPIs)",
  "Prioritization",
  "Performance Management",
  "Analytical Skills",
  "Business Acumen",
  "Data Mining",
  "Microsoft Office",
  "Microsoft PowerPoint",
  "Dashboard",
  "Data Analysis",
  "Operations",
  "Strategic Analysis",
  "Microsoft Excel",
  "Corporate Data Management",
  "Process Improvement",
  "Quantitative Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (64, 66183);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (64, 64, 64, 64, '2024-05-20', '2024-06-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (65, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (65, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (65, 'Sarasota, FL', 'Florida', '12081');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (84041, '[
  "Dollies",
  "Furniture Cleaning",
  "Flatbed Truck Operation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (65, 84041);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (65, 65, 65, 65, '2024-05-18', '2024-05-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (66, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (66, 'Binky Patrol', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (66, 'Sterling, VA', 'Virginia', '51107');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (23153, '[
  "Court Systems"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (66, 23153);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (66, 66, 66, 66, '2024-07-26', '2024-09-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (67, 'ETD0AC09B62FBD1EDC', 'Full-time (> 32 hours)', 12, 
        NULL, 63200, 188600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (67, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (67, 'Broomfield, CO', 'Colorado', '8014');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (24505, '[
  "SAP S/4HANA",
  "Project Management Life Cycle",
  "Data Intelligence",
  "Digitization",
  "Agile Methodology",
  "Planning",
  "Automation",
  "Communication",
  "Requirements Elicitation",
  "Authorization (Computing)",
  "Technical Design",
  "Data Management",
  "Development Testing",
  "Apache Maven",
  "Leadership",
  "SAP BusinessObjects",
  "Technological Change",
  "SAP Applications",
  "Data Migration",
  "Design Thinking",
  "Consulting",
  "Extract Transform Load (ETL)",
  "Artificial Intelligence"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (67, 24505);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (67, 67, 67, 67, '2024-06-11', '2024-06-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (68, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 15, 
        NULL, 151994, 151994);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (68, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (68, 'Fairfax, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (59321, '[
  "Information Technology",
  "Security Clearance",
  "DoDAF",
  "Communication",
  "Electronic Warfare",
  "Nodes (Networking)",
  "Database Administration",
  "Enterprise Architecture",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Operational Data Store",
  "Systems Architecture",
  "Coordinating",
  "Microsoft Visio",
  "Quality Assurance",
  "Presentations",
  "Software Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (68, 59321);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (68, 68, 68, 68, '2024-09-03', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (69, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 41600, 54080);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (69, 'Nelnet', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (69, 'Warwick, RI', 'Rhode Island', '44003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (83789, '[
  "Salesforce",
  "Presentations",
  "Team Building",
  "Verbal Communication Skills",
  "Python (Programming Language)",
  "Data Extraction",
  "Strong Work Ethic",
  "Writing",
  "Data Analysis",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Customer Relationship Management",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (69, 83789);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (69, 69, 69, 69, '2024-05-31', '2024-07-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (70, 'ETE3CC2FB59D9F934F', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (70, 'Dartmouth College', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (70, 'Hanover, NH', 'New Hampshire', '33009');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41905, '[
  "Effective Communication",
  "Software Systems",
  "Information Technology",
  "Management",
  "Communication",
  "Continuous Improvement Process",
  "Systems Development Life Cycle",
  "Influencing Skills",
  "Mentorship",
  "Leadership",
  "Data Quality",
  "Marketing",
  "Project Management",
  "Writing",
  "Advising",
  "Relationship Management",
  "Information Synthesis",
  "Institutional Research",
  "Access Controls",
  "Consulting",
  "Higher Education",
  "Data Governance",
  "Cross-Functional Team Leadership",
  "Teaching",
  "Collaboration"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (70, 41905);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (70, 70, 70, 70, '2024-08-12', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (71, 'ET945E7DB783DB9A6F', 'Full-time (> 32 hours)', 1, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (71, '2020 Companies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (71, 'Plano, TX', 'Texas', '48085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (56425, '[
  "Wireless Communications",
  "Mathematics",
  "Code Division Multiple Access",
  "Relationship Building",
  "Leadership Development",
  "Circuit Design",
  "Spreadsheets",
  "Schema Markup",
  "Dashboard",
  "Technical Communication",
  "Employee Assistance Programs",
  "Leadership",
  "Decision Making",
  "Product Management",
  "Sustaining Engineering",
  "Writing",
  "Key Performance Indicators (KPIs)",
  "Data Analysis",
  "Software Technical Review",
  "Global System For Mobile Communications",
  "Statistical Process Controls",
  "Visual Acuity",
  "Quality Management",
  "Test Equipment",
  "Failure Mode And Effects Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (71, 56425);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (71, 71, 71, 71, '2024-07-31', '2024-10-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (72, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (72, 'Securitas', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (72, 'Reston, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (37092, '[
  "Enterprise Resource Planning",
  "Management",
  "Communication",
  "Planning",
  "SAP Concur (Travel And Invoice Software)",
  "Contract Lifecycle Management",
  "Consolidation",
  "C (Programming Language)",
  "Deltek Costpoint",
  "Digital Decoupling",
  "Sustaining Engineering",
  "SAP Applications",
  "Project Management",
  "Oracle E-Business Suite",
  "FedRAMP",
  "NextGen Enterprise Practice Management",
  "Amazon Web Services",
  "SQL (Programming Language)",
  "Claims And Litigation Management",
  "Enterprise Application Software",
  "Problem Solving",
  "Microsoft SQL Servers",
  "Time Management",
  "System Implementation",
  "Teamwork",
  "Systems Engineering"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (72, 37092);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (72, 72, 72, 72, '2024-08-09', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (73, 'ET5DCD43C3EAD1B95D', 'Full-time (> 32 hours)', 3, 
        NULL, 125000, 125000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (73, 'Bristol Bay Resource Investments', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (73, 'Fort Belvoir, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (31200, '[
  "Management",
  "Administrative Functions",
  "Crisis Prevention",
  "Business Process Improvement",
  "Communication",
  "Process Management",
  "Scheduling",
  "Secret Clearance",
  "Business Process",
  "Continuous Improvement Process",
  "Data Analysis",
  "Document Management",
  "Lean Six Sigma",
  "Administrative Support",
  "Automation",
  "Advising",
  "NextGen Enterprise Practice Management",
  "Consulting",
  "Project Management Office (PMO)",
  "Change Management",
  "Performance Improvement",
  "Business Administration",
  "Collaboration",
  "Risk Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (73, 31200);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (73, 73, 73, 73, '2024-08-05', '2024-10-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (74, 'ETCE5FEDBE9E3994B9', 'Full-time (> 32 hours)', 14, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (74, 'Wipro', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (74, 'Memphis, TN', 'Tennessee', '47157');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (20728, '[
  "Platform As A Service (PaaS)",
  "Spring Boot",
  "Microservices",
  "Agile Methodology",
  "Spring Cloud",
  "Microsoft Azure",
  "Cloud-Native Computing",
  "Docker (Software)",
  "Kubernetes",
  "Scrum (Software Development)",
  "Containerization",
  "Technical Leadership",
  "Angular (Web Framework)",
  "React.js (Javascript Library)",
  "Java (Programming Language)",
  "Java Enterprise Edition",
  "Front End Design",
  "Domain Driven Design",
  "Cloud Migration",
  "DevOps",
  "Software Development",
  "CI/CD"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (74, 20728);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (74, 74, 74, 74, '2024-08-21', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (75, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', 7, 
        NULL, 124000, 208000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (75, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (75, 'Horsham, PA', 'Pennsylvania', '42091');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (70214, '[
  "Gap Analysis",
  "Oracle Cloud",
  "Full Life Cycle Implementation",
  "Business Process",
  "Business Requirements",
  "Oracle Human Capital Management (HCM)",
  "Contract Review",
  "Human Capital",
  "Public Service",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (75, 70214);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (75, 75, 75, 75, '2024-05-12', '2024-05-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (76, 'ETCF6B31E4220E4F39', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (76, 'KPMG', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (76, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52295, '[
  "Auditing",
  "Research",
  "Financial Engineering",
  "Financial Statements",
  "C++ (Programming Language)",
  "Communication",
  "Presentations",
  "Technical Acumen",
  "Equity Derivative",
  "FINCAD (Software)",
  "Econometrics",
  "Fixed Income",
  "Market Value",
  "Microsoft PowerPoint",
  "Securities (Finance)",
  "Monte Carlo Methods",
  "Finance",
  "Microsoft Outlook",
  "Mentorship",
  "Equities",
  "Mergers And Acquisitions",
  "Python (Programming Language)",
  "Derivatives",
  "Lawsuits",
  "Interest Rates",
  "Applied Mathematics",
  "Visual Basic For Applications",
  "Critical Thinking",
  "Go-to-Market Strategy",
  "Microsoft Excel",
  "Deal Structuring",
  "Financial Instrument",
  "MATLAB",
  "HyperText Markup Language (HTML)",
  "Microsoft Office",
  "Mathematics",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (76, 52295);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (76, 76, 76, 76, '2024-06-03', '2024-06-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (77, 'ET93079B3900280AC7', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (77, 'Sunrun', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (77, 'Santa Fe, NM', 'New Mexico', '35049');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (28865, '[
  "Salesforce",
  "Workflow Management",
  "Order Management",
  "Order Management Systems",
  "Oracle Cloud",
  "Project Documentation",
  "Order To Cash Process",
  "Solution Design",
  "Planning",
  "Operational Efficiency",
  "Order Fulfillment",
  "Requirements Analysis",
  "Analytical Skills",
  "Communication",
  "Supply Chain Management",
  "Business Process",
  "Invoicing",
  "Warehouse Management Systems",
  "Business-To-Consumer",
  "Test Planning",
  "Business Requirements",
  "Project Management",
  "Oracle E-Business Suite",
  "Detail Oriented",
  "Scalability",
  "Purchasing",
  "Business To Business",
  "Enterprise Resource Planning",
  "Customer Relationship Management",
  "Order Entry",
  "Problem Solving",
  "Warehouse Management",
  "Product Lifecycle Management",
  "Procure-To-Pay (PTP)",
  "Teamwork",
  "Peer-To-Peer",
  "End-User Training And Support"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (77, 28865);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (77, 77, 77, 77, '2024-09-19', '2024-10-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (78, 'ET39954C7EF07FEB7F', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (78, 'Wellspan Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (78, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (24860, '[
  "Advanced Analytics",
  "Data Mining",
  "Data Science",
  "Algorithms",
  "Python (Programming Language)",
  "Statistics",
  "Health Information Technology",
  "Population Health",
  "Data Analysis",
  "SQL (Programming Language)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (78, 24860);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (78, 78, 78, 78, '2024-06-21', '2024-08-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (79, 'ET95DB859B53CCACA7', 'Full-time (> 32 hours)', 6, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (79, 'Syms Strategic Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (79, 'Fargo, ND', 'North Dakota', '38017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (14766, '[
  "Microsoft Access",
  "Process Improvement",
  "Security Clearance",
  "Communication",
  "Influencing Skills",
  "Informatics",
  "Algorithms",
  "Dashboard",
  "Leadership",
  "Data Analysis",
  "Forecasting",
  "Formal Learning",
  "Report Writing",
  "Organizational Skills",
  "Microsoft Excel",
  "Process Modeling",
  "Mathematics",
  "Project Stakeholders",
  "Data Visualization",
  "Business Strategies",
  "Business Process Modeling"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (79, 14766);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (79, 79, 79, 79, '2024-08-02', '2024-08-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (80, 'ET85BAEA823E31037A', 'Full-time (> 32 hours)', 12, 
        NULL, 161200, 399500);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (80, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (80, 'Pittsburgh, PA', 'Pennsylvania', '42003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60824, '[
  "Performance Management",
  "Digitization",
  "Planning",
  "Communication",
  "Authorization (Computing)",
  "Interpersonal Communications",
  "Meter Data Management",
  "Business Process",
  "Apache Maven",
  "Leadership",
  "Technological Change",
  "Billing",
  "Business Requirements",
  "Writing",
  "Customer Service",
  "Sales",
  "Business Development",
  "Artificial Intelligence",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (80, 60824);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (80, 80, 80, 80, '2024-07-19', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (81, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 62400, 83200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (81, 'Volt', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (81, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60, '[
  "Detail Oriented",
  "Workflow Management",
  "Microsoft Excel",
  "Acceptance Testing",
  "Customer Service",
  "Dashboard",
  "Data Analysis",
  "Statistics",
  "User Acceptance Testing (UAT)",
  "Writing",
  "Internal Communications",
  "Pivot Tables And Charts",
  "Vlookups",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "Surveys"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (81, 60);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (81, 81, 81, 81, '2024-08-16', '2024-09-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (82, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (82, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (82, 'Palo Alto, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (61437, '[
  "Business Process",
  "Intelligence Analysis",
  "Management Consulting",
  "Business Intelligence",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (82, 61437);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (82, 82, 82, 82, '2024-08-01', '2024-10-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (83, 'ET66E73608604D516B', 'Full-time (> 32 hours)', 5, 
        5, 96960, 145440);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (83, 'Citigroup', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (83, 'Tampa, FL', 'Florida', '12057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (56128, '[
  "Management",
  "Planning",
  "Domain Knowledge",
  "Development Environment",
  "Internal Auditing",
  "Business Process",
  "Innovation",
  "Ad Hoc Analysis",
  "Leadership",
  "Financial Risk",
  "Ethical Standards And Conduct",
  "Data Analysis",
  "Feasibility Studies",
  "Total Cost Of Ownership",
  "Project Management",
  "Business Intelligence",
  "Systems Analysis",
  "Coordinating",
  "Data Transformation",
  "Storyboarding",
  "Systems Design",
  "Industry Standards",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (83, 56128);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (83, 83, 83, 83, '2024-08-07', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (84, 'ET607BA62B20FCA3C8', 'Full-time (> 32 hours)', 4, 
        NULL, 47236, 74776);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (84, 'R1 RCM', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (84, 'Detroit, MI', 'Michigan', '26163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (73030, '[
  "Salesforce",
  "Detail Oriented",
  "Databricks",
  "Research",
  "SQL Server Integration Services (SSIS)",
  "Intellectual Curiosity",
  "Communication",
  "Project Management",
  "Product Engineering",
  "Operations Research",
  "Stakeholder Management",
  "Operations",
  "Data Lakes",
  "SQL (Programming Language)",
  "DataOps",
  "Data Pipelines",
  "Data Governance",
  "Sales",
  "Problem Solving",
  "Data Duplication Management",
  "Writing",
  "Collaboration"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (84, 73030);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (84, 84, 84, 84, '2024-09-24', '2024-10-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (85, 'ET8409BDA70B406EEA', 'Full-time (> 32 hours)', 4, 
        NULL, 81494, 128274);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (85, 'Intermountain Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (85, 'Charleston, WV', 'West Virginia', '54039');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (74712, '[
  "Customer Service",
  "Technical Acumen",
  "Computer Displays",
  "Management",
  "Agile Methodology",
  "Revenue Cycle Management",
  "Creative Thinking",
  "Finance",
  "Scheduling",
  "Data Analysis",
  "Innovation",
  "Spreadsheets",
  "Dashboard",
  "Leadership",
  "Information Systems",
  "Product Management",
  "Mathematics",
  "Statistics",
  "Customer Data Management",
  "Word Processing",
  "Interpersonal Communications",
  "Strategic Planning",
  "Scrum (Software Development)",
  "Population Health",
  "Operations",
  "SQL (Programming Language)",
  "Data Modeling",
  "Pediatrics",
  "Data Structures",
  "Economics",
  "Visual Storytelling",
  "Database Design",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (85, 74712);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (85, 85, 85, 85, '2024-09-10', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (86, 'ET1C2068AF1B1394F9', 'Full-time (> 32 hours)', NULL, 
        NULL, 45760, 52000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (86, 'Lincoln Financial Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (86, 'Harrisburg, PA', 'Pennsylvania', '42043');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (83354, '[
  "Management",
  "Coaching",
  "Prioritization",
  "Fundraising",
  "Data Science",
  "Communication",
  "Microsoft Office",
  "Microsoft PowerPoint",
  "Microsoft Outlook",
  "Mentorship",
  "Marketing",
  "Critical Thinking",
  "Detail Oriented",
  "Organizational Skills",
  "Microsoft Excel",
  "Relationship Management",
  "Multitasking",
  "Self-Motivation",
  "Sales",
  "Problem Solving",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (86, 83354);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (86, 86, 86, 86, '2024-09-27', '2024-10-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (87, 'ET2DA00AE52B5E36C7', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (87, 'Harvard University', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (87, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (37437, '[
  "Empirical Research",
  "Enthusiasm",
  "Proactivity",
  "Research",
  "Causal Inference",
  "Econometrics",
  "Debugging",
  "Epidemiology",
  "Data Science",
  "Oral Health",
  "Communication",
  "Data Management",
  "Quantitative Research",
  "Public Health",
  "Algorithms",
  "Python (Programming Language)",
  "Medicare",
  "Data Analysis",
  "Statistics",
  "Machine Learning",
  "Data Compilation",
  "Statistical Modeling",
  "SQL (Programming Language)",
  "Data Collection",
  "Technical Standard",
  "Health Policies",
  "Human Subject Research",
  "Medicaid",
  "Statistical Methods",
  "Economics",
  "Willingness To Learn",
  "Clinical Study Design",
  "Electronic Medical Record",
  "Statistical Programming",
  "Dentistry",
  "Computer Science",
  "Data Security",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (87, 37437);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (87, 87, 87, 87, '2024-09-28', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (88, 'ETFCA17F445B504FAD', 'Full-time (> 32 hours)', 5, 
        NULL, 120000, 120000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (88, 'Geopaq Logic', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (88, 'Santa Ana, CA', 'California', '6059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (55371, '[
  "BRFplus",
  "Dialog Programming",
  "SAP Warehouse Management",
  "Advanced Business Application Programming (ABAP)",
  "Data Dictionary",
  "Data Interfaces",
  "Business Development Company (BDC)",
  "Drilldown",
  "Communication",
  "Business Process",
  "Warehouse Management Systems",
  "Extensible Markup Language (XML)",
  "Multilingualism",
  "SAP Applications",
  "IDoc (Intermediate Document)",
  "Software Documentation",
  "Cello",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (88, 55371);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (88, 88, 88, 88, '2024-08-20', '2024-09-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (89, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 4, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (89, 'United Wholesale Mortgage', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (89, 'Pontiac, MI', 'Michigan', '26125');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (21581, '[
  "Effective Communication",
  "Power BI",
  "Quality Control",
  "Performance Tuning",
  "Data Mining",
  "Information Gathering",
  "Business Intelligence Reporting",
  "Communication",
  "Requirements Elicitation",
  "Business Process",
  "Leadership",
  "Mentorship",
  "Data Quality",
  "Looker Analytics",
  "Data Analysis",
  "Business Intelligence",
  "Scalability",
  "Data Modeling",
  "Project Implementation",
  "Data Structures",
  "Data Governance",
  "Team Leadership",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (89, 21581);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (89, 89, 89, 89, '2024-07-30', '2024-08-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (90, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', 5, 
        NULL, 113000, 188000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (90, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (90, 'Morristown, NJ', 'New Jersey', '34027');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (68942, '[
  "Vendor Relationship Management",
  "Gap Analysis",
  "Oracle Cloud",
  "Oracle Payroll Cloud Certification",
  "Full Life Cycle Implementation",
  "Business Process",
  "Leadership",
  "Business Requirements",
  "Oracle Human Capital Management (HCM)",
  "Human Capital",
  "Public Service",
  "Quality Assurance",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (90, 68942);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (90, 90, 90, 90, '2024-05-16', '2024-07-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (91, 'ET019BF9A529334777', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (91, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (91, 'Clearwater, FL', 'Florida', '12103');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (727, '[
  "Performance Analysis",
  "Research",
  "Spanish Language",
  "Management",
  "Communication",
  "Multitasking",
  "Statistical Modeling",
  "Python (Programming Language)",
  "Presentations",
  "Life Coaching",
  "Front Office",
  "Operations",
  "SQL (Programming Language)",
  "Organizational Skills",
  "Microsoft Office",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (91, 727);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (91, 91, 91, 91, '2024-05-05', '2024-05-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (92, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        3, 85000, 101000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (92, 'Jacobs Engineering Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (92, 'Honolulu, HI', 'Hawaii', '15003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (84136, '[
  "Communication",
  "Data Modeling",
  "Office Equipment",
  "Management",
  "Data Analysis",
  "Punctuality",
  "Data Mining",
  "Ability To Meet Deadlines",
  "English Language",
  "Typing",
  "Professionalism",
  "Decision Making",
  "Cooperation",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Quantitative Analysis",
  "Business Development",
  "Data Presentation",
  "Teamwork"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (92, 84136);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (92, 92, 92, 92, '2024-08-08', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (93, 'ETBCF2184B7D861878', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (93, 'Academy Sports', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (93, 'Katy, TX', 'Texas', '48157');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26984, '[
  "Merchandising",
  "Microsoft SharePoint",
  "Information Technology",
  "Solution Architecture",
  "Vendor Management",
  "Planning",
  "Microservices",
  "Dataflow",
  "Microsoft PowerPoint",
  "Usability",
  "Waterfall Methodology",
  "Algorithms",
  "Service-Oriented Architecture",
  "Agile Methodology",
  "Stochastic Modeling",
  "Data Integration",
  "Leadership",
  "Supply Chain Management",
  "Supply Chain",
  "Enterprise Architecture",
  "The Open Group Architecture Framework (TOGAF)",
  "CompTIA Network+",
  "Total Cost Of Ownership",
  "Hybrid Cloud Computing",
  "Operations",
  "Proactivity",
  "Microsoft Excel",
  "Self-Motivation",
  "Verbal Communication Skills",
  "Data Domain",
  "Microsoft Office",
  "Problem Solving",
  "Computer Engineering",
  "Service Level Objectives",
  "Systems Engineering",
  "Computer Science",
  "Zachman Framework"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (93, 26984);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (93, 93, 93, 93, '2024-06-14', '2024-08-31');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (94, 'ET0000000000000000', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (94, 'Diverse Lynx', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (94, 'Cambridge, MA', 'Massachusetts', '25017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52998, '[
  "American Society For Clinical Pathology (ASCP) Certification",
  "Collections",
  "Oracle E-Business Suite",
  "Process Manufacturing",
  "PL/SQL",
  "Supply Chain Planning",
  "Functional Skills Qualification",
  "Oracle Business Intelligence (BI) / OBIA",
  "Forecasting",
  "Troubleshooting (Problem Solving)",
  "Oracle Application Framework (OAF)",
  "Oracle Demantra"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (94, 52998);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (94, 94, 94, 94, '2024-05-22', '2024-07-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (95, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (95, 'ManTech', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (95, 'Washington, VA', 'Virginia', '51157');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (9716, '[
  "Power BI",
  "Predictive Modeling",
  "Management",
  "Data Import/Export",
  "Data Science",
  "Dataflow",
  "Authorization (Computing)",
  "Secret Clearance",
  "Dashboard",
  "Ontologies",
  "Export Control",
  "Reporting Tools",
  "Data Analysis",
  "SQL (Programming Language)",
  "Machinery",
  "Mathematics",
  "Energy Consumption",
  "Data Visualization",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (95, 9716);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (95, 95, 95, 95, '2024-06-11', '2024-07-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (96, 'ET6125DCFEB4996F91', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (96, 'Synechron', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (96, 'Piscataway, NJ', 'New Jersey', '34023');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (57180, '[
  "Detail Oriented",
  "Power BI",
  "Software Systems",
  "Management",
  "Apache Hadoop",
  "Operational Efficiency",
  "Analytical Skills",
  "Claims Processing",
  "Data Mining",
  "Data Science",
  "Communication",
  "Data Management",
  "Big Data",
  "Statistical Modeling",
  "Business Process",
  "Underwriting",
  "Python (Programming Language)",
  "Apache Spark",
  "Business Intelligence Tools",
  "Key Performance Indicators (KPIs)",
  "Mathematics",
  "Data Analysis",
  "Statistics",
  "Pricing Strategies",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Data Modeling",
  "Data-Driven Decision Making",
  "Risk Analysis",
  "Economics",
  "Problem Solving",
  "Casualty Insurance",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Persuasive Communication",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (96, 57180);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (96, 96, 96, 96, '2024-06-19', '2024-08-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (97, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', NULL, 
        NULL, 75000, 85000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (97, 'Williams-Sonoma', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (97, '[Unknown City], CA', 'California', '6999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (98540, '[
  "Tealium",
  "Detail Oriented",
  "Power BI",
  "Programming Languages",
  "Microsoft Excel",
  "Digital Marketing",
  "React.js (Javascript Library)",
  "Dashboard",
  "Vlookups",
  "Leadership",
  "Domo",
  "Application Programming Interface (API)",
  "Extract Transform Load (ETL)",
  "Marketing",
  "Google Tag Manager",
  "Business Intelligence",
  "Analytical Skills",
  "Alteryx",
  "SQL (Programming Language)",
  "Conditional Formatting",
  "Complex Problem Solving",
  "Verbal Communication Skills",
  "Customer Relationship Management",
  "Pivot Tables And Charts",
  "HyperText Markup Language (HTML)",
  "Data Blending",
  "JavaScript (Programming Language)",
  "Tableau (Business Intelligence Software)",
  "Business Strategies"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (97, 98540);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (97, 97, 97, 97, '2024-09-11', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (98, 'ET69F20B6A6E8E9ADE', 'Full-time (> 32 hours)', 1, 
        1, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (98, 'Denken Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (98, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (59008, '[
  "Cash Management",
  "Supply Chain Management",
  "Finance",
  "Accounts Receivable",
  "Business Process",
  "Project Cost Management",
  "Managed Services",
  "Billing",
  "Oracle General Ledger",
  "Writing",
  "Fixed Asset",
  "Enterprise Resource Planning",
  "Change Management",
  "Accounts Payable"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (98, 59008);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (98, 98, 98, 98, '2024-06-01', '2024-07-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (99, 'ET4FA40D81973D2BB7', 'Full-time (> 32 hours)', NULL, 
        NULL, 75195, 75195);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (99, 'Wisconsin Housing And Economic Development Authority (Wheda)', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (99, 'Madison, WI', 'Wisconsin', '55025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41100, '[
  "Literature Reviews",
  "Research",
  "Social Determinants Of Health",
  "Performance Management",
  "Data Management",
  "Policy Development",
  "Business Metrics",
  "Performance Metric",
  "Organizational Strategy",
  "Data Analysis",
  "Strategic Prioritization",
  "Data Collection",
  "Data-Driven Decision Making",
  "Commercial Lending"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (99, 41100);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (99, 99, 99, 99, '2024-06-26', '2024-07-15');
        