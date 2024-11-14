
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
        VALUES (0, 'ETD6E22EE76F3002CF', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (0, 'NTT DATA', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (0, 'Wayne, PA', 'Pennsylvania', '42045');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79859, '[
  "Microsoft Office",
  "Microsoft Outlook",
  "Microsoft Windows",
  "Operations",
  "Workflow Management",
  "Microsoft Excel",
  "Provider Data Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (0, 79859);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (0, 0, 0, 0, '2024-05-21', '2024-06-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (1, 'ETFB496020F30C22AB', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (1, 'Hays', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (1, 'Houston, TX', 'Texas', '48201');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (95677, '[
  "Forecasting",
  "Supply And Demand",
  "Supply Chain Planning",
  "Planning",
  "SAP APO",
  "SAP Applications",
  "Demand Planning",
  "SAS (Software)",
  "Advanced Analytics",
  "Global Marketing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (1, 95677);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (1, 1, 1, 1, '2024-05-20', '2024-06-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (2, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 2, 
        2, 70700, 106100);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (2, 'Cox Communications', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (2, 'Bridgeport, CT', 'Connecticut', '9001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (89301, '[
  "Performance Analysis",
  "Automotive Industry",
  "Business Workflow Analysis",
  "Power BI",
  "Data Intelligence",
  "Data Libraries",
  "Performance Management",
  "Github",
  "Self-Motivation",
  "Python (Programming Language)",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Data Modeling",
  "Microsoft Excel",
  "Data Pipelines",
  "Sales",
  "Data Governance",
  "Quantitative Analysis",
  "Revenue Growth",
  "Salesforce Lightning",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Version Control",
  "User Feedback"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (2, 89301);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (2, 2, 2, 2, '2024-07-03', '2024-07-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (3, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (3, 'Computershare', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (3, 'Shelton, CT', 'Connecticut', '9001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (15677, '[
  "Enthusiasm",
  "Governance",
  "Corporate Governance",
  "Customer Success Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (3, 15677);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (3, 3, 3, 3, '2024-06-01', '2024-08-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (4, 'ET7E5B4495CB6AB8CD', 'Full-time (> 32 hours)', 13, 
        NULL, 113022, 113022);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (4, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (4, 'Arlington, VA', 'Virginia', '51013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90333, '[
  "Workflow Management",
  "Web Portals",
  "ServiceNow",
  "Information Technology",
  "Management",
  "Business Systems",
  "Communication",
  "Presentations",
  "Investment Control",
  "Planning",
  "Integrated Business Planning",
  "Financial Management",
  "Portfolio Analysis",
  "Microsoft PowerPoint",
  "Project Management",
  "Therapeutic Behavior Management",
  "Cost Benefit Analysis",
  "Secret Clearance",
  "IT Governance",
  "Resource Allocation",
  "Microsoft Outlook",
  "Systems Analysis",
  "Governance",
  "Budgeting",
  "Integrated Service Routers",
  "Enterprise Architecture",
  "Portfolio Management",
  "Cost Estimation Models",
  "Persuasive Communication",
  "Demand Management",
  "Microsoft Visio",
  "Data Entry",
  "Operations",
  "Sensors",
  "Application Security",
  "Data Structure Alignment",
  "Microsoft Excel",
  "Reconnaissance",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Investments",
  "Project Portfolio Management",
  "Business Case",
  "Visual Acuity",
  "Capital Budgeting",
  "Fine Motor Skills",
  "Microsoft Office",
  "Investment Management",
  "Business Process Mapping",
  "Performance Review"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (4, 90333);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (4, 4, 4, 4, '2024-09-23', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (5, 'ET30073907A7DEEDFC', 'Full-time (> 32 hours)', 3, 
        3, 60000, 100000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (5, 'The College Board', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (5, 'Lansing, MI', 'Michigan', '26065');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (13822, '[
  "Forecasting",
  "Inventory Monitoring",
  "Prioritization",
  "Inventory Management",
  "Sales Inventory And Operations Planning",
  "Agile Methodology",
  "Planning",
  "Analytical Thinking",
  "Benchmarking",
  "Meeting Facilitation",
  "Supply Chain Management",
  "Finance",
  "Logistics",
  "Demand Planning",
  "Analytics",
  "Content Management",
  "Supply Chain",
  "Data Analysis",
  "JIRA",
  "Bill Of Materials",
  "Operations",
  "RACI Matrix",
  "Microsoft Excel",
  "Demand Forecasting",
  "Microsoft Office",
  "Problem Solving",
  "Solid-State Drives",
  "Supply Chain Planning",
  "Process Mapping"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (5, 13822);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (5, 5, 5, 5, '2024-07-26', '2024-08-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (6, 'ET444DD62C2A33E0BE', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (6, 'Activesoft', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (6, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (48039, '[
  "Planning",
  "SAP Applications"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (6, 48039);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (6, 6, 6, 6, '2024-09-20', '2024-09-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (7, 'ETDF6BE8937084FA3C', 'Full-time (> 32 hours)', 6, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (7, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (7, 'Cleveland, OH', 'Ohio', '39035');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58803, '[
  "Procurement",
  "Communication",
  "Coaching",
  "Continuous Improvement Process",
  "Creativity",
  "Leadership",
  "Supply Chain",
  "Management Consulting",
  "Operations",
  "Organizational Performance",
  "Purchasing",
  "Consulting",
  "Change Management",
  "Project Management",
  "Industrial Engineering"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (7, 58803);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (7, 7, 7, 7, '2024-09-15', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (8, 'ET34C0F823C01CAEBA', 'Full-time (> 32 hours)', 10, 
        NULL, 124000, 208000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (8, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (8, 'Fresno, CA', 'California', '6019');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (40277, '[
  "SAP Functional",
  "Gap Analysis",
  "Management",
  "Business Process",
  "SAP ERP",
  "SAP SuccessFactors",
  "SAP Applications",
  "Business Requirements",
  "Remittance",
  "Contract Review",
  "Human Capital",
  "Public Service",
  "Consulting",
  "SAP Implementation",
  "SAP Knowledge Warehouse"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (8, 40277);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (8, 8, 8, 8, '2024-05-11', '2024-05-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (9, 'ET17B54F5BDFE2F9F2', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (9, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (9, 'San Jose, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80745, '[
  "Effective Communication",
  "Database Administration",
  "SAP HANA",
  "SAP Applications",
  "Collaboration",
  "SAP NetWeaver",
  "SAP Basis",
  "Troubleshooting (Problem Solving)",
  "Problem Solving",
  "Disaster Recovery"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (9, 80745);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (9, 9, 9, 9, '2024-05-30', '2024-06-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (10, 'ETE43C363C707E4727', 'Full-time (> 32 hours)', 3, 
        3, 103200, 154800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (10, 'Citigroup', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (10, 'Irving, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (67078, '[
  "Business Workflow Analysis",
  "Business Objectives",
  "Business Reporting",
  "Management",
  "Verbal Communication Skills",
  "Data Warehousing",
  "Resource Management",
  "Influencing Skills",
  "Business Process",
  "Resource Allocation",
  "Communication",
  "Innovation",
  "Python (Programming Language)",
  "Ethical Standards And Conduct",
  "Diplomacy",
  "Employee Assistance Programs",
  "Operations",
  "Reengineering"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (10, 67078);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (10, 10, 10, 10, '2024-08-12', '2024-10-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (11, 'ET7593BD73077364A5', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (11, 'Apolis', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (11, 'Saint Louis, MO', 'Missouri', '29510');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (62396, '[
  "Inventory Staging",
  "Debugging",
  "Handling Unit Management",
  "Label Printing",
  "Management",
  "Order Management",
  "Order Management Systems",
  "Functional Specification",
  "Scheduling",
  "Full Life Cycle Implementation",
  "Advanced Business Application Programming (ABAP)",
  "Pharmaceuticals",
  "SAP Applications",
  "Business Requirements",
  "SAP Production Planning"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (11, 62396);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (11, 11, 11, 11, '2024-08-23', '2024-09-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (12, 'ET48BB5FF78D5857F5', 'Part-time / full-time', 1, 
        NULL, 139395, 191900);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (12, 'Department Of Defense Education Activity', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (12, 'Alexandria, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41660, '[
  "Research",
  "Management",
  "Planning",
  "Interpersonal Communications",
  "Decision Making",
  "Continuous Improvement Process",
  "Project Management",
  "Needs Assessment",
  "Writing",
  "User Feedback"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (12, 41660);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (12, 12, 12, 12, '2024-07-12', '2024-07-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (13, 'ET63B1A6EC08823815', 'Full-time (> 32 hours)', 5, 
        NULL, 87295, 118105);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (13, 'Waste Management', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (13, '[Unknown City], MO', 'Missouri', '29999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (43596, '[
  "Business Objectives",
  "Management",
  "Communication",
  "Functional Requirement",
  "Oracle Cloud",
  "Scenario Testing",
  "Innovation",
  "OneStream (CPM Software)",
  "Safety Assurance",
  "Machine Operation",
  "Automation",
  "User Experience (UX)",
  "Configurators",
  "Requirements Elicitation",
  "Request For Proposal",
  "Finance",
  "Acceptance Testing",
  "Business Process",
  "Oracle Payroll",
  "Leadership",
  "Coupa (Spend Management Software)",
  "Motor Coordination",
  "User Acceptance Testing (UAT)",
  "Scrum (Software Development)",
  "Business Requirements",
  "Technical Support",
  "Operations",
  "Writing",
  "Risk Mitigation",
  "Technology Solutions",
  "Dispute Resolution",
  "Troubleshooting (Problem Solving)",
  "Knowledge Management",
  "Change Management",
  "Release Notes",
  "Accounting",
  "Kronos (Timekeeping Software)",
  "Problem Solving",
  "Business Technologies",
  "Finger Dexterity"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (13, 43596);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (13, 13, 13, 13, '2024-05-24', '2024-07-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (14, 'ETF3EF02EFA7554915', 'Full-time (> 32 hours)', 12, 
        NULL, 63200, 188600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (14, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (14, 'Cincinnati, OH', 'Ohio', '39061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41923, '[
  "Workflow Management",
  "Authorization (Computing)",
  "Software Deployment",
  "Finance",
  "Leadership",
  "Technological Change",
  "SAP Applications",
  "SAP FI/CO",
  "Integration Testing",
  "Performance Testing",
  "Operations",
  "Reconciliation",
  "General Ledger",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (14, 41923);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (14, 14, 14, 14, '2024-09-04', '2024-10-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (15, 'ETC8EEDB4697D04529', 'Full-time (> 32 hours)', 1, 
        1, 45000, 50000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (15, 'Pearl Interactive Network', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (15, 'Oklahoma City, OK', 'Oklahoma', '40109');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (82579, '[
  "Forecasting",
  "Ethernet Physical Layer",
  "Management",
  "Outliers",
  "Operational Efficiency",
  "Broadband",
  "Scheduling",
  "Performance Reporting",
  "Business Statistics",
  "Call Center Experience",
  "Service-Level Agreement",
  "Writing",
  "Workforce Management",
  "Microsoft Excel",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (15, 82579);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (15, 15, 15, 15, '2024-06-18', '2024-06-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (16, 'ET3FF6572C966C2F71', 'Full-time (> 32 hours)', 10, 
        NULL, 110625, 230625);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (16, 'Yahoo', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (16, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72437, '[
  "Enterprise Resource Planning",
  "Generally Accepted Accounting Principles",
  "Coaching",
  "Team Building",
  "Performance Management",
  "Automation",
  "Multitasking",
  "Fixed Asset",
  "Leadership",
  "Accountability",
  "Sarbanes-Oxley Act (SOX) Compliance",
  "Process Improvement",
  "Accounting",
  "Technical Accounting",
  "Auditing",
  "Curiosity"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (16, 72437);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (16, 16, 16, 16, '2024-07-08', '2024-08-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (17, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (17, 'CDW', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (17, 'Jackson, MS', 'Mississippi', '28049');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33954, '[
  "Information Technology",
  "Coaching",
  "Project Documentation",
  "Technology Solutions",
  "Planning",
  "Innovation",
  "Cisco Identity Services Engine (ISE)",
  "Microsoft Azure",
  "Prioritization",
  "Selling Techniques",
  "Systems Development Life Cycle",
  "Communication",
  "Coordinating",
  "Sales Support",
  "Influencing Skills",
  "Market Trend",
  "Customer Service",
  "Service Development",
  "Mentorship",
  "Leadership",
  "Templates",
  "Fortinet",
  "Product Management",
  "Test Planning",
  "Wireless Security",
  "Network Security",
  "Billing",
  "Request For Proposal",
  "Strategic Planning",
  "Security Requirements Analysis",
  "IT Security Architecture",
  "Technical Training",
  "Detail Oriented",
  "Product Definition",
  "Cyber Security",
  "Project Implementation",
  "Amazon Web Services",
  "Project Planning",
  "Consulting",
  "Project Sponsorship",
  "Sales",
  "Pre-Sales Engineering",
  "Local Area Networks",
  "Test Automation",
  "Wide Area Networks",
  "Organizational Effectiveness",
  "Sales Presentations",
  "New Product Development",
  "Product Demonstration"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (17, 33954);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (17, 17, 17, 17, '2024-06-27', '2024-07-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (18, 'ET30EF6DBC6229CF3F', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (18, 'Net2Source', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (18, 'Sunnyvale, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93896, '[
  "Management",
  "Inventory Management",
  "Planning",
  "Field Testing",
  "Laboratory Equipment"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (18, 93896);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (18, 18, 18, 18, '2024-09-25', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (19, 'ET34FB54BD2DD8302A', 'Full-time (> 32 hours)', NULL, 
        NULL, 74880, 74880);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (19, 'Amergis', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (19, 'Marietta, GA', 'Georgia', '13067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (8732, '[
  "Cardiopulmonary Resuscitation (CPR)",
  "Case Management",
  "Registered Nurse (RN)",
  "Psychiatric Rehabilitation",
  "Communication",
  "Patient Education And Counseling",
  "Health Promotion",
  "Crisis Intervention",
  "Cardiopulmonary Resuscitation (CPR) Certification",
  "Mental Health",
  "Critical Thinking",
  "Nursing Process",
  "Medical Privacy",
  "Triage",
  "Self Care",
  "Coordinating",
  "Psychiatry"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (19, 8732);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (19, 19, 19, 19, '2024-09-04', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (20, 'ETB87919E9499BE27D', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (20, 'University of Maryland', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (20, '[Unknown City], MD', 'Maryland', '24999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (29603, '[
  "Cultural Studies",
  "Research",
  "Data Literacy",
  "Behavioral Science",
  "Communication",
  "Media Literacy",
  "Research Methodologies",
  "Advising",
  "Discourse Analysis",
  "Teaching",
  "Communication Studies",
  "Data Analysis",
  "Data Visualization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (20, 29603);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (20, 20, 20, 20, '2024-08-15', '2024-10-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (21, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        2, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (21, 'Hanover Insurance Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (21, 'Worcester, MA', 'Massachusetts', '25027');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60135, '[
  "Mathematics",
  "Curiosity",
  "Management",
  "Business Analytics",
  "Verbal Communication Skills",
  "Exploratory Data Analysis",
  "Business Concepts",
  "Microsoft PowerPoint",
  "Finance",
  "Innovation",
  "Time Management",
  "Ability To Meet Deadlines",
  "Communication",
  "Data Analysis",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Multitasking",
  "Problem Solving",
  "Writing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (21, 60135);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (21, 21, 21, 21, '2024-05-22', '2024-06-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (22, 'ET1756B6CE18B21DF6', 'Part-time / full-time', 2, 
        2, 75329, 97925);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (22, 'United States Government', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (22, 'McLean, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (22100, '[
  "Research",
  "Analytic Applications",
  "Data Mart",
  "Open Mindset",
  "Geographic Information Systems",
  "Creative Problem Solving",
  "Business Process",
  "Communication",
  "Intelligence Analysis",
  "Data Integration",
  "Graphic Communication",
  "Detail Oriented",
  "Link Analysis",
  "Problem Solving",
  "Writing",
  "Goal Setting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (22, 22100);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (22, 22, 22, 22, '2024-08-26', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (23, 'ET0000000000000000', 'Full-time (> 32 hours)', 8, 
        8, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (23, 'Ameri100', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (23, 'Las Vegas, NV', 'Nevada', '32003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (65912, '[
  "SAP Financial Management",
  "Object-Oriented Programming (OOP)",
  "SAP BusinessObjects",
  "Governance Risk Management And Compliance",
  "Warehousing",
  "SAP HANA",
  "Interpersonal Communications",
  "English Language",
  "Knowledge Transfer",
  "Advanced Business Application Programming (ABAP)",
  "Professionalism",
  "Customer Support",
  "Technical Support",
  "Calculations",
  "Data Quality",
  "SAP Business Suite",
  "Human Capital Management (HCM)",
  "Landscape Design",
  "Asset Management",
  "SAP Applications",
  "Prototyping",
  "Business Intelligence",
  "Data Modeling",
  "Purchasing",
  "Aquatic Facility Operator (AFO) Certification",
  "SAP NetWeaver Business Warehouse",
  "Consulting",
  "Customer Relationship Management",
  "Extract Transform Load (ETL)",
  "Kronos (Timekeeping Software)",
  "Data Analysis",
  "Data Access",
  "Teamwork"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (23, 65912);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (23, 23, 23, 23, '2024-05-30', '2024-07-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (24, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (24, 'Talent Group - Consultoría de Recursos Humanos', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (24, 'Exton, PA', 'Pennsylvania', '42029');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (55049, '[
  "Functional Requirement",
  "Requirements Analysis",
  "Oracle Human Capital Management (HCM)",
  "Oracle Fusion Middleware"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (24, 55049);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (24, 24, 24, 24, '2024-06-17', '2024-08-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (25, 'ET0C41BA6C5C3FD6D2', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (25, 'Tek Inspirations', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (25, 'Atlanta, GA', 'Georgia', '13089');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97938, '[
  "Customer Service",
  "Power BI",
  "SAP BusinessObjects",
  "Requirements Analysis",
  "Gap Analysis",
  "Prioritization",
  "Information Technology",
  "Web Intelligence",
  "Process Improvement",
  "Operational Efficiency",
  "Business Acumen",
  "Analytical Skills",
  "Analytical Thinking",
  "Drilldown",
  "Communication",
  "Data Warehousing",
  "Coordinating",
  "Microsoft Teams",
  "Data Management",
  "Business Objects Framework",
  "Finance",
  "Delivery Focused",
  "Governance",
  "Dashboard",
  "Data Integration",
  "Decision Making",
  "Service Management",
  "Supply Chain",
  "SAP ERP",
  "Multitasking",
  "Interpersonal Communications",
  "SAP Applications",
  "Business Requirements",
  "Stakeholder Management",
  "Reporting Tools",
  "Technical Support",
  "Security Requirements Analysis",
  "Business Intelligence",
  "Microsoft Project",
  "Data Modeling",
  "Troubleshooting (Problem Solving)",
  "Quality Assurance",
  "Data Ingestion",
  "Customer Relationship Management",
  "Verbal Communication Skills",
  "Microsoft Excel",
  "Change Management",
  "Wireframing",
  "Sales",
  "Business Administration",
  "Service Improvement",
  "Service Improvement Planning",
  "Problem Solving",
  "SAP BI Accelerator",
  "SAP Business Suite",
  "Data Analysis",
  "SQL (Programming Language)",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "Data Security",
  "End-User Training And Support"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (25, 97938);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (25, 25, 25, 25, '2024-06-24', '2024-07-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (26, 'ET0000000000000000', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (26, 'Infinite Computer Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (26, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (67364, '[
  "Enterprise Resource Planning",
  "Workflow Management",
  "Financial Statements",
  "Cross-Functional Team Leadership",
  "Interpersonal Communications",
  "Finance",
  "Financial Management",
  "Communication",
  "Chartered Financial Analyst",
  "Budgeting",
  "Information Systems",
  "Accounts Payable",
  "Accounts Receivable",
  "SAP Applications",
  "Business Requirements",
  "Project Management",
  "Operations",
  "Detail Oriented",
  "Troubleshooting (Problem Solving)",
  "General Ledger",
  "Certified Public Accountant",
  "Business Administration",
  "Accounting",
  "Problem Solving",
  "Revenue Cycle Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (26, 67364);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (26, 26, 26, 26, '2024-06-16', '2024-06-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (27, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, 135200, 135200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (27, 'Zenith Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (27, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (13482, '[
  "Salesforce",
  "Workflow Management",
  "Information Technology",
  "Management",
  "Database Administration",
  "Student Engagement",
  "Data Management",
  "Salesforce Development",
  "Service Industries",
  "Microsoft Outlook",
  "Standard Operating Procedure",
  "Python (Programming Language)",
  "Dashboard",
  "Decision Making",
  "Data Mapping",
  "SQL (Programming Language)",
  "Detail Oriented",
  "Data Analysis",
  "Data Collection",
  "Data-Driven Decision Making",
  "Power BI",
  "Higher Education",
  "Customer Relationship Management",
  "Problem Solving",
  "Surveys",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (27, 13482);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (27, 27, 27, 27, '2024-07-18', '2024-09-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (28, 'ETA87D86C5BFB3B700', 'Full-time (> 32 hours)', 6, 
        NULL, 70000, 90000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (28, 'E Business Corp', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (28, 'Northbrook, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58597, '[
  "SAP Functional",
  "Workflow Management",
  "Information Technology",
  "Management",
  "Data Extraction",
  "Vulnerability Assessments",
  "Performance Tuning",
  "Auditing",
  "Communication",
  "Business Process",
  "Data Integration",
  "Query Optimization",
  "Database Administration",
  "SAP Applications",
  "SQL (Programming Language)",
  "SAP ERP",
  "Troubleshooting (Problem Solving)",
  "E-Business",
  "Data Integrity",
  "Extract Transform Load (ETL)",
  "SAP Certified Technology Associate",
  "Problem Solving",
  "Database Systems",
  "Industry Standards",
  "Database Management",
  "Database Design",
  "Cloud Database",
  "Microsoft Certified: Azure Database Administrator Associate",
  "Computer Science",
  "Database Security",
  "Microsoft Certified Professional"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (28, 58597);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (28, 28, 28, 28, '2024-07-23', '2024-08-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (29, 'ET91E4173D44FC6067', 'Full-time (> 32 hours)', 1, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (29, 'Balentine', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (29, 'Raleigh, NC', 'North Carolina', '37183');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (31630, '[
  "Microsoft Office",
  "Automation",
  "Interpersonal Communications",
  "Professionalism",
  "Communication",
  "Positivity",
  "Performance Reporting",
  "Critical Thinking",
  "Project Management",
  "Operations",
  "Detail Oriented",
  "Willingness To Learn",
  "Microsoft Excel",
  "Task Management",
  "Curiosity"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (29, 31630);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (29, 29, 29, 29, '2024-08-07', '2024-09-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (30, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 1, 
        1, 145600, 156000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (30, 'Sunrise Systems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (30, 'Raleigh, NC', 'North Carolina', '37183');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (54575, '[
  "Request For Quotation (RFQ)",
  "Procurement",
  "Systems Analysis",
  "Governance",
  "Information Systems",
  "Emerging Technologies",
  "Enterprise Architecture",
  "Business Alignment",
  "Interoperability",
  "Architectural Models",
  "Request For Proposal",
  "Design Reviews"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (30, 54575);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (30, 30, 30, 30, '2024-05-07', '2024-05-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (31, 'ETB2F2DB62C8675C95', 'Full-time (> 32 hours)', 5, 
        NULL, 124800, 124800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (31, 'ManpowerGroup', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (31, 'Coppell, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (27106, '[
  "Management",
  "Oracle Cloud",
  "Organizational Strategy",
  "Cash Management",
  "Business Analysis",
  "Data Management",
  "Finance",
  "Information Systems",
  "Test Planning",
  "Root Cause Analysis",
  "End-User Training And Support",
  "Oracle Human Capital Management (HCM)",
  "Workflow Management",
  "Applications Architecture",
  "Information Gathering",
  "Fixed Asset",
  "Oracle Fusion Middleware",
  "General Ledger",
  "Business Administration",
  "Accounting",
  "Accounts Receivable",
  "Accounts Payable",
  "Business Systems Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (31, 27106);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (31, 31, 31, 31, '2024-05-10', '2024-05-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (32, 'ET9EE852AA64915E61', 'Full-time (> 32 hours)', 1, 
        1, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (32, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (32, 'Waltham, MA', 'Massachusetts', '25017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12238, '[
  "Relational Databases",
  "Salesforce",
  "Customer Service",
  "Curiosity",
  "Microsoft Word",
  "Client Services",
  "PDF Editors",
  "Zoom (Video Conferencing Tool)",
  "Data Processing",
  "Data Administration",
  "Tactfulness",
  "Data Management",
  "Patience",
  "Diplomacy",
  "Sales Prospecting",
  "Adaptability",
  "Ethical Standards And Conduct",
  "Document Management",
  "Google Workspace",
  "Project Management",
  "Detail Oriented",
  "Editing",
  "Organizational Skills",
  "Microsoft Excel",
  "Self-Motivation",
  "Intellectual Curiosity",
  "Database Systems",
  "Document Management Systems",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (32, 12238);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (32, 32, 32, 32, '2024-07-25', '2024-09-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (33, 'ETF9A9CB424EA1AEED', 'Full-time (> 32 hours)', 1, 
        NULL, 43680, 43680);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (33, 'Fedpoint', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (33, 'Portsmouth, NH', 'New Hampshire', '33015');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (11734, '[
  "Microsoft SharePoint",
  "Pivot Tables And Charts",
  "Trend Analysis",
  "Business Metrics",
  "Performance Metric",
  "Time Management",
  "Data Quality",
  "Mathematics",
  "Data Analysis",
  "Business Requirements",
  "Project Management",
  "Detail Oriented",
  "Microsoft Excel",
  "Data-Driven Decision Making",
  "Self-Motivation",
  "Data Sharing",
  "Data Integrity",
  "Accounting",
  "Data Visualization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (33, 11734);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (33, 33, 33, 33, '2024-05-11', '2024-07-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (34, 'ET225F42CAC4F13FF4', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (34, 'InfiCare Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (34, 'Lawrenceville, GA', 'Georgia', '13135');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (7617, '[
  "Business Objectives",
  "Business Reporting",
  "Presentations",
  "Financial Statements",
  "Information Technology",
  "Data Modeling",
  "Oracle Cloud",
  "Business Analytics",
  "Data Science",
  "Auditing",
  "Usability",
  "Scheduling",
  "Dashboard",
  "Reporting Tools",
  "Business Intelligence",
  "Oracle Fusion Middleware",
  "Enterprise Resource Planning",
  "Data Integrity",
  "Data Governance",
  "Data Visualization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (34, 7617);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (34, 34, 34, 34, '2024-08-28', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (35, 'ET54C1C151F3D17B20', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (35, 'KPMG', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (35, 'Minneapolis, MN', 'Minnesota', '27053');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (99284, '[
  "Enterprise Resource Planning",
  "Performance Management",
  "Procurement",
  "Oracle Cloud",
  "Analytical Skills",
  "Cost Management",
  "Process Design",
  "Finance",
  "Business Process",
  "Proposal Development",
  "Strategic Planning",
  "Data Integrity",
  "Business Development",
  "Record to Report (R2R)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (35, 99284);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (35, 35, 35, 35, '2024-07-11', '2024-08-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (36, 'ET44582B082B54BC85', 'Full-time (> 32 hours)', 6, 
        NULL, 144501, 217311);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (36, 'Intel', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (36, 'Lansing, MI', 'Michigan', '26045');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33803, '[
  "Unified Modeling Language",
  "Project Management Life Cycle",
  "Information Technology",
  "Information Technology Architecture",
  "Management",
  "Semiconductors",
  "Scenario Testing",
  "Inventory Management",
  "Warehousing",
  "Agile Methodology",
  "Planning",
  "Requirements Elicitation",
  "Timelines",
  "Ability To Meet Deadlines",
  "Acceptance Testing",
  "Waterfall Methodology",
  "User Requirements Documents",
  "Communication",
  "Systems Analysis",
  "Project Management",
  "Systems Development Life Cycle",
  "Non-Functional Testing",
  "Continuous Integration",
  "Industrial Engineering",
  "Test Automation",
  "SAP Applications",
  "Business Requirements",
  "Microsoft Visio",
  "Collaborative Software",
  "Web Services",
  "Production Planning",
  "Workflow Management",
  "Simple Object Access Protocol (SOAP)",
  "Troubleshooting (Problem Solving)",
  "Quality Assurance",
  "Change Management",
  "Process Improvement",
  "Backup And Restore",
  "Local Area Networks",
  "Computer Engineering",
  "Wide Area Networks",
  "Data Centers",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (36, 33803);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (36, 36, 36, 36, '2024-05-12', '2024-06-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (37, 'ETF5CF98FE5DB03E37', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (37, 'HealthEdge', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (37, 'Richmond, VA', 'Virginia', '51087');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (59942, '[
  "User Story",
  "Management",
  "Application Programming Interface (API)",
  "Data Interfaces",
  "Extensible Markup Language (XML)",
  "Data Mining",
  "Security Assertion Markup Language (SAML)",
  "Electronic Data Interchange",
  "Process Flow Diagrams",
  "Single Sign-On (SSO)",
  "Development Testing",
  "Agile Methodology",
  "Systems Development Life Cycle",
  "OAuth",
  "Data Integration",
  "Information Systems",
  "Data Quality",
  "Product Management",
  "Medicare",
  "Customer Data Integration",
  "Data Masking",
  "Enterprise Architecture",
  "Customer Data Management",
  "User Acceptance Testing (UAT)",
  "Change Requests",
  "Business Logic",
  "Technology Solutions",
  "Data Transformation",
  "Health Level Seven (HL7)",
  "Business Requirements Documentation",
  "Quality Assurance",
  "Medicaid",
  "Technical Analysis",
  "Extract Transform Load (ETL)",
  "JSON",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (37, 59942);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (37, 37, 37, 37, '2024-06-21', '2024-08-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (38, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 41600, 41600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (38, 'ManpowerGroup', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (38, 'Longview, WA', 'Washington', '53015');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58099, '[
  "Detail Oriented",
  "Internet Research",
  "Data Cleansing",
  "Sorting",
  "Data Management",
  "Ability To Meet Deadlines",
  "Project Management",
  "Data Analysis",
  "Organizational Skills"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (38, 58099);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (38, 38, 38, 38, '2024-09-12', '2024-09-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (39, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (39, 'Dewberry Engineers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (39, 'Fairfax, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (38644, '[
  "Debugging",
  "Power BI",
  "Microsoft SharePoint",
  "ArcGIS (GIS Software)",
  "Business Analytics",
  "Agile Software Development",
  "Automation",
  "Data Science",
  "Data Management",
  "Governance",
  "Risk Reduction",
  "Writing",
  "Data Analysis",
  "Organizational Skills",
  "Technical Documentation",
  "Consulting",
  "Microsoft Excel",
  "Geographic Information Systems",
  "Problem Solving",
  "Geospatial Analysis",
  "Microsoft Power Automate",
  "Computer Science",
  "ArcGIS Survey123"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (39, 38644);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (39, 39, 39, 39, '2024-05-02', '2024-05-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (40, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 8, 
        NULL, 105000, 115000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (40, 'GovCIO', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (40, 'Montgomery, AL', 'Alabama', '1101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (87293, '[
  "Effective Communication",
  "Power BI",
  "Microsoft SharePoint",
  "Technical Writing",
  "Qualitative Data Analysis",
  "Qualitative Research",
  "Analytical Thinking",
  "Security Clearance",
  "Cloud Services",
  "Microsoft Teams",
  "Unstructured Data",
  "Subcontracting",
  "Business Process",
  "Communication",
  "Business Intelligence Tools",
  "Dashboard",
  "Time Management",
  "Leadership",
  "JIRA",
  "Strategic Planning",
  "Project Management",
  "Business Intelligence",
  "Operations",
  "Stakeholder Requirements",
  "Detail Oriented",
  "Field Service Management",
  "Microsoft Project",
  "Power Tool Operation",
  "Data Visualization",
  "Intelligence Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (40, 87293);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (40, 40, 40, 40, '2024-07-30', '2024-08-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (41, 'ET7767EEDBF263F7B7', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (41, 'Johnson Controls', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (41, 'Milwaukee, WI', 'Wisconsin', '55079');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (62507, '[
  "Identity And Access Management",
  "Governance",
  "Reference Implementation",
  "Enterprise Architecture",
  "Prototyping",
  "Security Requirements Analysis",
  "Solution Architecture",
  "Consulting",
  "Authentications",
  "IT Security Architecture",
  "Security Policies"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (41, 62507);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (41, 41, 41, 41, '2024-06-25', '2024-08-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (42, 'ET3037E0C947A02404', 'Part-time / full-time', 1, 
        1, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (42, 'Globe Life', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (42, 'McKinney, TX', 'Texas', '48085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80996, '[
  "Ability To Meet Deadlines",
  "Information Gathering",
  "Vlookups",
  "Detail Oriented",
  "Data Analysis",
  "Quarterly Finance Reports",
  "Workflow Management",
  "Verbal Communication Skills",
  "Microsoft Excel",
  "Pivot Tables And Charts",
  "Sales",
  "Sales Management",
  "Sales Metrics",
  "Auditing",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (42, 80996);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (42, 42, 42, 42, '2024-09-06', '2024-09-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (43, 'ETB5F6D01197F8CE6B', 'Full-time (> 32 hours)', 10, 
        NULL, 166400, 170560);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (43, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (43, 'Raleigh, NC', 'North Carolina', '37183');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (55025, '[
  "Workflow Management",
  "Dimensional Modeling",
  "Agile Methodology",
  "Planning",
  "Safety Assurance",
  "Performance Tuning",
  "Analytical Skills",
  "Data Mining",
  "Data Warehousing",
  "Data Cleansing",
  "JIRA",
  "Oracle GoldenGate",
  "Data Mapping",
  "SAP Applications",
  "Business Requirements",
  "Extract Transform Load (ETL)",
  "Integration Testing",
  "Web Services",
  "SQL (Programming Language)",
  "Data Modeling",
  "Troubleshooting (Problem Solving)",
  "Oracle SQL Developer"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (43, 55025);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (43, 43, 43, 43, '2024-06-06', '2024-07-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (44, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', NULL, 
        NULL, 95000, 159675);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (44, 'Navy Federal Credit Union', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (44, 'San Diego, CA', 'California', '6073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (7778, '[
  "Market Positioning",
  "Software Systems",
  "Research",
  "Procurement",
  "Information Technology",
  "Management",
  "Functional Requirement",
  "Coaching",
  "Oracle Cloud",
  "Platform As A Service (PaaS)",
  "Agile Methodology",
  "Planning",
  "Performance Management",
  "Systems Development",
  "Data Processing",
  "Communication",
  "Software Deployment",
  "Business Process",
  "Technology Research",
  "Innovation",
  "Systems Development Life Cycle",
  "Time Management",
  "Leadership",
  "Human Capital Management (HCM)",
  "Strategic Planning",
  "Bank Secrecy Act",
  "Business Requirements",
  "Cloud Applications",
  "Oracle Human Capital Management (HCM)",
  "Writing",
  "Detail Oriented",
  "Workflow Management",
  "Systems Analysis",
  "Systems Architecture",
  "Project Implementation",
  "Consulting",
  "Software As A Service (SaaS)",
  "Technical Analysis",
  "Software Development",
  "Business Administration",
  "Problem Solving",
  "Operational Performance Management",
  "Document-Oriented Databases",
  "Computer Science",
  "Oracle Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (44, 7778);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (44, 44, 44, 44, '2024-05-15', '2024-06-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (45, 'ET54C1C151F3D17B20', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (45, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (45, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2342, '[
  "Information Technology",
  "Management",
  "Investments",
  "Oracle Cloud",
  "Robotic Process Automation",
  "Agile Methodology",
  "Cash Management",
  "Debugging",
  "Business Process Improvement",
  "Secret Clearance",
  "Automation",
  "Communication",
  "Finance",
  "Business Process",
  "Verbal Communication Skills",
  "Systems Development Life Cycle",
  "Computer Science",
  "Accounts Receivable",
  "Problem Management",
  "Accounts Payable",
  "Service-Level Agreement",
  "Change Requests",
  "Operations",
  "Oracle E-Business Suite",
  "Business Operations",
  "Project Portfolio Management",
  "Fixed Asset",
  "Troubleshooting (Problem Solving)",
  "General Ledger",
  "Enterprise Resource Planning",
  "Consulting",
  "Application Lifecycle Management",
  "Information Technology Infrastructure Library",
  "Software As A Service (SaaS)",
  "Innovation",
  "Financial Systems",
  "PeopleSoft Applications",
  "CI/CD",
  "Computer Engineering",
  "End-User Training And Support"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (45, 2342);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (45, 45, 45, 45, '2024-07-27', '2024-09-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (46, 'ET5C1C71DED5E4D0BF', 'Full-time (> 32 hours)', 3, 
        NULL, 87135, 105435);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (46, 'Careoregon', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (46, 'Tillamook, OR', 'Oregon', '41057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41205, '[
  "Customer Service",
  "Research",
  "Prioritization",
  "Office Equipment",
  "Statistical Software",
  "Emotional Intelligence",
  "Planning",
  "Microsoft Azure",
  "Business Continuity Planning",
  "Process Improvement",
  "Auditing",
  "Data Warehousing",
  "Data Engineering",
  "Data Profiling",
  "Influencing Skills",
  "Business Process",
  "Communication",
  "Python (Programming Language)",
  "Dashboard",
  "Agile Methodology",
  "Data Integration",
  "Leadership",
  "Managed Care",
  "Data Quality",
  "Medicare",
  "Data Analysis",
  "Statistics",
  "Business Intelligence",
  "SQL (Programming Language)",
  "SAS (Software)",
  "Control Chart",
  "Verbal Communication Skills",
  "Medicaid",
  "Data Governance",
  "Systems Architecture",
  "Writing",
  "Design Reviews",
  "Software Development Methodologies",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (46, 41205);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (46, 46, 46, 46, '2024-07-28', '2024-09-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (47, 'ETE70E51ED6A348092', 'Full-time (> 32 hours)', 2, 
        NULL, 45000, 45000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (47, 'Mystic Valley Elder Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (47, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52292, '[
  "Money Management",
  "Financial Management",
  "Interpersonal Communications",
  "Resourcefulness",
  "Communication",
  "Multilingualism",
  "Statistics",
  "Consumer Behaviour"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (47, 52292);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (47, 47, 47, 47, '2024-08-09', '2024-10-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (48, 'ETD7109BA5EB96E8BB', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (48, 'Occidental Petroleum', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (48, 'Houston, TX', 'Texas', '48201');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (70163, '[
  "Power BI",
  "Microsoft SharePoint",
  "SQL Server Integration Services (SSIS)",
  "Management",
  "Communication",
  "Microsoft Access",
  "Data Definition Language",
  "Data Management",
  "Predictive Analytics",
  "Mentorship",
  "Hierarchical And Recursive Queries In SQL",
  "Primary Keys",
  "Python (Programming Language)",
  "Oil and Gas",
  "Business Intelligence Tools",
  "Technical Support",
  "Data Integration",
  "Microsoft Power Platform",
  "Azure Data Factory",
  "SQL Server Management Studio",
  "Machine Learning",
  "Visual Basic For Applications",
  "Project Management",
  "Operations",
  "Writing",
  "Data Analysis",
  "Foreign Keys",
  "Software Engineering",
  "Microsoft Excel",
  "SQL (Programming Language)",
  "Troubleshooting (Problem Solving)",
  "Amazon Web Services",
  "Spotfire (Data Analytics Software)",
  "Process Improvement",
  "SQL Server Reporting Services",
  "Extract Transform Load (ETL)",
  "Data Governance",
  "Problem Solving",
  "Willingness To Learn",
  "Microsoft Power Automate",
  "Database Management",
  "JavaScript (Programming Language)",
  "Computer Science",
  "Version Control"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (48, 70163);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (48, 48, 48, 48, '2024-06-01', '2024-08-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (49, 'ET6DA4FDEAD969847C', 'Full-time (> 32 hours)', 3, 
        NULL, 40000, 63726);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (49, 'Upen Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (49, 'Irving, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (29433, '[
  "Detail Oriented",
  "Mathematics",
  "Programming Languages",
  "Customer Engagement",
  "Cross-Functional Collaboration",
  "Analytical Skills",
  "Business Strategies",
  "Communication",
  "Python (Programming Language)",
  "Data Analysis",
  "Statistics",
  "SQL (Programming Language)",
  "Complex Problem Solving",
  "Economics",
  "Problem Solving",
  "Advanced Analytics",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (49, 29433);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (49, 49, 49, 49, '2024-05-16', '2024-07-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (50, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 78700, 145100);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (50, 'University of California', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (50, 'Santa Cruz, CA', 'California', '6087');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (11858, '[
  "Salesforce",
  "Customer Service",
  "Communication",
  "Data Analysis",
  "Microsoft Access",
  "Process Optimization",
  "Corporate Finance",
  "Automation",
  "Microsoft Office",
  "Data Management",
  "Ability To Meet Deadlines",
  "Business Process",
  "Dashboard",
  "Decision Making",
  "SQL Server Management Studio",
  "Interpersonal Communications",
  "Peoplesoft Query",
  "Reporting Tools",
  "Detail Oriented",
  "Python (Programming Language)",
  "Business Operations",
  "SQL (Programming Language)",
  "Excel Macros",
  "Process Mining",
  "Advising",
  "Microsoft Excel",
  "Troubleshooting (Problem Solving)",
  "Customer Relationship Management",
  "Pivot Tables And Charts",
  "Quality Management",
  "Advanced Analytics",
  "PeopleSoft Applications",
  "Writing",
  "Data Retrieval",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (50, 11858);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (50, 50, 50, 50, '2024-06-01', '2024-06-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (51, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 7, 
        NULL, 112320, 122720);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (51, 'Randstad', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (51, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (76412, '[
  "Research",
  "Peer Review",
  "Development Testing",
  "Banking",
  "Operations",
  "Detail Oriented",
  "Data Analysis",
  "Data Synthesis",
  "Data Integrity",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (51, 76412);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (51, 51, 51, 51, '2024-08-08', '2024-09-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (52, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (52, 'Group Nine', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (52, 'Fountain Valley, CA', 'California', '6059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (6155, '[
  "Dynatrace",
  "Microservices",
  "Bluetooth Low Energy (Bluetooth)",
  "Eclipse (Software)",
  "Internet Of Things (IoT)",
  "Angular (Web Framework)",
  "Apache Tomcat",
  "Node.js (Javascript Library)",
  "Data Structures",
  "SQL (Programming Language)",
  "Amazon Web Services",
  "Datadog",
  "Programming Tools",
  "Oracle WebLogic Server"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (52, 6155);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (52, 52, 52, 52, '2024-05-16', '2024-06-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (53, 'ET853441A504B0DF2D', 'Full-time (> 32 hours)', 5, 
        NULL, 109120, 163680);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (53, 'California Physicians' Service', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (53, 'Oakland, CA', 'California', '6001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (91281, '[
  "Data Governance",
  "Business Analysis",
  "Data Management",
  "Data Architecture",
  "Healthcare Industry Knowledge",
  "Interpersonal Communications",
  "Governance",
  "Communication",
  "Data-Driven Decision Making",
  "Data Quality",
  "Data Analysis",
  "Presentations",
  "Defining Roles And Responsibilities",
  "Netezza",
  "Critical Thinking",
  "Accountability",
  "Reconciliation",
  "Coordinating",
  "Verbal Communication Skills",
  "Information Privacy",
  "Data Integrity",
  "Oracle SQL Developer",
  "Quantitative Analysis",
  "Problem Solving",
  "Data Access",
  "Data Sharing",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (53, 91281);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (53, 53, 53, 53, '2024-07-29', '2024-10-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (54, 'ETC79EBC6A5480AAF6', 'Full-time (> 32 hours)', 10, 
        NULL, 145600, 166400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (54, 'ASGN', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (54, 'Colorado Springs, CO', 'Colorado', '8041');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12335, '[
  "Traceability Matrix",
  "Workflow Management",
  "Scenario Testing",
  "Planning",
  "Communication",
  "Requirements Elicitation",
  "Business Process",
  "Cloud Services",
  "Webforms",
  "Dashboard",
  "Budgeting",
  "User Acceptance Testing (UAT)",
  "Billing",
  "Reconciliation",
  "Automation",
  "NextGen Enterprise Practice Management",
  "Metadata",
  "Java (Programming Language)",
  "PeopleSoft Applications",
  "System Requirements"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (54, 12335);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (54, 54, 54, 54, '2024-09-20', '2024-10-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (55, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (55, 'Roth Staffing Companies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (55, 'Plano, TX', 'Texas', '48085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (92978, '[
  "Presentations",
  "Prioritization",
  "Problem Solving",
  "Microsoft PowerPoint",
  "Spreadsheets",
  "Creative Problem Solving",
  "Professionalism",
  "Communication",
  "Vlookups",
  "Writing",
  "Detail Oriented",
  "Data Analysis",
  "Microsoft Office",
  "Animations",
  "Organizational Skills",
  "Microsoft Excel",
  "Multitasking",
  "Pivot Tables And Charts",
  "Accounting",
  "Mathematics",
  "Data Entry"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (55, 92978);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (55, 55, 55, 55, '2024-09-25', '2024-10-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (56, 'ETD93E714DA3EF968D', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (56, 'Virginia Mason Franciscan Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (56, 'Mishawaka, IN', 'Indiana', '18141');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32778, '[
  "Project Management Life Cycle",
  "Presentations",
  "Management",
  "Integrated Business Planning",
  "Data Mining",
  "Thought Leadership",
  "Innovation",
  "Project Management",
  "Dashboard",
  "Decision Making",
  "Data Analysis",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Coordinating",
  "SAS (Software)",
  "Process Improvement",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (56, 32778);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (56, 56, 56, 56, '2024-09-16', '2024-10-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (57, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', NULL, 
        NULL, 77800, 116700);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (57, 'Cox Communications', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (57, 'Jonestown, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (77278, '[
  "Relational Databases",
  "Cloud Computing",
  "Workflow Management",
  "Presentations",
  "Data Science",
  "Dashboard",
  "Data Quality",
  "Data Analysis",
  "Business Intelligence",
  "Key Performance Indicators (KPIs)",
  "SQL (Programming Language)",
  "MicroStrategy",
  "Data Integrity",
  "HyperText Markup Language (HTML)",
  "Cascading Style Sheets (CSS)",
  "Collaboration",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (57, 77278);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (57, 57, 57, 57, '2024-09-30', '2024-10-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (58, 'ETA6B4FD11D29435BC', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (58, 'Chesapeake Utilities Corporation', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (58, 'Newark, DE', 'Delaware', '10003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52058, '[
  "Effective Communication",
  "Microsoft SharePoint",
  "Research",
  "Functional Requirement",
  "Business Systems",
  "C++ (Programming Language)",
  "Analytical Skills",
  "WordPress",
  "Microsoft Office",
  "Business Analysis",
  "Customer Information Systems",
  "Microsoft PowerPoint",
  "Collaboration",
  "Microsoft Outlook",
  "User Requirements Documents",
  "Dashboard",
  "Storyboarding",
  "Information Systems",
  "Adaptability",
  "Application Deployment",
  "Billing",
  "SAP Applications",
  "Business Requirements",
  "Technical Support",
  "End-User Training And Support",
  "Operations",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Coordinating",
  "Business Case",
  "Willingness To Learn",
  "Complex Problem Solving",
  "Problem Solving",
  "Data Visualization",
  "Certified Business Analysis Professional",
  "Surveys"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (58, 52058);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (58, 58, 58, 58, '2024-06-14', '2024-08-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (59, 'ET5ED39A0BB62884DA', 'Full-time (> 32 hours)', 1, 
        1, 85000, 105000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (59, 'Stiftelsen Norstella', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (59, 'Atlanta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (36039, '[
  "Healthcare Industry Knowledge",
  "Oncology",
  "Analytical Skills",
  "Microsoft PowerPoint",
  "Health Economics",
  "Communication",
  "Constructive Feedback",
  "Marketing Strategies",
  "Secondary Research",
  "Data Analysis",
  "Project Management",
  "Market Research",
  "Microsoft Office",
  "Microsoft Excel",
  "Health Policies",
  "Consulting",
  "Empathy",
  "Business Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (59, 36039);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (59, 59, 59, 59, '2024-08-07', '2024-08-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (60, 'ETD4A65628D3DCD398', 'Full-time (> 32 hours)', 5, 
        NULL, 84000, 149000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (60, 'Camptra Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (60, 'Plano, TX', 'Texas', '48085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (40272, '[
  "Information Technology",
  "Planning",
  "PL/SQL",
  "Oracle Human Capital Management (HCM)",
  "Systems Integration",
  "Oracle Application Framework (OAF)",
  "Unit Testing",
  "Supervision",
  "Software Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (60, 40272);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (60, 60, 60, 60, '2024-08-20', '2024-10-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (61, 'ET37384F3790C67F20', 'Full-time (> 32 hours)', NULL, 
        NULL, 80000, 120000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (61, 'KBR', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (61, 'Fulton, MD', 'Maryland', '24027');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (49270, '[
  "Unified Modeling Language",
  "Strategic Planning",
  "Metadata Management",
  "Dimensional Modeling",
  "Data Management",
  "Transaction Data",
  "Information Lifecycle Management",
  "Reference Data",
  "Governance",
  "Document Management Systems",
  "Technical Leadership",
  "Entity Relationship Models",
  "Modeling Languages",
  "Interoperability",
  "Data Dictionary",
  "Object Oriented Modeling And Design",
  "Data Modeling",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Data Structures",
  "Scalability Design",
  "Database Design",
  "Software Development Methodologies",
  "Information Architecture",
  "Information Technology Architecture"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (61, 49270);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (61, 61, 61, 61, '2024-09-25', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (62, 'ET46B0258781133DF8', 'Part-time (≤ 32 hours)', NULL, 
        NULL, 37440, 41600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (62, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (62, 'Seattle, WA', 'Washington', '53033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25955, '[
  "Management",
  "Swimming",
  "Constructive Feedback",
  "Working With Children",
  "Teaching"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (62, 25955);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (62, 62, 62, 62, '2024-09-15', '2024-09-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (63, 'ET707E25DD53AC062E', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (63, 'Genisis Technology Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (63, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41791, '[
  "Programming Languages",
  "MySQL",
  "Management",
  "Oracle Cloud",
  "Interpersonal Communications",
  "Timelines",
  "Logistics",
  "Procurement",
  "Linux",
  "Oracle Databases",
  "Communication",
  "Python (Programming Language)",
  "Leadership",
  "Mentorship",
  "Data Analysis",
  "Enterprise Resource Planning",
  "Functional Skills Qualification",
  "Project Management",
  "Java (Programming Language)",
  "SQL (Programming Language)",
  "Systems Integration",
  "Workflow Management",
  "Oracle Fusion Middleware",
  "Troubleshooting (Problem Solving)",
  "Technical Documentation",
  "Data Integrity",
  "Business Administration",
  "Operating Systems",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (63, 41791);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (63, 63, 63, 63, '2024-06-27', '2024-07-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (64, 'ETA3A0CF03E3E7D127', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (64, 'Nestlé', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (64, 'Springfield, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85465, '[
  "MuleSoft",
  "Customer Service",
  "Databricks",
  "Code Review",
  "Information Technology",
  "Business Analytics",
  "Solution Architecture",
  "Microsoft Azure",
  "Microservices",
  "Cloud Computing Architecture",
  "Technology Roadmaps",
  "Data Science",
  "Data Warehousing",
  "Unstructured Data",
  "Big Data",
  "Finance",
  "PySpark",
  "OpenStack",
  "MLOps (Machine Learning Operations)",
  "Python (Programming Language)",
  "Machine Learning",
  "Machine Learning Model Training",
  "Leadership",
  "Information Systems",
  "Application Programming Interface (API)",
  "Azure Data Factory",
  "Supply Chain",
  "Enterprise Architecture",
  "IBM Cloud Computing",
  "Cloud Technologies",
  "SQL (Programming Language)",
  "Systems Architecture",
  "Troubleshooting (Problem Solving)",
  "Amazon Web Services",
  "Azure Functions",
  "Sales",
  "Cloud Governance",
  "Business Intelligence",
  "Advanced Analytics",
  "Data Analysis",
  "Architectural Design",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (64, 85465);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (64, 64, 64, 64, '2024-06-07', '2024-08-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (65, 'ET0000000000000000', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (65, 'Zirlen Technologies Inc.', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (65, 'Richmond, VA', 'Virginia', '51760');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (69485, '[
  "Communication",
  "Microsoft Azure",
  "Project Management",
  "Big Data",
  "Interpersonal Communications",
  "Business Process",
  "Governance",
  "Data Protection Strategy",
  "Cloud Security",
  "Cloud Access Security Broker Tools (CASBs)",
  "Packaging And Labeling",
  "Scripting",
  "Data Discovery",
  "Amazon Web Services",
  "Business Strategies",
  "Information Privacy",
  "Data Governance",
  "Public Cloud",
  "Organizational Architecture",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (65, 69485);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (65, 65, 65, 65, '2024-06-04', '2024-06-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (66, 'ETB492027F4E7E773F', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (66, 'Cai', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (66, 'Boise, ID', 'Idaho', '16001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72356, '[
  "Debugging",
  "Customer Service",
  "Databricks",
  "FileZilla",
  "Azure Data Factory",
  "Writing",
  "Azure Data Lake",
  "WebMethods",
  "Performance Tuning",
  "Automation",
  "Parallel Patterns Library",
  "File Transfer Protocol (FTP)",
  "Apache Spark",
  "Data Warehousing",
  "Microsoft SQL Servers",
  "Job Scheduling (Inventory Management)",
  "Azure Databricks",
  "Operations",
  "Data Structures",
  "Service-Oriented Architecture",
  "Data Modeling",
  "Oracle Databases",
  "SQL (Programming Language)",
  "Power BI",
  "Technology Ecosystems",
  "DevOps",
  "Extract Transform Load (ETL)",
  "Problem Solving",
  "Report Designer",
  "Database Design"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (66, 72356);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (66, 66, 66, 66, '2024-07-31', '2024-08-31');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (67, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 5, 
        5, 104000, 104000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (67, 'Zenith Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (67, 'Framingham, MA', 'Massachusetts', '25017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (69763, '[
  "Merchandising",
  "Prioritization",
  "Key Performance Indicators (KPIs)",
  "Data Mart",
  "Retail Sales",
  "Exploratory Data Analysis",
  "Communication",
  "Multitasking",
  "Acceptance Testing",
  "Dashboard",
  "Audience Segmentation",
  "Decision Making",
  "Data Analysis",
  "Descriptive Statistics",
  "User Acceptance Testing (UAT)",
  "Critical Thinking",
  "Enterprise Desktop Administrator (Microsoft Certified IT Professional)",
  "Detail Oriented",
  "Operational Data Store",
  "Data Modeling",
  "Statistical Inference",
  "Ad Hoc Reporting",
  "Statistical Methods",
  "Influencing Skills",
  "Teamwork"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (67, 69763);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (67, 67, 67, 67, '2024-05-01', '2024-06-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (68, 'ET8AEDEB1F4C3091D3', 'Full-time (> 32 hours)', 6, 
        NULL, 144600, 241000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (68, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (68, 'Houston, TX', 'Texas', '48201');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (15085, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (68, 15085);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (68, 68, 68, 68, '2024-06-02', '2024-07-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (69, 'ETAA05A565FBE2A7FF', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (69, 'Pmi 2.0', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (69, 'Birmingham, AL', 'Alabama', '1073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (63206, '[
  "Applications Architecture",
  "Project Management Institute (PMI) Methodology"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (69, 63206);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (69, 69, 69, 69, '2024-05-06', '2024-05-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (70, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (70, 'Triumph Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (70, 'Radnor, PA', 'Pennsylvania', '42045');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (64318, '[
  "Reliability",
  "Enterprise Resource Planning",
  "Business Objectives",
  "Effective Communication",
  "Information Technology",
  "Management",
  "Business Systems",
  "Export Administration Regulations",
  "Continuous Improvement Process",
  "Solution Design",
  "Manufacturing Processes",
  "Communication",
  "Manufacturing Execution System (MES)",
  "Interpersonal Communications",
  "Influencing Skills",
  "Business Process",
  "Emerging Technologies",
  "Leadership",
  "Information Systems",
  "Decision Making",
  "Enterprise Architecture",
  "Architectural Design",
  "The Open Group Architecture Framework (TOGAF)",
  "TOGAF Certification",
  "Scalability",
  "Technology Solutions",
  "Problem Solving",
  "International Traffic In Arms Regulations",
  "Innovation",
  "Product Lifecycle Management",
  "Computer Engineering",
  "Collaboration",
  "Computer Science",
  "Zachman Framework"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (70, 64318);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (70, 70, 70, 70, '2024-07-09', '2024-09-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (71, 'ET773FAB07466A0766', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (71, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (71, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (67715, '[
  "Salesforce",
  "NoSQL",
  "Customer Service",
  "Management",
  "Functional Requirement",
  "Continuous Improvement Process",
  "Agile Methodology",
  "Microsoft Azure",
  ".NET Framework",
  "Expectation Management",
  "Automation",
  "Drools",
  "Timelines",
  "Oracle Databases",
  "Software Development Life Cycle",
  "Python (Programming Language)",
  "Time Management",
  "Advocacy",
  "Application Programming Interface (API)",
  "Interpersonal Communications",
  "Teamwork",
  "Java (Programming Language)",
  "Operations",
  "Requirements Analysis",
  "Organizational Skills",
  "Business Rules Engines",
  "Troubleshooting (Problem Solving)",
  "Product Leadership",
  "DevOps",
  "Test-Driven Development (TDD)",
  "Problem Solving",
  "Team Leadership",
  "PostgreSQL",
  "Computer Science",
  "Version Control"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (71, 67715);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (71, 71, 71, 71, '2024-06-12', '2024-07-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (72, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 13, 
        NULL, 94350, 127650);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (72, 'Boeing', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (72, 'Renton, WA', 'Washington', '53033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (87329, '[
  "Business Objectives",
  "Programming Languages",
  "Low Latency",
  "Key Performance Indicators (KPIs)",
  "Digital Dashboards",
  "Extract Transform Load (ETL)",
  "Data Engineering",
  "IBM Cognos Business Intelligence",
  "Google Analytics",
  "Python (Programming Language)",
  "Design Elements And Principles",
  "Dashboard",
  "Database Development",
  "Analytics",
  "Data Quality",
  "Supply Chain",
  "Java (Programming Language)",
  "Business Intelligence",
  "Supply Chain Acumen",
  "SQL (Programming Language)",
  "Scalability",
  "Data-Driven Decision Making",
  "SAS (Software)",
  "Data Analysis",
  "Web Development",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (72, 87329);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (72, 72, 72, 72, '2024-05-18', '2024-07-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (73, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (73, 'Elite Technical', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (73, 'Springfield, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (24962, '[
  "Programming Languages",
  "Research",
  "Information Technology",
  "Perl (Programming Language)",
  "Planning",
  "Data Modeling",
  "Web Applications",
  "Data Mining",
  "Data Science",
  "Data Warehousing",
  "Sampling (Statistics)",
  "Cyber Security",
  "Data Management",
  "amCharts",
  "Ordinary Least Squares (Regression Analysis)",
  "Algorithms",
  "Parsing",
  "Information Systems",
  "Application Programming Interface (API)",
  "IAM Level III Certification",
  "Mathematics",
  "Certified Chief Information Security Officer",
  "Data Analysis",
  "Software Engineering",
  "Automation",
  "Workflow Management",
  "Statistical Inference",
  "Certified Information Systems Security Professional",
  "Certified Information Security Manager",
  "Technical Documentation",
  "VBScript (Visual Basic Scripting Edition)",
  "Data Structures",
  "Statistical Hypothesis Testing",
  "Unix",
  "GIAC Certifications",
  "GIAC Security Leadership Certification",
  "Computer Engineering",
  "Data Visualization",
  "Experimental Design",
  "Tableau (Business Intelligence Software)",
  "Intelligence Analysis",
  "Computer Science",
  "R (Programming Language)",
  "Highcharts"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (73, 24962);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (73, 73, 73, 73, '2024-05-12', '2024-07-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (74, 'ET381283CF1B13F8AD', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (74, 'KPMG', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (74, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (94875, '[
  "Research",
  "Forecasting",
  "Management",
  "Conceptual Data Modeling",
  "Oracle Cloud",
  "Customer Service",
  "Financial Close",
  "Planning",
  "Practice Management",
  "Data Warehousing",
  "Data Management",
  "Consolidation",
  "Hybrid Online Analytical Processing",
  "Full Life Cycle Implementation",
  "Thought Leadership",
  "Governance",
  "Proposal Development",
  "Online Analytical Processing",
  "Leadership",
  "Budgeting",
  "Data Quality",
  "Master Of Business Administration (MBA)",
  "Enterprise Performance Management (EPM)",
  "Data Cleansing",
  "Management Information Systems",
  "Technology Solutions",
  "NextGen Enterprise Practice Management",
  "Relational Online Analytical Processing (ROLAP)",
  "Change Management",
  "Training And Development",
  "Stewardship",
  "Reengineering",
  "Extract Transform Load (ETL)",
  "Business Development",
  "Information Access",
  "Intellectual Capital",
  "Business Performance Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (74, 94875);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (74, 74, 74, 74, '2024-08-20', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (75, 'ETA6FC550E388A1B7C', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (75, 'Gebbs Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (75, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25376, '[
  "Healthcare Industry Knowledge",
  "NoSQL",
  "Programming Languages",
  "Research",
  "Database Storage Structures",
  "Data Science",
  "Communication",
  "Big Data",
  "Mathematics",
  "Data Analysis",
  "Statistics",
  "Electronic Medical Record",
  "Quick Learning",
  "Technical Documentation",
  "Consulting",
  "Program Management",
  "Problem Solving",
  "Writing",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (75, 25376);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (75, 75, 75, 75, '2024-07-12', '2024-07-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (76, 'ET83A2CCB7B31250D5', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (76, 'Resourcesoft', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (76, 'Houston, TX', 'Texas', '48201');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (98086, '[
  "Salesforce Commerce Cloud",
  "Scrum (Software Development)",
  "Agile Methodology",
  "Business Requirements",
  "Writing",
  "Regulatory Compliance",
  "Systems Architecture",
  "Software Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (76, 98086);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (76, 76, 76, 76, '2024-08-05', '2024-10-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (77, 'ET4102FD4D4822A1F0', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (77, 'Idr', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (77, 'Nashville, TN', 'Tennessee', '47037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (18534, '[
  "Research",
  "Income Tax",
  "Generally Accepted Accounting Principles",
  "Management",
  "Tax Planning",
  "Planning",
  "Mergers And Acquisitions",
  "Record Keeping",
  "Finance",
  "Tax Compliance Software",
  "Public Accounting",
  "Tax Accounting",
  "Corporate Tax",
  "Operations",
  "ASC 740 (Accounting For Income Taxes)",
  "Microsoft Office",
  "Accounting",
  "Screen Reader",
  "Transfer Pricing",
  "Auditing",
  "Divestitures",
  "SAP Production Planning"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (77, 18534);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (77, 77, 77, 77, '2024-08-21', '2024-10-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (78, 'ETB1B14A5CB3C33E89', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (78, 'Chewy', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (78, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (44660, '[
  "Merchandising",
  "Business Reporting",
  "Business Systems",
  "Inventory Management",
  "Safety Assurance",
  "Advanced Mathematics",
  "Data Availability",
  "Data Warehousing",
  "Data Engineering",
  "Stock Keeping Unit",
  "Finance",
  "Dashboard",
  "Decision Making",
  "Information Management",
  "Statistics",
  "Profit And Loss (P&L) Management",
  "Reporting Tools",
  "Key Performance Indicators (KPIs)",
  "Data Analysis",
  "Data Integrity",
  "Economics",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Scalability",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (78, 44660);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (78, 78, 78, 78, '2024-09-11', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (79, 'ETBA9FC7622AC18AEE', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (79, 'Independence Blue Cross', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (79, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (20084, '[
  "Customer Service",
  "Communication",
  "Management",
  "Technical Acumen",
  "Purchasing",
  "Problem Solving",
  "Prioritization",
  "Ability To Meet Deadlines",
  "Professionalism",
  "Underwriting",
  "Time Management",
  "Adaptability",
  "Marketing",
  "Critical Thinking",
  "Operations",
  "Organizational Skills",
  "Business Relationship Management",
  "Troubleshooting (Problem Solving)",
  "Sales",
  "Smartphone Operation",
  "Microsoft Office",
  "Authentications"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (79, 20084);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (79, 79, 79, 79, '2024-07-28', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (80, 'ETDEE71C11E304A852', 'Full-time (> 32 hours)', NULL, 
        NULL, 70000, 75000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (80, 'Health Services Advisory Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (80, 'Des Moines, IA', 'Iowa', '19153');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (14876, '[
  "Electronic Medical Record",
  "Relational Databases",
  "Mathematics",
  "Data Validation",
  "Management",
  "Healthcare Quality",
  "Vital Statistics",
  "Epidemiology",
  "Intellectual Curiosity",
  "Data Science",
  "Microsoft Word",
  "Reference Data",
  "Innovation",
  "Professionalism",
  "Statistics",
  "Machine Learning",
  "Medical Prescription",
  "Research Design",
  "Writing",
  "Statistical Modeling",
  "SAS (Software)",
  "Language Experience Approach",
  "Economics",
  "Advanced Analytics",
  "Statistical Programming",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (80, 14876);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (80, 80, 80, 80, '2024-09-26', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (81, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (81, 'BD', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (81, 'Covington, GA', 'Georgia', '13217');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (13943, '[
  "Healthcare Industry Knowledge",
  "Research",
  "Patient Safety",
  "Causal Inference",
  "Process Improvement",
  "Applied Statistics",
  "Automation",
  "Data Science",
  "Data Warehousing",
  "Dashboard",
  "Data Quality",
  "Information Management",
  "Application Programming Interface (API)",
  "Machine Learning",
  "Applied Mathematics",
  "Business Intelligence",
  "Data Analysis",
  "SQL (Programming Language)",
  "Scalability",
  "Data Modeling",
  "Writing",
  "Self-Discipline",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (81, 13943);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (81, 81, 81, 81, '2024-06-12', '2024-08-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (82, 'ET6B57FB37DA4AA8A8', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (82, 'Threepds', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (82, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93275, '[
  "Value Creation",
  "Inventory Staging",
  "Databricks",
  "Asset Classes",
  "Proactivity",
  "Solution Delivery",
  "Logical Data Models",
  "Star Schema",
  "Management",
  "Cloud Infrastructure",
  "Investments",
  "Data Modeling",
  "Apache NiFi",
  "Data Architecture",
  "Continuous Improvement Process",
  "Agile Methodology",
  "Application Monitoring",
  "Microservices",
  "Software Design Patterns",
  "Data Lakehouse",
  "Self-Motivation",
  "Data Science",
  "Systems Development Life Cycle",
  "Apache Kafka",
  "Shift-Left Testing",
  "Data Engineering",
  "Collibra (Software)",
  "Metadata Management",
  "Intellectual Curiosity",
  "Erwin (Data Modeling Software)",
  "Data Warehousing",
  "Tooling",
  "Technical Design",
  "Dimensional Modeling",
  "Informatica",
  "Data Management",
  "Kubernetes",
  "Big Data",
  "Securities (Finance)",
  "Technology Roadmaps",
  "Influencing Skills",
  "Self Service Technologies",
  "Waterfall Methodology",
  "Software Development Life Cycle",
  "Innovation",
  "Governance",
  "Python (Programming Language)",
  "Talent Pipelining",
  "Resilience",
  "Leadership",
  "Chartered Financial Analyst",
  "Program Management",
  "Communication",
  "Data Security",
  "Architectural Patterns",
  "Electronic Data Capture (EDC)",
  "Scrum (Software Development)",
  "Virtual Teams",
  "FactSet (Analytics Software)",
  "SQL (Programming Language)",
  "Technology Solutions",
  "Technology Strategies",
  "Containerization",
  "Design Thinking",
  "Amazon Web Services",
  "DevOps",
  "Software Development",
  "Environmental Social And Corporate Governance (ESG)",
  "Data Governance",
  "Business Intelligence",
  "Solution Architecture",
  "Relational Database Management Systems",
  "Persistence",
  "Project Management",
  "Investment Management",
  "Test Engineering",
  "Data Sharing",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (82, 93275);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (82, 82, 82, 82, '2024-07-08', '2024-08-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (83, 'ET2D2F5307DB17455A', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (83, 'Cynet Systems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (83, 'Raleigh, NC', 'North Carolina', '37183');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (82237, '[
  "MySQL",
  "SQL Server Integration Services (SSIS)",
  "IBM DB2",
  "Microsoft Excel",
  "Microsoft Azure",
  "Data Warehousing",
  "Leadership",
  "Azure Data Factory",
  "Data Analysis",
  "Database Management Systems",
  "Data Modeling",
  "SQL (Programming Language)",
  "Data Sharing",
  "Microsoft Access"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (83, 82237);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (83, 83, 83, 83, '2024-09-05', '2024-09-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (84, 'ET387CF1EDBD6A70A9', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (84, 'Compunnel Software Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (84, 'Des Moines, IA', 'Iowa', '19153');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2415, '[
  "Traceability Matrix",
  "User Story",
  "Mockup",
  "Data Modeling",
  "Dataflow",
  "Data Profiling",
  "Data Warehousing",
  "Unstructured Data",
  "Business Requirements Documentation",
  "Data Analysis",
  "Data Mapping",
  "Business Requirements",
  "Stakeholder Management",
  "Extract Transform Load (ETL)",
  "JSON",
  "Process Flow Diagrams",
  "Systems Design",
  "Business Systems Analysis",
  "System Requirements"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (84, 2415);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (84, 84, 84, 84, '2024-05-17', '2024-07-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (85, 'ET0EFA4EC2E0873CD1', 'Full-time (> 32 hours)', 4, 
        NULL, 187200, 208000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (85, 'Donnelly & Moore Corporation', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (85, 'Paramus, NJ', 'New Jersey', '34003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (67204, '[
  "Management",
  "Management Information Systems",
  "Agile Methodology",
  "Functional Design",
  "Planning",
  "Change Control",
  "Safety Assurance",
  "Communication",
  "Coordinating",
  "Requirements Elicitation",
  "Business Process",
  "Waterfall Methodology",
  "User Requirements Documents",
  "Billing",
  "Business Requirements",
  "Field Service Management",
  "Troubleshooting (Problem Solving)",
  "Ad Hoc Reporting",
  "Quality Assurance",
  "Usability Testing",
  "Information Technology Infrastructure Library",
  "Workforce Management",
  "Customer Service",
  "Computer Science",
  "User Feedback"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (85, 67204);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (85, 85, 85, 85, '2024-05-21', '2024-06-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (86, 'ETB6B58ED607480784', 'Full-time (> 32 hours)', NULL, 
        NULL, 44956, 92475);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (86, 'ICF International', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (86, 'Rockville, MD', 'Maryland', '24031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (92947, '[
  "Stata",
  "Research",
  "Syntax",
  "Statistical Software",
  "Report Writing",
  "Memos",
  "Resilience",
  "Foreign Language",
  "Data Analysis",
  "Statistics",
  "Machine Learning",
  "Teamwork",
  "French Language",
  "Economics",
  "Food Security",
  "Agriculture",
  "Surveys",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (86, 92947);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (86, 86, 86, 86, '2024-09-23', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (87, 'ETA9B609BE4E431E44', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (87, 'Sps', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (87, 'Salt Lake City, UT', 'Utah', '49035');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (88945, '[
  "Detail Oriented",
  "Mortgage Loans",
  "Microsoft Access",
  "Loans",
  "Communication",
  "Invoicing",
  "Reconciliation",
  "SQL (Programming Language)",
  "Ad Hoc Reporting",
  "Balancing (Ledger/Billing)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (87, 88945);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (87, 87, 87, 87, '2024-08-13', '2024-10-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (88, 'ET1529CC7C728B7EFE', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (88, 'Amentum', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (88, 'Annapolis Junction, MD', 'Maryland', '24027');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (36267, '[
  "Library Science",
  "Microsoft Word",
  "Atlassian Confluence",
  "Microsoft PowerPoint",
  "Word Processing",
  "JIRA",
  "Report Writing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (88, 36267);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (88, 88, 88, 88, '2024-05-04', '2024-05-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (89, 'ET643D938D45ED6673', 'Full-time (> 32 hours)', 15, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (89, 'Freeman', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (89, 'Orlando, FL', 'Florida', '12095');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (30914, '[
  "Research",
  "Gap Analysis",
  "Order To Cash Process",
  "Technology Strategies",
  "SAP Sales And Distribution",
  "Communication",
  "Dataflow",
  "Requirements Elicitation",
  "Supply Chain Management",
  "Finance",
  "System Configuration",
  "Salesforce",
  "Mentorship",
  "SAP Applications",
  "Revenue Recognition",
  "Leadership",
  "Data Security",
  "Problem Management",
  "Technological Change",
  "User Acceptance Testing (UAT)",
  "Billing",
  "Strategic Planning",
  "Business Requirements",
  "Solution Architecture",
  "Consulting",
  "Data Structures",
  "Business Intelligence",
  "Unit Testing",
  "Computer Science",
  "Meeting Facilitation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (89, 30914);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (89, 89, 89, 89, '2024-06-21', '2024-08-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (90, 'ETA4FCBAAC5850078C', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (90, 'CDW', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (90, '[Unknown City], NJ', 'New Jersey', '34999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (42861, '[
  "Management",
  "Technical Writing",
  "Planning",
  "Endpoint Security",
  "GIAC Global Industrial Cyber Security Professional",
  "GIAC Certifications",
  "Vulnerability Assessments",
  "Business Strategies",
  "Incident Response",
  "Collaboration",
  "Security Strategies",
  "Brand Awareness",
  "Mentorship",
  "Communication",
  "Leadership",
  "IT Security",
  "Technical Leadership",
  "Internet Of Things (IoT)",
  "Risk Analysis",
  "Intrusion Detection Systems",
  "Operations",
  "Security Information And Event Management (SIEM)",
  "Program Development",
  "Cyber Security",
  "Industrial Control Systems",
  "Virtual Teams",
  "Corporate Security",
  "Certified Information Systems Security Professional",
  "Programmable Logic Controllers",
  "Consulting",
  "Complex Problem Solving",
  "Firewall",
  "Sales",
  "Creative Writing",
  "Network Segmentation",
  "IT Security Architecture",
  "Vulnerability",
  "Meeting Facilitation",
  "Supervisory Control And Data Acquisition (SCADA)",
  "Security Policies",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (90, 42861);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (90, 90, 90, 90, '2024-06-18', '2024-08-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (91, 'ET62AFD30E16B95621', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (91, 'Logix Shapers Offshore Services Pvt. Ltd.', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (91, 'Jersey City, NJ', 'New Jersey', '34017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (92861, '[
  "Management",
  "Oracle Cloud",
  "Safety Assurance",
  "Test Strategy",
  "Test Planning",
  "PL/SQL",
  "Test Probe",
  "Test Case",
  "Performance Testing",
  "Test Automation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (91, 92861);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (91, 91, 91, 91, '2024-05-24', '2024-05-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (92, 'ETB85A6A9082153D58', 'Full-time (> 32 hours)', 5, 
        NULL, 85600, 128400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (92, 'Prime Therapeutics', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (92, 'Richmond, VA', 'Virginia', '51760');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (11194, '[
  "Research",
  "Rapport Building",
  "Planning",
  "Advanced Mathematics",
  "Finance",
  "Influencing Skills",
  "Network Management",
  "Communication",
  "Financial Data",
  "Management Reporting",
  "Accountability",
  "Operations",
  "Data Analysis",
  "Network Performance Management",
  "Ad Hoc Reporting",
  "Troubleshooting (Problem Solving)",
  "Consulting",
  "Financial Services"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (92, 11194);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (92, 92, 92, 92, '2024-08-20', '2024-09-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (93, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 6, 
        NULL, 59100, 124100);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (93, 'CACI International', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (93, 'Tampa, FL', 'Florida', '12057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (49036, '[
  "Microsoft SharePoint",
  "Workflow Management",
  "Microsoft Word",
  "Grammar",
  "Quality Control",
  "Microsoft PowerPoint",
  "Business Process",
  "Self Service Technologies",
  "Style Guides",
  "Templates",
  "Word Processing",
  "Data Analysis",
  "Secret Internet Protocol Router Network (SIPRNet)",
  "Microsoft Excel",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Digital Publishing",
  "Task Management",
  "Writing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (93, 49036);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (93, 93, 93, 93, '2024-05-22', '2024-07-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (94, 'ETA6C910340E81639B', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (94, 'Chenega Corporation', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (94, 'Arlington, VA', 'Virginia', '51013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90230, '[
  "Information Technology",
  "Client Services",
  "DevSecOps",
  "Planning",
  "Agile Methodology",
  "Digital Modeling And Fabrication",
  "Big Data",
  "Interpersonal Communications",
  "Business Process",
  "Communication",
  "Model Based Systems Engineering",
  "Distributed Control Systems",
  "Information Management",
  "Collaboration",
  "Software Architecture",
  "Enterprise Architecture",
  "Project Estimation",
  "Business Transformation",
  "Systems Architecture",
  "Service-Oriented Architecture",
  "Project Scoping",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Organizational Structure",
  "DoDAF",
  "MATLAB",
  "Software Development",
  "Task Management",
  "Systems Engineering",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (94, 90230);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (94, 94, 94, 94, '2024-07-22', '2024-08-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (95, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 70687, 84000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (95, 'Alliant Capital Management', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (95, 'Buffalo, NY', 'New York', '36029');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72931, '[
  "Detail Oriented",
  "Power BI",
  "Analytical Skills",
  "Data Science",
  "Collaboration",
  "Data Management",
  "Communication",
  "Dashboard",
  "Key Performance Indicators (KPIs)",
  "Data Analysis",
  "Statistics",
  "SQL (Programming Language)",
  "Data Collection",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (95, 72931);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (95, 95, 95, 95, '2024-06-19', '2024-07-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (96, 'ET450075C23CD8AA68', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (96, 'Io Associates', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (96, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (76776, '[
  "Linear Regression",
  "Data Science",
  "Python (Programming Language)",
  "Xgboost",
  "Random Forest Algorithm",
  "Predictive Modeling",
  "SQL (Programming Language)",
  "Data-Driven Decision Making"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (96, 76776);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (96, 96, 96, 96, '2024-09-26', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (97, 'ET8A7C53D599F68AA5', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (97, 'Vega Consulting Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (97, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (29949, '[
  "Dynatrace",
  "Healthcare Industry Knowledge",
  "Communication",
  "Data Analysis",
  "SQL (Programming Language)",
  "Jenkins",
  "Quick Learning",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (97, 29949);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (97, 97, 97, 97, '2024-07-12', '2024-07-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (98, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', 2, 
        NULL, 81000, 134000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (98, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (98, 'O'Fallon, IL', 'Illinois', '17163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (36182, '[
  "Vendor Relationship Management",
  "Gap Analysis",
  "Oracle Cloud",
  "Full Life Cycle Implementation",
  "Business Process",
  "Oracle Learning Cloud Certification",
  "Business Requirements",
  "Oracle Human Capital Management (HCM)",
  "Human Capital",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (98, 36182);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (98, 98, 98, 98, '2024-08-20', '2024-10-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (99, 'ET93079B3900280AC7', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (99, 'Sunrun', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (99, 'Nashville, TN', 'Tennessee', '47037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (43823, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (99, 43823);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (99, 99, 99, 99, '2024-09-19', '2024-10-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (100, 'ETB3076C06EF3E9269', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (100, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (100, 'Battletown, KY', 'Kentucky', '21163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (98396, '[
  "Internal Controls",
  "Records Management",
  "Proactivity",
  "Internal Auditing",
  "Securities (Finance)",
  "Microsoft Outlook",
  "Document Management Systems",
  "Document Management",
  "Management Information Systems",
  "Operations",
  "Detail Oriented",
  "Securities Trading",
  "Reference Cards",
  "Microsoft Excel",
  "Verbal Communication Skills",
  "Financial Services"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (100, 98396);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (100, 100, 100, 100, '2024-09-25', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (101, 'ET4E2C03B99534BDBC', 'Full-time (> 32 hours)', 6, 
        NULL, 84360, 148000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (101, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (101, 'Tampa, FL', 'Florida', '12057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85783, '[
  "Effective Communication",
  "Mitigation",
  "Certified Information System Auditor (CISA)",
  "ServiceNow",
  "Information Technology",
  "Management",
  "Governance Risk Management And Compliance",
  "Data Loss Prevention",
  "Continuous Improvement Process",
  "Analytical Skills",
  "Audit Management",
  "Communication",
  "Auditing",
  "Cyber Security",
  "Governance",
  "Cyber Governance",
  "Leadership",
  "Risk Analysis",
  "Certified In Risk And Information Systems Control",
  "Business Continuity",
  "Resilience",
  "IT Service Management",
  "Strategic Planning",
  "Project Management",
  "Operations",
  "International Laws",
  "Certified In The Governance Of Enterprise IT",
  "Scalability",
  "Certified Information Systems Security Professional",
  "Consulting",
  "Cyber Threat Intelligence",
  "Control Objectives For Information And Related Technology (COBIT)",
  "Sales",
  "DevOps",
  "Process Improvement",
  "Business Administration",
  "ISO/IEC 27001",
  "Vulnerability",
  "Problem Solving",
  "Strategic Roadmaps",
  "Cyber Risk",
  "Risk Management",
  "Computer Science",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (101, 85783);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (101, 101, 101, 101, '2024-07-27', '2024-09-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (102, 'ETB5F6D01197F8CE6B', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (102, 'ClifyX', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (102, 'Raleigh, NC', 'North Carolina', '37183');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80521, '[
  "Programming Languages",
  "IBM DB2",
  "Extract Transform Load (ETL)",
  "Safety Assurance",
  "IBM InfoSphere DataStage",
  "Communication",
  "Systems Development Life Cycle",
  "Data Analysis",
  "SAP Applications",
  "Software Engineering",
  "Transact-SQL",
  "SQL (Programming Language)",
  "Database Design"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (102, 80521);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (102, 102, 102, 102, '2024-09-18', '2024-09-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (103, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', 5, 
        NULL, 113000, 188000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (103, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (103, 'Little Rock, AR', 'Arkansas', '5119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90496, '[
  "Vendor Relationship Management",
  "Gap Analysis",
  "Management",
  "Oracle Cloud",
  "Full Life Cycle Implementation",
  "Business Process",
  "Business Requirements",
  "Oracle Human Capital Management (HCM)",
  "Human Capital",
  "Public Service",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (103, 90496);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (103, 103, 103, 103, '2024-09-12', '2024-09-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (104, 'ET8AEDEB1F4C3091D3', 'Full-time (> 32 hours)', 6, 
        NULL, 144600, 241000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (104, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (104, 'Denver, CO', 'Colorado', '8031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (15085, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (104, 15085);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (104, 104, 104, 104, '2024-06-02', '2024-07-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (105, 'ET6724635AE1211F03', 'Full-time (> 32 hours)', NULL, 
        NULL, 166400, 166400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (105, 'Gsk Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (105, 'Richmond, VA', 'Virginia', '51760');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (10405, '[
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
  "Oracle E-Business Suite",
  "Accounts Receivable"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (105, 10405);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (105, 105, 105, 105, '2024-07-17', '2024-07-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (106, 'ET87C6D51128F21BFE', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (106, 'Navtech Co.,Ltd', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (106, 'Dallas, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (36553, '[
  "Communication",
  "Influencing Skills",
  "Enterprise Integration",
  "Enterprise Architecture",
  "Amazon Web Services",
  "Software As A Service (SaaS)",
  "Product Software Implementation Method",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (106, 36553);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (106, 106, 106, 106, '2024-05-16', '2024-06-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (107, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (107, 'Insight Global', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (107, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (50227, '[
  "Power BI",
  "Database Storage Structures",
  "Salesforce Marketing Cloud",
  "Automation",
  "Sales Prospecting",
  "Communication",
  "Dashboard",
  "DbVisualizer",
  "Marketing",
  "Data Analysis",
  "SQL (Programming Language)",
  "SAS (Software)",
  "Mortgage Loans",
  "Process Improvement",
  "Teradata SQL",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (107, 50227);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (107, 107, 107, 107, '2024-07-17', '2024-07-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (108, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 1, 
        1, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (108, 'Condado Tacos', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (108, 'Columbus, OH', 'Ohio', '39049');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (14806, '[
  "Ability To Meet Deadlines",
  "Management",
  "Application Programming Interface (API)",
  "Continuous Improvement Process",
  "Data Processing",
  "Automation",
  "Data Warehousing",
  "Lifting Ability",
  "Dashboard",
  "Decision Making",
  "Data Analysis",
  "SQL (Programming Language)",
  "Programming Tools",
  "Extract Transform Load (ETL)",
  "Solution Architecture"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (108, 14806);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (108, 108, 108, 108, '2024-05-14', '2024-05-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (109, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 10, 
        10, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (109, 'CDW', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (109, 'Raleigh, NC', 'North Carolina', '37183');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (42940, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (109, 42940);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (109, 109, 109, 109, '2024-08-13', '2024-08-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (110, 'ETBD027FFC94F9DEC7', 'Full-time (> 32 hours)', 2, 
        NULL, 39520, 44928);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (110, 'Cognizant Technology Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (110, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (42960, '[
  "Milestones (Project Management)",
  "Virtual Reality",
  "Augmented Reality",
  "Research",
  "Data Validation",
  "Prioritization",
  "Design Strategies",
  "Google Meet",
  "Timelines",
  "Scheduling",
  "Collections",
  "Data Analysis",
  "Digital Technology",
  "Operations",
  "Google Workspace",
  "Triage",
  "Workflow Management",
  "Data Collection",
  "Coordinating",
  "Troubleshooting (Problem Solving)",
  "Data Visualization",
  "User Feedback"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (110, 42960);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (110, 110, 110, 110, '2024-09-19', '2024-10-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (111, 'ET5CC33E4DE967CA14', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (111, 'Hagerty Insurance Agency', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (111, 'Remote, OR', 'Oregon', '41011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25040, '[
  "Business Objectives",
  "Presentations",
  "Financial Statements",
  "Predictive Modeling",
  "Management",
  "Communication",
  "Enthusiasm",
  "Operational Efficiency",
  "Talent Management",
  "Statistical Analysis",
  "Automation",
  "Workday (Software)",
  "Data Management",
  "Predictive Analytics",
  "Self Service Technologies",
  "Thought Leadership",
  "Data Analysis",
  "Data-Driven Decision Making",
  "Internal Controls",
  "Dashboard",
  "Leadership",
  "Machine Learning",
  "Reporting Tools",
  "Business Operations",
  "SQL (Programming Language)",
  "Organizational Performance",
  "People Analytics",
  "Sarbanes-Oxley Act (SOX) Compliance",
  "Forecasting",
  "Statistical Methods",
  "Process Improvement",
  "Problem Solving",
  "Advanced Analytics",
  "Data Visualization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (111, 25040);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (111, 111, 111, 111, '2024-09-23', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (112, 'ETD326FE202B769CD9', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (112, 'Allegis Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (112, 'Coraopolis, PA', 'Pennsylvania', '42003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81366, '[
  "Relational Databases",
  "Code Review",
  "NoSQL",
  "Dataset",
  "BigQuery",
  "Microsoft SQL Servers",
  "C++ (Programming Language)",
  "Development Management",
  "IBM DB2",
  "Warehousing",
  "Agile Methodology",
  "Microsoft Azure",
  "Supply Chain",
  "Logistics",
  "Atlassian Confluence",
  "Github",
  "Unix",
  "Communication",
  "Data Engineering",
  "Tooling",
  "Amazon Redshift",
  "Data Management",
  "Big Data",
  "Linux",
  "Scrum (Software Development)",
  "Python (Programming Language)",
  "Apache Spark",
  "Data Warehousing",
  "Data Quality",
  "Looker Analytics",
  "Data Analysis",
  "JIRA",
  "Marketing",
  "Java (Programming Language)",
  "Data Lakes",
  "Synapse Citrix",
  "MicroStrategy",
  "SQL (Programming Language)",
  "Data Pipelines",
  "Machine Learning",
  "Amazon Web Services",
  "Power BI",
  "Google Cloud Platform (GCP)",
  "ANSYS Meshing",
  "Extract Transform Load (ETL)",
  "Artificial Intelligence",
  "Business Intelligence",
  "Problem Solving",
  "Scala (Programming Language)",
  "MapReduce",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (112, 81366);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (112, 112, 112, 112, '2024-07-03', '2024-07-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (113, 'ETC8A11EF058B8166F', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (113, 'Bbb Industries', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (113, 'Irving, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (27890, '[
  "American Society For Clinical Pathology (ASCP) Certification",
  "E-Business",
  "Oracle E-Business Suite",
  "Procurement",
  "Information Technology",
  "Business Systems",
  "Oracle Cloud",
  "On Prem",
  "Application Programming Interface (API)",
  "Order To Cash Process",
  "Planning",
  "Cross-Functional Collaboration",
  "Business Process",
  "Warehouse Management Systems",
  "Professionalism",
  "Oracle Workflow",
  "Technical Leadership",
  "PL/SQL",
  "Supply Chain",
  "Material Requirements Planning",
  "Business Requirements",
  "Operations",
  "Business Operations",
  "SQL (Programming Language)",
  "Supply And Demand",
  "Consulting",
  "System Implementation",
  "Verbal Communication Skills",
  "Change Management",
  "Sales",
  "Warehouse Management",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (113, 27890);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (113, 113, 113, 113, '2024-07-21', '2024-09-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (114, 'ET85C314DE011A74C5', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (114, 'Bestica', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (114, 'Dayton, OH', 'Ohio', '39113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (51052, '[
  "Research",
  "Advanced Analytics",
  "Epidemiology",
  "Aviation Medicine",
  "Auditing",
  "Healthcare Analytics",
  "Human Musculoskeletal System",
  "Risk Reduction",
  "Program Management",
  "Data Analysis",
  "Statistics",
  "Mental Health",
  "Medical Records",
  "Analytical Dashboard",
  "Non-Disclosure Agreement (Intellectual Property Law)",
  "Evidence-Based Practice",
  "Accountability",
  "Population Health",
  "Clinical Surveillance",
  "SQL (Programming Language)",
  "Program Development",
  "SAS (Software)",
  "Real Time Data",
  "Visual Analytics",
  "Apple IOS",
  "Clinical Study Design"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (114, 51052);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (114, 114, 114, 114, '2024-08-09', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (115, 'ETA945BF69C78F1F2B', 'Full-time (> 32 hours)', NULL, 
        NULL, 66560, 72800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (115, 'Volt', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (115, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (65199, '[
  "Detail Oriented",
  "Management",
  "Microsoft Excel",
  "Planning",
  "Internal Reporting",
  "External Reporting",
  "Big Data",
  "Sales Reporting",
  "Sales Management",
  "Governance",
  "Dashboard",
  "Presentations",
  "Data Analysis",
  "Statistics",
  "SAP Applications",
  "Marketing",
  "Writing",
  "Customer Relationship Management",
  "Pivot Tables And Charts",
  "Sales",
  "Vlookups",
  "Tableau (Business Intelligence Software)",
  "Preparing Executive Summaries",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (115, 65199);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (115, 115, 115, 115, '2024-07-08', '2024-08-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (116, 'ETE3CC2FB59D9F934F', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (116, 'Northwest Bank', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (116, 'Columbus, OH', 'Ohio', '39049');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (88695, '[
  "Lifecycle Management",
  "Data Modeling",
  "Data Governance",
  "Information Technology",
  "Management",
  "Data Control",
  "Planning",
  "Metadata Management",
  "Loss Prevention",
  "Investigation",
  "Data Profiling",
  "Data Management",
  "Influencing Skills",
  "Informatics",
  "Governance",
  "Data Quality",
  "Teamwork",
  "Management Information Systems",
  "Operations",
  "Banking",
  "Workflow Management",
  "Refining",
  "Data Acquisition",
  "Data Ingestion",
  "Microsoft Office",
  "Quality Management",
  "Management Training And Development",
  "Product Demonstration",
  "Information Architecture",
  "Financial Services"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (116, 88695);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (116, 116, 116, 116, '2024-09-11', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (117, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, 63000, 93000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (117, 'Ramsey Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (117, 'Nashville, TN', 'Tennessee', '47037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (38086, '[
  "Data Modeling",
  "Product Analytics",
  "Analytical Skills",
  "Statistical Analysis",
  "Self Service Technologies",
  "Python (Programming Language)",
  "Leadership",
  "Communication",
  "Data Analysis",
  "SQL (Programming Language)",
  "Scripting",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (117, 38086);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (117, 117, 117, 117, '2024-05-24', '2024-06-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (118, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (118, 'Ssi People ', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (118, 'Beaverton, OR', 'Oregon', '41067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (24890, '[
  "Workflow Management",
  "Management",
  "Communication",
  "Excel Formulas",
  "Robotic Process Automation",
  "Agile Methodology",
  "Problem Solving",
  "Business Acumen",
  "Airtable",
  "Data Mining",
  "Business Process",
  "Innovation",
  "Dashboard",
  "Time Management",
  "Data Cleansing",
  "User Acceptance Testing (UAT)",
  "Operations",
  "Writing",
  "Data Analysis",
  "Alteryx",
  "Excel Macros",
  "Coordinating",
  "Technical Documentation",
  "SQL (Programming Language)",
  "Data Visualization",
  "Apache Yarn",
  "Tableau (Business Intelligence Software)",
  "Process Improvement"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (118, 24890);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (118, 118, 118, 118, '2024-08-26', '2024-08-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (119, 'ET4E1A48DAEAA2FC6C', 'Full-time (> 32 hours)', 12, 
        NULL, 70000, 130000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (119, 'S2technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (119, 'Suffolk, VA', 'Virginia', '51800');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (94, '[
  "Operations",
  "Concept Of Operations",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Machine Learning",
  "Top Secret Clearance",
  "Risk Analysis",
  "Microsoft Office",
  "Artificial Intelligence",
  "Writing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (119, 94);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (119, 119, 119, 119, '2024-05-15', '2024-07-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (120, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (120, 'Serigor', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (120, 'Richmond, VA', 'Virginia', '51087');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (98970, '[
  "Management",
  "Analytical Skills",
  "Statistical Analysis",
  "Data Processing",
  "Communication",
  "Python (Programming Language)",
  "Templates",
  "Excel Macros",
  "Detail Oriented",
  "Data Analysis",
  "Power BI",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (120, 98970);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (120, 120, 120, 120, '2024-06-12', '2024-06-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (121, 'ET03478B87CA774E46', 'Full-time (> 32 hours)', NULL, 
        NULL, 65000, 65000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (121, 'Society For College And University Planning', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (121, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97999, '[
  "Customer Service",
  "Research",
  "Syntax",
  "Prioritization",
  "Predictive Modeling",
  "Course Evaluations",
  "Data Science",
  "Research Methodologies",
  "Interpersonal Communications",
  "Ability To Meet Deadlines",
  "Verbal Communication Skills",
  "Data Manipulation",
  "Dashboard",
  "Economics",
  "Communication",
  "Data Analysis",
  "Strategic Decision Making",
  "Relational Databases",
  "Troubleshooting (Problem Solving)",
  "Institutional Research",
  "SPSS (Statistical Software)",
  "Computer Programming",
  "Presentations",
  "Team Oriented",
  "PeopleSoft Applications",
  "Writing",
  "Survey Research",
  "Data Visualization",
  "Surveys",
  "Information Privacy"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (121, 97999);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (121, 121, 121, 121, '2024-06-12', '2024-07-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (122, 'ET6A41A608AC27E8E0', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (122, 'Chewy', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (122, 'Garland, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93378, '[
  "Pivot Tables And Charts",
  "Business Objectives",
  "Customer Service",
  "Presentations",
  "Forecasting",
  "Communication",
  "Empathy",
  "Continuous Improvement Process",
  "Planning",
  "Performance Management",
  "Utilization Management",
  "Data Management",
  "Data Architecture",
  "Finance",
  "Ability To Meet Deadlines",
  "Data Manipulation",
  "Patience",
  "Python (Programming Language)",
  "Time Management",
  "Leadership",
  "Statistics",
  "Call Center Experience",
  "Visual Basic For Applications",
  "Operations",
  "SQL (Programming Language)",
  "Excel Macros",
  "Service Level",
  "Workforce Management",
  "Business Administration",
  "Kronos (Timekeeping Software)",
  "Innovation",
  "Team Performance Management",
  "Descriptive Analytics",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (122, 93378);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (122, 122, 122, 122, '2024-06-14', '2024-09-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (123, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (123, 'Ccf Holdings', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (123, 'Springfield, MO', 'Missouri', '29077');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79267, '[
  "Management",
  "Customer Service"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (123, 79267);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (123, 123, 123, 123, '2024-09-30', '2024-10-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (124, 'ETF88DD697A2729689', 'Full-time (> 32 hours)', 5, 
        NULL, 37440, 37440);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (124, 'Allied Universal', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (124, 'Las Vegas, NV', 'Nevada', '32003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (34915, '[
  "Customer Service",
  "Emergency Response",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (124, 34915);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (124, 124, 124, 124, '2024-08-05', '2024-08-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (125, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (125, 'Conclusion', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (125, 'Nederland, TX', 'Texas', '48245');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (62878, '[
  "Debugging",
  "Purchasing",
  "Master Fitness Specialist Certification",
  "Aftercare",
  "Microsoft Windows NT",
  "OutSystems",
  "Presales",
  "SAP Applications",
  "SAP EWM",
  "Supply Chain",
  "Warehousing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (125, 62878);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (125, 125, 125, 125, '2024-07-24', '2024-09-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (126, 'ET741053BEBBC9F7BF', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (126, 'Royal Botanic Gardens, Kew', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (126, 'Richmond, VA', 'Virginia', '51760');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26051, '[
  "Microsoft Dynamics CRM",
  "Financial Management",
  "Microsoft Dynamics",
  "Business Process",
  "User Requirements Documents",
  "Information Systems",
  "Consulting",
  "Customer Relationship Management",
  "Customer Service",
  "Enterprise Application Software",
  "Business Administration",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (126, 26051);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (126, 126, 126, 126, '2024-08-04', '2024-09-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (127, 'ETA4FCBAAC5850078C', 'Full-time (> 32 hours)', 10, 
        NULL, 129000, 140000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (127, 'Vigor Industrial', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (127, 'Portland, OR', 'Oregon', '41067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (14100, '[
  "GIAC Certifications",
  "Mitigation",
  "Certified Information System Auditor (CISA)",
  "Management",
  "Identity And Access Management",
  "Vulnerability Management",
  "Microsoft Azure",
  "Planning",
  "Empirical Analysis",
  "Endpoint Security",
  "Influencing Skills",
  "Cyber Threat Intelligence",
  "NIST 800",
  "Auditing",
  "Cyber Security",
  "Interpersonal Communications",
  "Technology Roadmaps",
  "Secret Clearance",
  "Technical Services",
  "Domainkeys Identified Mail",
  "Risk Reduction",
  "Mentorship",
  "CompTIA Advanced Security Practitioner (CASP+)",
  "Encryption",
  "Decision Making",
  "Security Controls",
  "Fortinet",
  "Enterprise Security",
  "Microsoft Teams",
  "Network Infrastructure",
  "Risk Mitigation",
  "CISCO Certified Network Professional - Security",
  "Cisco Certified Network Professional",
  "End-User Training And Support",
  "Certified Cloud Security Professional (CCSP)",
  "Certified Information Systems Security Professional",
  "IAT Level III Certification",
  "Advising",
  "GIAC Certified Enterprise Defender (GCED)",
  "Networking Hardware",
  "Self-Motivation",
  "Firewall",
  "Change Management",
  "Empathy",
  "Network Topology",
  "GIAC Certified Incident Handler",
  "OAuth",
  "Public Cloud",
  "Topology",
  "Security Policies",
  "Computer Science",
  "Vulnerability Scanning",
  "Security Assertion Markup Language (SAML)",
  "Network Architecture"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (127, 14100);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (127, 127, 127, 127, '2024-06-19', '2024-10-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (128, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (128, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (128, 'Smithfield, RI', 'Rhode Island', '44007');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (61060, '[
  "Relational Databases",
  "Programming Languages",
  "Data Exchange",
  "Communication",
  "Informatica",
  "Leadership",
  "Time Management",
  "Data Analysis",
  "Extract Transform Load (ETL)",
  "SnapLogic",
  "Business Intelligence",
  "Writing",
  "Business Operations",
  "SQL (Programming Language)",
  "Systems Analysis",
  "Organizational Structure",
  "Self-Motivation",
  "Query Languages"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (128, 61060);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (128, 128, 128, 128, '2024-09-26', '2024-10-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (129, 'ET10607DAB0B04EA19', 'Full-time (> 32 hours)', NULL, 
        NULL, 50000, 50000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (129, 'University of Virginia', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (129, 'Charlottesville, VA', 'Virginia', '51003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (62462, '[
  "Software Systems",
  "Python (Programming Language)",
  "Information Management",
  "Data Analysis",
  "Administrative Support",
  "RStudio",
  "Detail Oriented",
  "Qualtrics",
  "Data Visualization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (129, 62462);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (129, 129, 129, 129, '2024-06-08', '2024-06-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (130, 'ET5EF2E9677A861605', 'Full-time (> 32 hours)', 7, 
        7, 324000, 324000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (130, 'Expedia Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (130, 'Austin, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (86720, '[
  "Programming Languages",
  "Cloud Services",
  "Apache Kafka",
  "Data Management",
  "Data Architecture",
  "Big Data",
  "Stakeholder Management",
  "Communication",
  "Innovation",
  "Python (Programming Language)",
  "Apache Spark",
  "Leadership",
  "Apache Flink",
  "Distributed Data Store",
  "Ability To Meet Deadlines",
  "Resilience",
  "Business Requirements",
  "Scalability",
  "Technology Solutions",
  "Data Transformation",
  "Machine Learning",
  "Amazon Web Services",
  "Technology Ecosystems",
  "Data Analysis",
  "Expectation Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (130, 86720);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (130, 130, 130, 130, '2024-07-05', '2024-09-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (131, 'ET7935BB065D373495', 'Full-time (> 32 hours)', 3, 
        3, 66560, 95055);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (131, 'Cardinal Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (131, 'Salem, OR', 'Oregon', '41047');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (43533, '[
  "Programming Languages",
  "Microsoft Access",
  "Unstructured Data",
  "Data Management",
  "Governance",
  "Time Management",
  "Data Quality",
  "Looker Analytics",
  "Supply Chain",
  "Quantitative Modeling",
  "SAP Applications",
  "Business Intelligence",
  "Statistical Modeling",
  "Alteryx",
  "SQL (Programming Language)",
  "Verbal Communication Skills",
  "Microsoft Excel",
  "Customer Service",
  "Data Strategy",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (131, 43533);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (131, 131, 131, 131, '2024-06-13', '2024-07-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (132, 'ET253F0733DB5B51BA', 'Full-time (> 32 hours)', 2, 
        2, 115000, 140000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (132, 'BlackRock', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (132, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (56813, '[
  "Asset Classes",
  "Capital Markets",
  "Workflow Management",
  "Management",
  "Order Management",
  "Order Management Systems",
  "Investments",
  "Communication",
  "Presentations",
  "Application Programming Interface (API)",
  "Planning",
  "Due Diligence",
  "Project Management Professional Certification",
  "Project Planning",
  "Market Risk",
  "Data Warehousing",
  "Interpersonal Communications",
  "Portfolio Management",
  "Business Process",
  "Electronic Trading",
  "Fixed Income",
  "Equities",
  "Algorithmic Trading",
  "Python (Programming Language)",
  "Demonstration Skills",
  "Derivatives",
  "Chartered Financial Analyst",
  "Leadership",
  "Decision Making",
  "Master Of Business Administration (MBA)",
  "Certified Financial Risk Management",
  "Front Office",
  "Risk Analytics",
  "Performance Measurement",
  "Visual Basic For Applications",
  "Project Management",
  "Operations",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Financial Risk",
  "Scalability",
  "Technology Solutions",
  "Coordinating",
  "Troubleshooting (Problem Solving)",
  "Query Languages",
  "Business Development",
  "Accounting",
  "Problem Solving",
  "Investment Accounting",
  "Computer Literacy",
  "Investment Management",
  "Risk Management",
  "Intellectual Capital",
  "Business Strategies"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (132, 56813);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (132, 132, 132, 132, '2024-09-24', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (133, 'ETA425F1B652480E09', 'Full-time (> 32 hours)', NULL, 
        NULL, 89600, 185000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (133, 'Amazon', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (133, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2741, '[
  "NoSQL",
  "Procurement",
  "Amazon Elastic Compute Cloud",
  "Management",
  "Communication",
  "Innovation",
  "Amazon DynamoDB",
  "Analytical Skills",
  "Statistical Analysis",
  "Data Mining",
  "Self-Motivation",
  "Automation",
  "Data Warehousing",
  "Amazon Redshift",
  "Business Intelligence",
  "Algorithms",
  "Python (Programming Language)",
  "Leadership",
  "Machine Learning",
  "Marketing",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Scalability",
  "Data Modeling",
  "SAS (Software)",
  "Scripting",
  "Amazon Web Services",
  "Product Strategy",
  "MATLAB",
  "Localization",
  "Extract Transform Load (ETL)",
  "Commodity Management",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "New Product Development",
  "Amazon S3",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (133, 2741);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (133, 133, 133, 133, '2024-08-23', '2024-10-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (134, 'ET9FAD35491EF7C723', 'Full-time (> 32 hours)', 2, 
        2, 51824, 80000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (134, 'University of Pennsylvania', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (134, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (65734, '[
  "Psychology",
  "Programming Languages",
  "Research",
  "Neuroimaging",
  "Management",
  "Neurology",
  "Radiology",
  "Bash (Scripting Language)",
  "Unix",
  "Automation",
  "Microsoft PowerPoint",
  "Data Management",
  "Linux",
  "Segmentation Analysis",
  "Magnetic Resonance Imaging",
  "Underwriting",
  "Psychiatry",
  "Statistics",
  "Detail Oriented",
  "Teamwork",
  "Data Analysis",
  "Sales Performance Management",
  "Mortgage Loans",
  "Biostatistics",
  "Statistical Programming",
  "Computer Science",
  "Image Analysis",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (134, 65734);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (134, 134, 134, 134, '2024-05-11', '2024-08-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (135, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, 72800, 72800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (135, 'Kelly Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (135, 'New Brunswick, NJ', 'New Jersey', '34023');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (66032, '[
  "Communication",
  "Invoicing",
  "Procurement",
  "Order Management",
  "Order Management Systems",
  "Purchasing",
  "Facility Management",
  "Operating Expense",
  "Finance",
  "Financial Accounting",
  "Information Management",
  "Business Planning",
  "Real Estate",
  "Procurement Software",
  "Detail Oriented",
  "Supplier Relationship Management",
  "Data Analysis",
  "Medical Devices",
  "Coordinating",
  "Multitasking",
  "Troubleshooting (Problem Solving)",
  "Financial Analysis",
  "Payment Processing",
  "Accounting",
  "Procure-To-Pay (PTP)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (135, 66032);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (135, 135, 135, 135, '2024-08-02', '2024-08-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (136, 'ET031A6347014AF206', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (136, 'BOK Financial', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (136, 'Tulsa, OK', 'Oklahoma', '40143');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (64983, '[
  "Application Data",
  "Information Technology",
  "Oracle Cloud",
  "On Prem",
  "Agile Methodology",
  "Requirements Specifications",
  "Planning",
  "Financial Planning",
  "Oracle Essbase",
  "Technology Roadmaps",
  "Analytical Skills",
  "Data Warehousing",
  "Finance",
  "Linux",
  "Acceptance Testing",
  "Business Process",
  "Stored Procedure",
  "Development Testing",
  "Job Scheduling (Inventory Management)",
  "Business Requirements",
  "Project Management",
  "Operations",
  "Oracle Hyperion",
  "Data Analysis",
  "Systems Integration",
  "Training And Development",
  "Troubleshooting (Problem Solving)",
  "Technical Analysis",
  "Accounting",
  "Problem Solving",
  "Relational Database Management Systems",
  "Financial Systems",
  "Collaboration",
  "Writing",
  "SQL (Programming Language)",
  "Computer Science",
  "Disaster Recovery",
  "Oracle WebLogic Server"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (136, 64983);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (136, 136, 136, 136, '2024-09-30', '2024-10-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (137, 'ET707E25DD53AC062E', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (137, 'Beacon Hill Staffing Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (137, 'Indianapolis, IN', 'Indiana', '18097');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (91909, '[
  "Research",
  "Business Analysis",
  "Collaboration",
  "Finance",
  "Acceptance Testing",
  "System Configuration",
  "Communication",
  "Time Management",
  "System Administration",
  "User Acceptance Testing (UAT)",
  "Business Requirements",
  "Project Management",
  "Operations",
  "Organizational Development",
  "Oracle Fusion Middleware",
  "NextGen Enterprise Practice Management",
  "Oracle Certification",
  "Quality Assurance",
  "Enterprise Resource Planning",
  "Accounting",
  "Financial Systems"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (137, 91909);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (137, 137, 137, 137, '2024-08-21', '2024-09-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (138, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (138, 'Relx', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (138, 'Alexandria, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (46594, '[
  "Research",
  "Management",
  "Problem Solving",
  "Proofreading",
  "Extensible Markup Language (XML)",
  "Data Engineering",
  "Data Management",
  "Tenacity",
  "Advanced Mathematics",
  "Mentorship",
  "Python (Programming Language)",
  "Data Analysis",
  "Statistics",
  "Interpersonal Communications",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Willingness To Learn",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (138, 46594);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (138, 138, 138, 138, '2024-08-23', '2024-09-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (139, 'ETE515DC4E2685F692', 'Full-time (> 32 hours)', 6, 
        6, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (139, 'Puresoft', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (139, 'Dallas, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (83101, '[
  "Effective Communication",
  "Management",
  "Project Management",
  "SAP Sales And Distribution",
  "Timelines",
  "SAP Applications",
  "Business Requirements",
  "Stakeholder Management",
  "SAP ERP",
  "Supply Chain Acumen",
  "Knowledge Transfer",
  "Business Administration",
  "Problem Solving",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (139, 83101);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (139, 139, 139, 139, '2024-06-19', '2024-06-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (140, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (140, 'Chelsoft Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (140, '[Unknown City], TX', 'Texas', '48999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (39974, '[
  "SQL Server Integration Services (SSIS)",
  "Information Technology",
  "IBM DB2",
  "Microsoft Visual Studio",
  "Data Analysis",
  "SQL (Programming Language)",
  "SQL Server Reporting Services"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (140, 39974);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (140, 140, 140, 140, '2024-05-16', '2024-05-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (141, 'ETD7109BA5EB96E8BB', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (141, 'Coders Data', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (141, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (53366, '[
  "Power BI",
  "Research",
  "Workflow Management",
  "SQL Server Integration Services (SSIS)",
  "Data Modeling",
  "SQL Server Reporting Services",
  "Self-Motivation",
  "Microsoft Azure",
  "OneStream (CPM Software)",
  "Problem Solving",
  "Advanced Mathematics",
  "Analytical Skills",
  "Data Processing",
  "Automation",
  "Data Warehousing",
  "Big Data",
  "Consolidation",
  "Critical Thinking",
  "Dashboard",
  "Data Quality",
  "Statistics",
  "Project Management",
  "Business Intelligence",
  "Detail Oriented",
  "Key Performance Indicators (KPIs)",
  "Data Lakes",
  "Data Analysis",
  "Alteryx",
  "Coordinating",
  "SQL (Programming Language)",
  "Extract Transform Load (ETL)",
  "Data Governance",
  "Writing",
  "Self-Discipline",
  "Scalability",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (141, 53366);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (141, 141, 141, 141, '2024-09-14', '2024-10-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (142, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (142, 'Birlasoft', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (142, 'Reno, NV', 'Nevada', '32031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (22198, '[
  "On Prem",
  "Warehouse Management Systems"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (142, 22198);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (142, 142, 142, 142, '2024-05-21', '2024-07-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (143, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 2, 
        2, 115000, 135000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (143, 'CBRE', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (143, 'Tallahassee, FL', 'Florida', '12073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93555, '[
  "Research",
  "Information Technology",
  "Google Sheets",
  "Data Mining",
  "Data Science",
  "Communication",
  "Intellectual Curiosity",
  "Ability To Meet Deadlines",
  "Acceptance Testing",
  "Business Metrics",
  "Performance Metric",
  "Innovation",
  "Dashboard",
  "User Acceptance Testing (UAT)",
  "Data Mapping",
  "Business Intelligence",
  "Project Implementation",
  "Google Workspace",
  "Scenario Planning",
  "Forecasting",
  "SQL (Programming Language)",
  "Technical Documentation",
  "Scripting",
  "Process Flow Diagrams",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (143, 93555);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (143, 143, 143, 143, '2024-08-14', '2024-10-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (144, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (144, 'Love's', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (144, 'Houston, TX', 'Texas', '48201');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (71409, '[
  "Programming Languages",
  "Research",
  "Forecasting",
  "Management",
  "Microsoft SQL Servers",
  "C++ (Programming Language)",
  "Pandas (Python Package)",
  "Linear Regression",
  "Advanced Mathematics",
  "Calculators",
  "Time Series Analysis And Forecasting",
  "Interpersonal Communications",
  "Finance",
  "Commodity Trading",
  "Algorithms",
  "Communication",
  "Python (Programming Language)",
  "Data Warehousing",
  "Decision Making",
  "Investment Decisions",
  "Statistics",
  "Market Trend",
  "Cooperation",
  "Visual Basic For Applications",
  "Risk Mitigation",
  "Marketing",
  "Java (Programming Language)",
  "Database Management Systems",
  "Operations",
  "Data Analysis",
  "SQL (Programming Language)",
  "Supply And Demand",
  "Investments",
  "Business Process Automation",
  "Quantitative Analysis",
  "Business Development",
  "Fine Motor Skills",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (144, 71409);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (144, 144, 144, 144, '2024-07-02', '2024-08-31');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (145, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 1, 
        NULL, 53844, 73512);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (145, 'Via Metropolitan Transit', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (145, 'San Antonio, TX', 'Texas', '48029');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (71147, '[
  "Power BI",
  "Mathematics",
  "Crystal Reports (Reporting Software)",
  "Statistical Software",
  "Customer Service",
  "Statistical Analysis",
  "Business Intelligence Reporting",
  "SQL (Programming Language)",
  "Scheduling",
  "Decision Making",
  "Statistics",
  "Reference Books",
  "Relational Databases",
  "Accountability",
  "Business Intelligence",
  "Data Analysis",
  "Data Modeling",
  "Communication",
  "Microsoft Excel",
  "SAS (Software)",
  "SPSS (Statistical Software)",
  "Data Integrity",
  "Diversity Programs",
  "Report Writing",
  "Service Planning",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (145, 71147);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (145, 145, 145, 145, '2024-06-18', '2024-08-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (146, 'ET2E1B678A376F9936', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (146, 'Fisher Investments', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (146, 'Dallas, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2910, '[
  "Application Data",
  "Workflow Management",
  "Order Management",
  "Order Management Systems",
  "Investments",
  "Influencing Skills",
  "Mentorship",
  "Microsoft Azure",
  "Leadership",
  "Information Systems",
  "Decision Making",
  "Conflict Resolution",
  "Business Architecture",
  "Wealth Management",
  "Enterprise Architecture",
  "Asset Management",
  "Portfolio Management",
  "Operations",
  "Fidessa (Software)",
  "Technology Solutions",
  "Negotiation",
  "Salesforce",
  "Accounting",
  "Portfolio Optimization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (146, 2910);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (146, 146, 146, 146, '2024-07-23', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (147, 'ET54FBAA9E22672F42', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (147, 'E-Solutions Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (147, 'Alpharetta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33139, '[
  "Software Design",
  "Spring Framework",
  "Code Review",
  "Research",
  "Technical Acumen",
  "Application Programming Interface (API)",
  "Solution Architecture",
  "Continuous Improvement Process",
  "Cloud Automation",
  "Spring Boot",
  "Microservices",
  "Microsoft Azure",
  "Spring Batch",
  "Application Development",
  "Docker (Software)",
  "Kubernetes",
  "Scrum (Software Development)",
  "Mentorship",
  "Service-Oriented Architecture",
  "Communication",
  "Banking",
  "Spring Security",
  "Software Architecture",
  "Feasibility Studies",
  "Architectural Design",
  "The Open Group Architecture Framework (TOGAF)",
  "RESTful API",
  "Performance Testing",
  "Writing",
  "Cloud Computing Architecture",
  "Product Roadmaps",
  "Jenkins",
  "Containerization",
  "Customer Service",
  "Test Automation",
  "Java (Programming Language)",
  "Sales",
  "DevOps",
  "Software Development",
  "CI/CD",
  "Gitlab"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (147, 33139);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (147, 147, 147, 147, '2024-08-07', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (148, 'ET93079B3900280AC7', 'Full-time (> 32 hours)', 1, 
        1, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (148, 'Holder Construction Company', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (148, 'Atlanta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (43748, '[
  "Azure DevOps",
  "Software Quality (SQA/SQC)",
  "Test Automation",
  "Analytical Skills",
  "Finance",
  "Business Process",
  "Communication",
  "Test Planning",
  "Troubleshooting (Problem Solving)",
  "Microsoft Excel",
  "Microsoft Dynamics 365",
  "DevOps",
  "Accounting",
  "Problem Solving",
  "Teamwork"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (148, 43748);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (148, 148, 148, 148, '2024-07-31', '2024-08-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (149, 'ETCF7888527E9B6B09', 'Full-time (> 32 hours)', NULL, 
        NULL, 75180, 94176);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (149, 'State of California', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (149, '[Unknown City], CA', 'California', '6067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (3648, '[
  "Research",
  "Presentations",
  "Management",
  "Data Mining",
  "Microsoft PowerPoint",
  "Trend Analysis",
  "Human Services",
  "Management Information Systems",
  "Data Analysis",
  "Report Writing",
  "Microsoft Excel",
  "SAS (Software)",
  "Research Methodologies",
  "Writing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (149, 3648);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (149, 149, 149, 149, '2024-07-05', '2024-07-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (150, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, 43400, 59600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (150, 'Insight Global', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (150, '[Unknown City], TX', 'Texas', '48999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (87763, '[
  "Wireless Communications",
  "Internet Services",
  "Medical Coding Certification",
  "Administrative Functions",
  "Medical Coding",
  "Customer Support",
  "CPT Coding",
  "Medicare",
  "Digital Subscriber Line",
  "Medical Records",
  "Root Cause Analysis",
  "Critical Thinking",
  "Data Analysis",
  "Hospital Information Systems",
  "Editing",
  "Healthcare Industry Knowledge",
  "Medicaid",
  "Customer Relationship Management",
  "Microsoft Office",
  "Mathematics",
  "ICD Coding (ICD-9/ICD-10)",
  "Certified Coding Specialist (CCS)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (150, 87763);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (150, 150, 150, 150, '2024-05-20', '2024-06-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (151, 'ET5F9E959F7DBBAEA7', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (151, 'Diameter Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (151, '[Unknown City], FL', 'Florida', '12999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (74339, '[
  "Detail Oriented",
  "Revenue Cycle Management",
  "Process Improvement",
  "Analytical Skills",
  "Timelines",
  "Business Process",
  "Application Programming Interface (API)",
  "Systems Integration",
  "Test Data",
  "Troubleshooting (Problem Solving)",
  "New Product Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (151, 74339);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (151, 151, 151, 151, '2024-09-30', '2024-10-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (152, 'ET050A3D1E66AB5C90', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (152, 'System One', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (152, 'Kansas City, MO', 'Missouri', '29095');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (10045, '[
  "Debugging",
  "Invoicing",
  "Procurement",
  "Management",
  "Inventory Management",
  "Legacy System Migration Workbench",
  "Agile Methodology",
  "SAP Ariba",
  "Domain Knowledge",
  "Communication",
  "Supplier Enablement",
  "Business Process",
  "Information Systems",
  "Supply Chain",
  "SAP Material Management",
  "SAP Applications",
  "Reporting Tools",
  "Operations",
  "SAP ERP",
  "Advanced Business Application Programming (ABAP)",
  "Project Implementation",
  "Change Management",
  "SAP Implementation",
  "Business Administration",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (152, 10045);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (152, 152, 152, 152, '2024-07-30', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (153, 'ET1FE3580746D8F543', 'Full-time (> 32 hours)', 4, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (153, 'University of Alaska', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (153, 'Fairbanks, AK', 'Alaska', '2090');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33974, '[
  "Information Technology",
  "Agile Methodology",
  "Community Property",
  "Professionalism",
  "Ethical Standards And Conduct",
  "Statistics",
  "Student Information Systems",
  "Accountability",
  "Operations",
  "SQL (Programming Language)",
  "Release Notes",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (153, 33974);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (153, 153, 153, 153, '2024-08-03', '2024-10-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (154, 'ETA3A6092CD0BD4A16', 'Full-time (> 32 hours)', 3, 
        NULL, 180835, 196900);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (154, 'Meta', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (154, 'Providence, RI', 'Rhode Island', '44007');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (86399, '[
  "Object-Oriented Programming (OOP)",
  "Data Infrastructure",
  "Data Modeling",
  "Data Warehousing",
  "Unstructured Data",
  "Big Data",
  "Influencing Skills",
  "Data Analysis",
  "Governance",
  "Data Engineering",
  "Python (Programming Language)",
  "Dashboard",
  "Data Integration",
  "Information Systems",
  "Data Quality",
  "Decision Making",
  "Collections",
  "Mathematics",
  "Statistics",
  "Communication",
  "Triage",
  "SQL (Programming Language)",
  "Extract Transform Load (ETL)",
  "Writing",
  "Data Recording",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (154, 86399);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (154, 154, 154, 154, '2024-07-20', '2024-10-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (155, 'ET8AF2E293074DDA9B', 'Full-time (> 32 hours)', 6, 
        NULL, 94000, 131600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (155, 'Infosys', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (155, 'City of Industry, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25465, '[
  "Oracle Procurement",
  "Gap Analysis",
  "Procurement",
  "Functional Testing",
  "Oracle Cloud",
  "Data Extraction",
  "Interface Design",
  "Business Process",
  "Communication",
  "Supply Chain",
  "Business Requirements",
  "Bill Of Materials",
  "Coordinating",
  "Project Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (155, 25465);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (155, 155, 155, 155, '2024-09-11', '2024-10-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (156, 'ET7935BB065D373495', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (156, 'V-Soft Consulting Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (156, 'Richmond, VA', 'Virginia', '51087');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (3700, '[
  "Detail Oriented",
  "Microsoft SharePoint",
  "Presentations",
  "Management",
  "Technical Writing",
  "IT Change Management",
  "Security Policies",
  "IT Governance",
  "Governance",
  "IT Service Management",
  "Software Technical Review",
  "Willingness To Learn",
  "Compliance Reporting",
  "Auditing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (156, 3700);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (156, 156, 156, 156, '2024-07-17', '2024-07-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (157, 'ET1FC7C7C1B25D2F0B', 'Full-time (> 32 hours)', NULL, 
        NULL, 145600, 145600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (157, 'ASGN', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (157, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (73396, '[
  "Software Testing",
  "Continuous Improvement Process",
  "Solution Design",
  "Unix",
  "Acceptance Testing",
  "Thought Leadership",
  "Technical Support",
  "Troubleshooting (Problem Solving)",
  "Test Planning",
  "Product Software Implementation Method",
  "Process Improvement",
  "Web Platforms"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (157, 73396);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (157, 157, 157, 157, '2024-05-30', '2024-06-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (158, 'ET39954C7EF07FEB7F', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (158, 'Franciscan Alliance', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (158, 'Lebanon, IN', 'Indiana', '18011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (82051, '[
  "Presentations",
  "Data Validation",
  "Management",
  "Integrated Business Planning",
  "Data Mining",
  "Systems Development Life Cycle",
  "Data Management",
  "Care Management",
  "Thought Leadership",
  "Innovation",
  "Governance",
  "Project Management",
  "Dashboard",
  "Leadership",
  "Decision Making",
  "Decision Support Systems",
  "Data Analysis",
  "Performance Reporting",
  "Business Intelligence",
  "Population Health",
  "Operations",
  "SQL (Programming Language)",
  "Coordinating",
  "SAS (Software)",
  "Process Improvement",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (158, 82051);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (158, 158, 158, 158, '2024-09-26', '2024-09-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (159, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, 80000, 85000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (159, 'Publicis Groupe', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (159, 'Irvine, CA', 'California', '6059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (73157, '[
  "Automotive Industry",
  "Marketing Analytics",
  "Analytic Applications",
  "Database Marketing",
  "Quality Control",
  "Project Documentation",
  "Microsoft Access",
  "Self-Motivation",
  "Factor Analysis",
  "CHi-Squared Automatic Interaction Detection (CHAID)",
  "Unix",
  "SAS Macros",
  "Microsoft PowerPoint",
  "Project Management",
  "Interpersonal Communications",
  "Microsoft Outlook",
  "Python (Programming Language)",
  "Time Management",
  "Adobe Analytics",
  "Data Integration",
  "Analytics",
  "Mathematics",
  "Data Analysis",
  "Statistics",
  "Cluster Analysis",
  "Marketing",
  "Writing",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Microsoft Office",
  "Multiple Linear Regression",
  "Microsoft Excel",
  "Decision Making",
  "SAS (Software)",
  "Pivot Tables And Charts",
  "Economics",
  "Problem Solving",
  "Digital Data",
  "Operational Data Store",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (159, 73157);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (159, 159, 159, 159, '2024-09-06', '2024-09-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (160, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (160, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (160, 'Mesquite, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (37660, '[
  "Customer Service",
  "Financial Statements",
  "Telephone Skills",
  "Microsoft Outlook",
  "Time Management",
  "Decision Making",
  "Ability To Meet Deadlines",
  "Information Gathering",
  "Data Analysis",
  "Microsoft Excel",
  "Multitasking"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (160, 37660);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (160, 160, 160, 160, '2024-06-06', '2024-07-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (161, 'ETCBE7F0F15B384354', 'Full-time (> 32 hours)', 6, 
        NULL, 102750, 180000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (161, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (161, 'Kansas City, MO', 'Missouri', '29095');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (9888, '[
  "Deficits",
  "Customer Service",
  "Workflow Management",
  "Prioritization",
  "ServiceNow",
  "Information Technology",
  "Management",
  "Change Control",
  "Data-Flow Analysis",
  "Investigation",
  "Extensible Markup Language (XML)",
  "Unix",
  "Communication",
  "Business Concepts",
  "Microsoft Office",
  "Accounting Software",
  "Business Process",
  "Scrum (Software Development)",
  "Mentorship",
  "Governance",
  "Demonstration Skills",
  "Leadership",
  "Information Systems",
  "Managed Care",
  "Decision Making",
  "Accounts Payable",
  "Unix Commands",
  "Accountability",
  "Operations",
  "Analytical Skills",
  "SQL (Programming Language)",
  "Epic EMR Certification",
  "Organizational Skills",
  "Health Level Seven (HL7)",
  "Troubleshooting (Problem Solving)",
  "Health Insurance Portability And Accountability Act (HIPAA) Compliance",
  "Information Technology Infrastructure Library",
  "Verbal Communication Skills",
  "Process Improvement",
  "Oracle SQL Developer",
  "Problem Solving",
  "Design Validation",
  "Relational Database Management Systems",
  "Epic Tapestry",
  "Computer Engineering",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (161, 9888);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (161, 161, 161, 161, '2024-07-31', '2024-08-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (162, 'ET79C15A10EEBC7AA1', 'Full-time (> 32 hours)', NULL, 
        NULL, 44595, 89294);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (162, 'Oracle', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (162, 'Springfield, IL', 'Illinois', '17167');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (63875, '[
  "Operations Management",
  "Written English",
  "Communication",
  "Dashboard",
  "Reporting Tools",
  "Collaborative Design",
  "Technical Documentation",
  "Revenue Management",
  "Business Intelligence",
  "Teamwork"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (162, 63875);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (162, 162, 162, 162, '2024-08-31', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (163, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, 135200, 135200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (163, 'Sedna Consulting Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (163, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (15054, '[
  "Human Resources Information System (HRIS)",
  "Oracle E-Business Suite",
  "Management",
  "ServiceNow",
  "Post Processing",
  "Impact Assessment",
  "Timelines",
  "JIRA",
  "Oracle Human Capital Management (HCM)",
  "Payroll Processing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (163, 15054);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (163, 163, 163, 163, '2024-05-02', '2024-05-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (164, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 59200, 82600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (164, 'Citigroup', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (164, 'Irving, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90135, '[
  "Capital Markets",
  "Management",
  "Apache Hadoop",
  "Analytical Skills",
  "Automation",
  "Unix",
  "Big Data",
  "Scheduling",
  "Communication",
  "Python (Programming Language)",
  "Apache Spark",
  "Sanity Testing",
  "Data Quality",
  "Ethical Standards And Conduct",
  "Diplomacy",
  "JIRA",
  "Cloud Technologies",
  "Data Lakes",
  "Data Analysis",
  "Extract Transform Load (ETL)",
  "Scripting",
  "Quality Management",
  "Test Automation",
  "Hadoop Distributed File System (HDFS)",
  "CA Workload Automation Ae",
  "Apache Hive",
  "Ab Initio (Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (164, 90135);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (164, 164, 164, 164, '2024-09-04', '2024-10-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (165, 'ETC8A11EF058B8166F', 'Full-time (> 32 hours)', NULL, 
        NULL, 100000, 120000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (165, 'TEKsystems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (165, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33565, '[
  "Solution Delivery",
  "Oracle Cloud",
  "Functional Specification",
  "Dataflow",
  "Finance",
  "Business Process",
  "Change Management",
  "Teamwork",
  "Systems Architecture"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (165, 33565);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (165, 165, 165, 165, '2024-07-18', '2024-08-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (166, 'ET52DF56042EF9981B', 'Part-time (≤ 32 hours)', NULL, 
        NULL, 43000, 79000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (166, 'Premier', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (166, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80184, '[
  "Research",
  "Safety Assurance",
  "Data Processing",
  "Data Warehousing",
  "Data Management",
  "Ability To Meet Deadlines",
  "Training Documentation",
  "Knowledge Transfer",
  "Communication",
  "Data Quality",
  "Resource Consumption Accounting",
  "Financial Data",
  "Operations",
  "Writing",
  "Detail Oriented",
  "Data Analysis",
  "Reconciliation",
  "Medical Records",
  "Data Acquisition",
  "General Ledger",
  "Quality Assurance",
  "Data Integrity",
  "Auditing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (166, 80184);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (166, 166, 166, 166, '2024-09-18', '2024-10-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (167, 'ETF6AC5557025E2A92', 'Full-time (> 32 hours)', 5, 
        NULL, 94420, 125890);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (167, 'Lumen Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (167, 'Sacramento, CA', 'California', '6067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97959, '[
  "Power BI",
  "Cloud Computing",
  "SQL Server Integration Services (SSIS)",
  "Management",
  "Bootstrap (Front-End Framework)",
  "Data Modeling",
  "Transact-SQL",
  "Influencing Skills",
  "Extract Transform Load (ETL)",
  "Operational Efficiency",
  "Extensible Markup Language (XML)",
  "Application Development",
  "Data Warehousing",
  "Stored Procedure",
  "Data Analysis",
  "Agile Methodology",
  "Model View Controller",
  "Data-Driven Decision Making",
  "Asynchronous Javascript and XML (AJAX)",
  "Online Analytical Processing",
  "Leadership",
  "Angular (Web Framework)",
  "SQL Server Analysis Services",
  "Operational Reporting",
  "Database Management Systems",
  "Business Requirements",
  "Project Management",
  "Business Intelligence",
  "Detail Oriented",
  "C# (Programming Language)",
  "Multitasking",
  "SQL (Programming Language)",
  "HyperText Markup Language (HTML)",
  "SQL Server Reporting Services",
  "Test Planning",
  "Data Governance",
  "Information Technology Management",
  "Microsoft SQL Servers",
  "JQuery",
  "Industry Standards",
  "Database Management",
  "Database Schema",
  "JavaScript (Programming Language)",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (167, 97959);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (167, 167, 167, 167, '2024-09-04', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (168, 'ET03BD9C837E996A99', 'Full-time (> 32 hours)', 3, 
        3, 71000, 131800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (168, 'Pentair', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (168, 'North Aurora, IL', 'Illinois', '17089');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12259, '[
  "SAP S/4HANA",
  "User Story",
  "Research",
  "Procurement",
  "Issue Tracking",
  "System Support",
  "Communication",
  "Finance",
  "Agile Methodology",
  "Service Management",
  "Supply Chain",
  "JIRA",
  "SAP Applications",
  "Business Requirements",
  "End-User Training And Support",
  "Project Implementation",
  "Troubleshooting (Problem Solving)",
  "Usability Testing",
  "Sales",
  "Problem Solving",
  "RAID"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (168, 12259);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (168, 168, 168, 168, '2024-08-09', '2024-09-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (169, 'ETF76C13F058BFE143', 'Full-time (> 32 hours)', 5, 
        NULL, 107000, 179000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (169, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (169, 'Kansas City, MO', 'Missouri', '29095');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80308, '[
  "Gap Analysis",
  "Agile Methodology",
  "Business Process",
  "SAP SuccessFactors",
  "SAP Applications",
  "Business Requirements",
  "Contract Review",
  "Human Capital",
  "Consulting",
  "Certified Emergency Nurse (CEN)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (169, 80308);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (169, 169, 169, 169, '2024-07-02', '2024-08-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (170, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, 70000, 115000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (170, 'Consolidated Communications', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (170, 'Mattoon, IL', 'Illinois', '17029');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (38491, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (170, 38491);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (170, 170, 170, 170, '2024-08-15', '2024-09-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (171, 'ET26FD5AC53160D4EB', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (171, 'TalentBridge', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (171, 'Chesterfield, VA', 'Virginia', '51041');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93504, '[
  "Power BI",
  "Research",
  "Management",
  "System Testing",
  "Microsoft Access",
  "Analytical Skills",
  "Statistical Reporting",
  "Communication",
  "Microsoft Word",
  "Microsoft PowerPoint",
  "Interpersonal Communications",
  "English Language",
  "Leadership",
  "Data Science",
  "Test Planning",
  "Security Management",
  "Data Analysis",
  "Test Case",
  "User Profile",
  "Microsoft Visio",
  "Team Leadership",
  "Test Data",
  "Microsoft Excel",
  "Coordinating",
  "Self-Motivation",
  "Software As A Service (SaaS)",
  "Problem Solving",
  "Cloud Hosting",
  "Test Data Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (171, 93504);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (171, 171, 171, 171, '2024-06-04', '2024-06-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (172, 'ET65DAD0D6BC50DA0F', 'Full-time (> 32 hours)', 1, 
        1, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (172, 'American Welding Society', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (172, 'Doral, FL', 'Florida', '12086');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60679, '[
  "Detail Oriented",
  "Power BI",
  "Research",
  "Data Preprocessing",
  "Prioritization",
  "Outliers",
  "Safety Assurance",
  "Exploratory Data Analysis",
  "Statistical Analysis",
  "Calculators",
  "Lifting Ability",
  "Time Management",
  "Decision Making",
  "Critical Thinking",
  "Forecasting",
  "Project Management",
  "Writing",
  "Data Analysis",
  "American Welding Society Codes",
  "Statistical Methods",
  "SPSS (Statistical Software)",
  "Problem Solving",
  "Microsoft Office 365",
  "Organizational Effectiveness",
  "Forensic Sciences"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (172, 60679);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (172, 172, 172, 172, '2024-07-22', '2024-08-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (173, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        2, 73674, 95776);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (173, 'Stride K12', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (173, 'Lansing, MI', 'Michigan', '26065');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (66079, '[
  "Power BI",
  "Customer Service",
  "Presentations",
  "Management",
  "Application Programming Interface (API)",
  "Continuous Improvement Process",
  "Target Audience",
  "Github",
  "Data Management",
  "Communication",
  "Response Rate",
  "Python (Programming Language)",
  "Survey Data Analysis",
  "Detail Oriented",
  "Data Analysis",
  "SQL (Programming Language)",
  "Microsoft PowerPoint",
  "Refining",
  "Coordinating",
  "Quality Management",
  "Troubleshooting (Problem Solving)",
  "Quality Assurance",
  "Microsoft Excel",
  "Statistical Methods",
  "Data Integrity",
  "Cascading Style Sheets (CSS)",
  "Problem Solving",
  "JSON",
  "JavaScript (Programming Language)",
  "Data Visualization",
  "Teamwork",
  "Computer Science",
  "Surveys",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (173, 66079);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (173, 173, 173, 173, '2024-06-20', '2024-07-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (174, 'ET68781BC90B9E1A6B', 'Full-time (> 32 hours)', 5, 
        NULL, 79000, 120000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (174, 'CF Industries', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (174, 'Sergeant Bluff, IA', 'Iowa', '19193');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (11584, '[
  "Business Systems",
  "Invoicing",
  "Project Management Life Cycle",
  "Procurement",
  "SAP Material Management",
  "Information Technology",
  "Management",
  "Family And Medical Leave Act Of 1993",
  "Inventory Management",
  "Maintenance Repair And Operations (MRO)",
  "Materials Management",
  "Microsoft Office",
  "End-User Training And Support",
  "Functional Specification",
  "Business Process",
  "Material Requirements Planning",
  "Contract Management",
  "Corporate Strategy",
  "User Requirements Documents",
  "Business Systems Analysis",
  "Order Processing",
  "Accounts Payable",
  "Requisition",
  "Enterprise Resource Planning",
  "SAP Applications",
  "Project Management",
  "Writing",
  "SAP ERP",
  "Data Migration",
  "Purchasing",
  "Process Improvement",
  "SAP Implementation",
  "Data Governance",
  "System Implementation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (174, 11584);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (174, 174, 174, 174, '2024-07-08', '2024-09-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (175, 'ET68A6B95E3C0BDFED', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (175, 'Steward Machine Co.', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (175, 'Birmingham, AL', 'Alabama', '1073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60243, '[
  "Enterprise Resource Planning",
  "Detail Oriented",
  "Information Technology",
  "Management",
  "Technical Drawing",
  "Communication",
  "Collaboration",
  "Data Management",
  "Manufacturing Operations",
  "Fabrication",
  "Machining",
  "SQL (Programming Language)",
  "Operations",
  "Microsoft Excel",
  "Real Time Data",
  "Bill Of Materials",
  "Microsoft Office",
  "Data Entry",
  "Information Privacy"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (175, 60243);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (175, 175, 175, 175, '2024-08-19', '2024-09-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (176, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, 83200, 89440);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (176, 'Ready 4 Work', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (176, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (64236, '[
  "Research",
  "Presentations",
  "Statistical Software",
  "Psychology",
  "Statistical Analysis",
  "Sociology",
  "Collaboration",
  "Data Management",
  "Public Health",
  "Political Sciences",
  "Behavioral Health",
  "Communication",
  "Python (Programming Language)",
  "Dashboard",
  "Leadership",
  "Data Quality",
  "Social Sciences",
  "Data Analysis",
  "Strategic Decision Making",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Data Collection",
  "Data Pipelines",
  "Technical Documentation",
  "Quality Assurance",
  "Power BI",
  "SPSS (Statistical Software)",
  "Economics",
  "Problem Solving",
  "Operational Performance Management",
  "Data Visualization",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (176, 64236);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (176, 176, 176, 176, '2024-07-26', '2024-08-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (177, 'ET5DCD43C3EAD1B95D', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (177, 'Holy Family University', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (177, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12402, '[
  "Relational Databases",
  "Power BI",
  "Auditing",
  "Research",
  "Office Equipment",
  "SQL Server Integration Services (SSIS)",
  "Database Administration",
  "Ethical Standards And Conduct",
  "Data Warehousing",
  "PostgreSQL",
  "Data Management",
  "Creative Thinking",
  "Student Information Systems",
  "Stored Procedure",
  "Mentorship",
  "Communication",
  "Python (Programming Language)",
  "Business Intelligence Tools",
  "Dashboard",
  "Encryption",
  "Information Systems",
  "Decision Making",
  "Family Educational Rights And Privacy Act",
  "Data Security",
  "Learning Management Systems",
  "Application Programming Interface (API)",
  "SQL Server Analysis Services",
  "SQL Server Oracle",
  "Financial Data",
  "Business Intelligence",
  "Operations",
  "Data Dictionary",
  "SQL (Programming Language)",
  "Filing",
  "Data-Driven Decision Making",
  "Technical Documentation",
  "Scripting",
  "Stewardship",
  "Data Integrity",
  "SQL Server Reporting Services",
  "Extract Transform Load (ETL)",
  "Relational Database Management Systems",
  "Fine Motor Skills",
  "Self-Discipline",
  "Database Design",
  "Windows PowerShell",
  "Data Access",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (177, 12402);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (177, 177, 177, 177, '2024-09-29', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (178, 'ET5F9E959F7DBBAEA7', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (178, 'Caris Life Sciences', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (178, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (6751, '[
  "Customer Service",
  "Research",
  "Label Printing",
  "Management",
  "Quantification",
  "Life Sciences",
  "Client Services",
  "Immunohistochemistry",
  "Chemistry",
  "Continuous Improvement Process",
  "Compliance Training",
  "Informatics",
  "Business Process",
  "Digital Assets",
  "System Configuration",
  "Creativity",
  "Nucleic Acids",
  "Communication",
  "Governance",
  "Medical Devices",
  "Leadership",
  "Decision Making",
  "Medical Laboratory",
  "Risk Analysis",
  "Microsoft PowerPoint",
  "Strategic Planning",
  "Honesty",
  "Biochemical Assays",
  "JIRA",
  "System Administration",
  "Interpersonal Communications",
  "Billing",
  "Project Management",
  "Accountability",
  "Operations",
  "Writing",
  "Medical Coding",
  "Specimen Accessioning",
  "Microsoft Excel",
  "Laboratory Information Management Systems",
  "Healthcare Industry Knowledge",
  "Empowerment",
  "Sales",
  "Sprint Planning",
  "Barcoding",
  "Innovation",
  "Presentations",
  "Computer Literacy",
  "New Product Development",
  "Teamwork",
  "Version Control"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (178, 6751);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (178, 178, 178, 178, '2024-07-19', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (179, 'ET9B9B19AFD4A09D6E', 'Full-time (> 32 hours)', 7, 
        7, 85629, 100000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (179, 'Psrtek', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (179, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (867, '[
  "Business Concepts",
  "Data Analysis",
  "Data Mapping",
  "SQL (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (179, 867);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (179, 179, 179, 179, '2024-08-20', '2024-09-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (180, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 3, 
        NULL, 95000, 95000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (180, 'Rice University', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (180, 'Houston, TX', 'Texas', '48201');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (39297, '[
  "BigQuery",
  "Information Technology",
  "Management",
  "Data Modeling",
  "Online Transaction Processing",
  "Digital Transformation",
  "Quality Control",
  "Microsoft Azure",
  "Extensible Markup Language (XML)",
  "Agile Methodology",
  "Auditing",
  "Data Warehousing",
  "Technical Design",
  "Amazon Redshift",
  "Data Management",
  "Business Process",
  "User Requirements Documents",
  "Python (Programming Language)",
  "Dashboard",
  "Business Intelligence Tools",
  "Time Management",
  "Data Integration",
  "Storyboarding",
  "Data Quality",
  "Decision Making",
  "PL/SQL",
  "Object Oriented Programming Language",
  "Relational Databases",
  "Machine Learning",
  "Change Requests",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Lecturing",
  "Data Acquisition",
  "Scripting",
  "Amazon Web Services",
  "Software Release Life Cycle",
  "HTML5",
  "Extract Transform Load (ETL)",
  "Data Governance",
  "Business Administration",
  "Presentation Layer",
  "Relational Database Management Systems",
  "Presentations",
  "Data Analysis",
  "Data Presentation",
  "JavaScript (Programming Language)",
  "Data Visualization",
  "Computer Science",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (180, 39297);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (180, 180, 180, 180, '2024-06-27', '2024-07-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (181, 'ETD5243496C97F5934', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (181, 'Infinite Computer Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (181, 'East Hanover, NJ', 'New Jersey', '34027');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25142, '[]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (181, 25142);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (181, 181, 181, 181, '2024-09-19', '2024-09-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (182, 'ETFD294B69D8018098', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (182, 'Carle Foundation Hospital', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (182, 'Urbana, IL', 'Illinois', '17019');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (23863, '[
  "Effective Communication",
  "Hospital Information Systems",
  "Workflow Management",
  "Data Infrastructure",
  "Management",
  "Quality Control",
  "Raiser's Edge NXT",
  "Planning",
  "Automation",
  "Dataflow",
  "Data Management",
  "Scheduling",
  "Technical Management",
  "Business Process",
  "Technical Services",
  "Communication",
  "Information Management",
  "Portfolio Management",
  "Project Management",
  "Operations",
  "Data Analysis",
  "Data Import/Export",
  "Process Improvement",
  "Mass Communication",
  "Database Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (182, 23863);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (182, 182, 182, 182, '2024-08-23', '2024-09-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (183, 'ETACD3ABA05229C399', 'Full-time (> 32 hours)', NULL, 
        NULL, 50000, 70000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (183, 'Tremco CPG Belgium', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (183, 'Hershey, PA', 'Pennsylvania', '42043');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (74165, '[
  "Communication",
  "Construction Management",
  "Roofing",
  "Construction"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (183, 74165);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (183, 183, 183, 183, '2024-09-15', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (184, 'ETE3CC2FB59D9F934F', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (184, 'Tenaska', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (184, 'Omaha, NE', 'Nebraska', '31055');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81134, '[
  "Data Literacy",
  "Data Engineering",
  "Defining Roles And Responsibilities",
  "Data Management",
  "Information Systems",
  "Data Quality",
  "Mathematics",
  "Machine Learning",
  "Data Lineage",
  "Data Governance",
  "Artificial Intelligence",
  "Data Analysis",
  "Data Sharing",
  "Computer Science",
  "Information Privacy"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (184, 81134);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (184, 184, 184, 184, '2024-06-01', '2024-07-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (185, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (185, 'Insight Global', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (185, '[Unknown City], FL', 'Florida', '12999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (53360, '[
  "Power BI",
  "Data Reporting",
  "Dashboard",
  "Budgeting",
  "Data Analysis",
  "SQL (Programming Language)",
  "Scalability",
  "Data Modeling",
  "Data Structures",
  "Accounting",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (185, 53360);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (185, 185, 185, 185, '2024-05-09', '2024-06-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (186, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (186, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (186, 'Englewood, CO', 'Colorado', '8005');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85032, '[
  "Relational Databases",
  "Statistical Software",
  "Stored Procedure",
  "Python (Programming Language)",
  "Data Analysis",
  "Organizational Skills",
  "Ad Hoc Reporting",
  "Plotly",
  "Data Visualization",
  "SQL (Programming Language)",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (186, 85032);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (186, 186, 186, 186, '2024-05-29', '2024-06-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (187, 'ETB6B58ED607480784', 'Full-time (> 32 hours)', 5, 
        NULL, 176800, 187200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (187, 'On-Board Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (187, 'Summit, NJ', 'New Jersey', '34039');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (53804, '[
  "Enterprise Resource Planning",
  "Data Infrastructure",
  "Strategic Planning",
  "Pharmaceutical Manufacturing",
  "Certified In Production And Inventory Management",
  "Project Management",
  "Data Management",
  "Influencing Skills",
  "Cell Therapy",
  "Governance",
  "Supply Chain Management",
  "Data Cleansing",
  "SAP Applications",
  "Business Requirements",
  "Data Analysis",
  "Biotechnology",
  "Information Infrastructure",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (187, 53804);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (187, 187, 187, 187, '2024-08-08', '2024-08-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (188, 'ETC1360A6DCAF5E713', 'Full-time (> 32 hours)', 5, 
        NULL, 118000, 158200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (188, 'Disney', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (188, 'Santa Monica, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32677, '[
  "Presentations",
  "Predictive Modeling",
  "Exploratory Data Analysis",
  "Analytical Skills",
  "Data Science",
  "Influencing Skills",
  "Business Process",
  "A/B Testing",
  "Innovation",
  "Dashboard",
  "Analytics",
  "Decision Making",
  "Looker Analytics",
  "Mathematics",
  "Data Analysis",
  "Statistics",
  "Teamwork",
  "Billing",
  "Product Engineering",
  "SQL (Programming Language)",
  "Data Modeling",
  "Strategic Analysis",
  "Business Strategies",
  "Extract Transform Load (ETL)",
  "Economics",
  "Strategic Thinking",
  "Data Strategy",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Direct-to-Consumer (DTC)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (188, 32677);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (188, 188, 188, 188, '2024-06-17', '2024-07-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (189, 'ET2340BC5ABA6EED70', 'Full-time (> 32 hours)', NULL, 
        NULL, 50000, 100000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (189, 'American Express', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (189, 'Springfield, IL', 'Illinois', '17167');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2540, '[
  "Business Objectives",
  "User Story",
  "Functional Requirement",
  "Planning",
  "Analytical Skills",
  "Automation",
  "Business Analysis",
  "Interpersonal Communications",
  "Business Process",
  "Communication",
  "Innovation",
  "Emerging Technologies",
  "Decision Making",
  "Data Analysis",
  "Value Engineering",
  "Business Requirements",
  "Requirements Elicitation",
  "Software Development",
  "Business Requirements Documentation",
  "Process Modeling",
  "Business Administration",
  "Computer Science",
  "Certified Business Analysis Professional"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (189, 2540);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (189, 189, 189, 189, '2024-06-22', '2024-08-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (190, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 83200, 114400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (190, 'Xoriant', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (190, 'Santa Clara, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2480, '[
  "Forecasting",
  "Supply Chain Planning",
  "Planning",
  "Statistical Analysis",
  "Data Processing",
  "Automation",
  "Data Science",
  "Communication",
  "Dashboard",
  "Decision Making",
  "Supply Chain",
  "Data Analysis",
  "Visual Basic For Applications",
  "Reporting Tools",
  "SQL (Programming Language)",
  "Google Cloud Platform (GCP)",
  "Pivot Tables And Charts",
  "Problem Solving",
  "Safety Stock",
  "Demand Forecasting",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (190, 2480);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (190, 190, 190, 190, '2024-08-12', '2024-10-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (191, 'ETEDC56741E5205457', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (191, 'Ipeople Infosystems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (191, 'Atlanta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (89292, '[
  "Functional Requirement",
  "Order To Cash Process",
  "SAP Sales And Distribution",
  "Communication",
  "Proactivity",
  "Finance",
  "Business Process",
  "Document Management",
  "Transportation Management",
  "Billing",
  "SAP Applications",
  "Technical Recruitment",
  "Customer Relationship Management",
  "SAP Transportation Management (TM)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (191, 89292);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (191, 191, 191, 191, '2024-05-25', '2024-06-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (192, 'ET21819B00A47DD514', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (192, 'Ziegler Cat', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (192, 'Bloomington, MN', 'Minnesota', '27053');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (65494, '[
  "Power BI",
  "Data Analysis",
  "Workflow Management",
  "Management",
  "Goal-Oriented",
  "Planning",
  "Advanced Analytics",
  "Research Methodologies",
  "Key Performance Indicators (KPIs)",
  "Leadership",
  "Flowcharts",
  "Product Management",
  "Mathematics",
  "Business Planning",
  "Financial Data",
  "Administrative Support",
  "Visualization",
  "Organizational Skills",
  "Operations",
  "Detail Oriented",
  "Product Support",
  "Sales",
  "Microsoft Office",
  "Economics",
  "Business Intelligence",
  "Problem Solving",
  "Innovation",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (192, 65494);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (192, 192, 192, 192, '2024-07-11', '2024-08-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (193, 'ET841F631E55605811', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (193, 'Yulista', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (193, 'Huntsville, AL', 'Alabama', '1089');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (59182, '[
  "Enterprise Resource Planning",
  "Microsoft SharePoint",
  "Research",
  "Procurement",
  "Office Equipment",
  "Management",
  "Process Improvement",
  "Security Clearance",
  "Data Management",
  "Aerospace Basic Quality System Standards",
  "Interpersonal Communications",
  "Active Listening",
  "Deltek Costpoint",
  "Contract Management",
  "Data Analysis",
  "Bill Of Materials",
  "Operations",
  "Customer Service",
  "Analytical Skills",
  "Microsoft Excel",
  "Problem Solving",
  "Data Entry",
  "ISO 9000 Series",
  "Data Control",
  "Intranet"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (193, 59182);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (193, 193, 193, 193, '2024-08-20', '2024-10-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (194, 'ET54C1C151F3D17B20', 'Full-time (> 32 hours)', 11, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (194, 'Nityo Infotech', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (194, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60415, '[
  "Information Technology",
  "Oracle Cloud",
  "Order To Cash Process",
  "Finance",
  "Business Process",
  "Acceptance Testing",
  "Accounts Payable",
  "RESTful API",
  "User Acceptance Testing (UAT)",
  "Business Requirements",
  "Oracle General Ledger",
  "Web Services",
  "Accounting",
  "Generally Accepted Accounting Principles",
  "Oracle Fusion Middleware",
  "Systems Integration",
  "Procure-To-Pay (PTP)",
  "Oracle Receivables"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (194, 60415);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (194, 194, 194, 194, '2024-08-01', '2024-08-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (195, 'ET8A97C1F74987C028', 'Full-time (> 32 hours)', 2, 
        2, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (195, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (195, 'Niles, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (77079, '[
  "Business Systems",
  "Enterprise Resource Planning",
  "Management",
  "Export Administration Regulations",
  "Budgeting",
  "Project Management",
  "Software Testing",
  "Finance",
  "Business Process",
  "Market Data",
  "Equities",
  "Technical Leadership",
  "SAP ERP",
  "Purchasing",
  "Sales",
  "Business Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (195, 77079);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (195, 195, 195, 195, '2024-05-06', '2024-07-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (196, 'ET8836A8CBFD77260C', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (196, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (196, 'San Jose, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (89976, '[
  "Power BI",
  "Financial Close",
  "SAP Sales And Distribution",
  "Data Warehousing",
  "Finance",
  "Business Intelligence Tools",
  "Business Requirements",
  "SAP FI/CO",
  "Communication",
  "SQL (Programming Language)",
  "Sales",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (196, 89976);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (196, 196, 196, 196, '2024-05-16', '2024-05-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (197, 'ETBC2BF3E776FAB754', 'Full-time (> 32 hours)', 6, 
        NULL, 127500, 184800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (197, 'Neurocrine Biosciences', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (197, 'San Diego, CA', 'California', '6073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52871, '[
  "Business Objectives",
  "Power BI",
  "Databricks",
  "Workflow Management",
  "Information Technology",
  "Low Latency",
  "Communication",
  "Data Modeling",
  "Cost Allocation",
  "Agile Methodology",
  "Solution Design",
  "Tableau CRM",
  "Analytical Thinking",
  "Tardive Dyskinesia",
  "Microsoft Azure",
  "Cross-Functional Collaboration",
  "Github",
  "Data Manipulation",
  "Self-Motivation",
  "Dataflow",
  "Data Warehousing",
  "Data Profiling",
  "Git (Version Control System)",
  "Sales Prospecting",
  "Python (Programming Language)",
  "Resilience",
  "Leadership",
  "Data Quality",
  "Application Programming Interface (API)",
  "Data Analysis",
  "Pharmaceuticals",
  "JIRA",
  "Business Requirements",
  "Project Management",
  "Business Intelligence",
  "Software Documentation",
  "SQL (Programming Language)",
  "Data Transformation",
  "DataOps",
  "Domain Driven Design",
  "Troubleshooting (Problem Solving)",
  "Amazon Web Services",
  "Metadata",
  "Data Governance",
  "Artificial Intelligence",
  "Problem Solving",
  "Business To Business",
  "Distributed Ledgers",
  "Writing",
  "Data Curation",
  "Tableau (Business Intelligence Software)",
  "Postman API Platform",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (197, 52871);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (197, 197, 197, 197, '2024-07-22', '2024-09-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (198, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, 90000, 100000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (198, 'Stiftelsen Norstella', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (198, 'Concord, NH', 'New Hampshire', '33013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (68417, '[
  "Life Sciences",
  "Data Science",
  "Amazon Redshift",
  "Stored Procedure",
  "Constructive Feedback",
  "Dashboard",
  "Data Quality",
  "Decision Making",
  "Electronic Medical Record",
  "Data Analysis",
  "Statistics",
  "Apache Parquet",
  "Real World Data",
  "Detail Oriented",
  "Data Dictionary",
  "SQL (Programming Language)",
  "Amazon Web Services",
  "Data Lineage",
  "Empathy",
  "Data Integrity",
  "Data Visualization",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (198, 68417);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (198, 198, 198, 198, '2024-08-07', '2024-09-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (199, 'ETC79EBC6A5480AAF6', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (199, 'Smx Corporation Limited', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (199, 'Dover, DE', 'Delaware', '10001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (78895, '[
  "Business Objectives",
  "Oracle Cloud",
  "Solution Design",
  "Planning",
  "Financial Planning",
  "Requirements Elicitation",
  "Interpersonal Communications",
  "Finance",
  "Financial Statements",
  "Communication",
  "Time Management",
  "Budgeting",
  "Information Systems",
  "Operational Data Store",
  "Financial Consolidations",
  "Troubleshooting (Problem Solving)",
  "NextGen Enterprise Practice Management",
  "Financial Forecasting",
  "Accounting",
  "Innovation",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (199, 78895);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (199, 199, 199, 199, '2024-07-25', '2024-08-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (200, 'ETC7B5640A8D002485', 'Full-time (> 32 hours)', 10, 
        NULL, 128310, 171080);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (200, 'Lumen Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (200, 'Concord, NH', 'New Hampshire', '33013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52314, '[
  "Project Portfolio Management",
  "Application Programming Interface (API)",
  "Continuous Improvement Process",
  "Microservices",
  "Market Trend",
  "Business Process",
  "Customer Service",
  "Communication",
  "Emerging Technologies",
  "Leadership",
  "Enterprise Architecture",
  "Cloud Technologies",
  "Software Engineering",
  "Scalability",
  "DevOps",
  "Innovation",
  "Wholesaling",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (200, 52314);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (200, 200, 200, 200, '2024-06-02', '2024-08-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (201, 'ETED1BD664E09997BC', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (201, 'Nakupuna Companies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (201, 'Reston, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (46765, '[
  "Research",
  "Management",
  "Communication",
  "Planning",
  "Operations Research",
  "Microsoft Office",
  "Microsoft Teams",
  "Microsoft PowerPoint",
  "Nuclear Power",
  "Weapons Of Mass Destruction (WMD)",
  "Biological Warfare",
  "Chemical Biological Radiological And Nuclear Defense (CBRN)",
  "Operations",
  "Link Analysis",
  "Data Modeling",
  "Microsoft Excel",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Knowledge Management",
  "Foreign Policies",
  "Intelligence Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (201, 46765);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (201, 201, 201, 201, '2024-08-25', '2024-08-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (202, 'ETE78CD2CDFFFAC66B', 'Full-time (> 32 hours)', 2, 
        NULL, 79300, 130800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (202, 'Travelers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (202, 'Saint Paul, MN', 'Minnesota', '27123');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (69892, '[
  "Cloud Computing",
  "Taxonomy",
  "NoSQL",
  "Workflow Management",
  "Data Modeling",
  "Information Gathering",
  "Metadata Management",
  "Data Profiling",
  "Data Management",
  "Usability",
  "Business Process",
  "Trustworthiness",
  "Communication",
  "Governance",
  "Python (Programming Language)",
  "Time Management",
  "Data Integration",
  "Emerging Technologies",
  "Data Quality",
  "Decision Making",
  "Test Planning",
  "Collaboration",
  "Root Cause Analysis",
  "Data Analysis",
  "SQL (Programming Language)",
  "MicroStrategy",
  "Data Transformation",
  "Consulting",
  "Metadata",
  "Data Lineage",
  "Value Chain",
  "Extract Transform Load (ETL)",
  "Data Governance",
  "Business Intelligence",
  "Document-Oriented Databases",
  "Teradata SQL",
  "Apache Hive",
  "Ab Initio (Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (202, 69892);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (202, 202, 202, 202, '2024-09-04', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (203, 'ET50F6A189F1730BCA', 'Part-time (≤ 32 hours)', 5, 
        NULL, 37440, 37440);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (203, 'Allied Universal', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (203, 'Willowbrook, IL', 'Illinois', '17043');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (82595, '[
  "Customer Service",
  "Emergency Response",
  "Physical Security Operations",
  "Problem Solving",
  "Computer Literacy",
  "Closed-Circuit Television Systems (CCTV)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (203, 82595);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (203, 203, 203, 203, '2024-06-25', '2024-07-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (204, 'ETF6AC5557025E2A92', 'Full-time (> 32 hours)', 8, 
        NULL, 118000, 203550);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (204, 'Johnson & Johnson', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (204, '[Unknown City], NJ', 'New Jersey', '34999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (51937, '[
  "Healthcare Industry Knowledge",
  "Procurement",
  "Management",
  "Continuous Improvement Process",
  "Planning",
  "Benchmarking",
  "Performance Management",
  "Data Science",
  "Strategy Execution",
  "Communication",
  "Microsoft PowerPoint",
  "Data Management",
  "Functional Excellence",
  "Interpersonal Communications",
  "Innovation",
  "Advocacy",
  "Dealing With Ambiguity",
  "Business Process",
  "Creativity",
  "Process Mapping",
  "Python (Programming Language)",
  "Medical Devices",
  "Key Performance Indicators (KPIs)",
  "Leadership",
  "Supply Chain",
  "Pharmaceuticals",
  "Real Estate",
  "Strategic Planning",
  "Critical Thinking",
  "Project Management",
  "Business Intelligence",
  "Operations",
  "Business Operations",
  "SQL (Programming Language)",
  "Budgeting",
  "Coordinating",
  "Financial Modeling",
  "Environment Health And Safety",
  "Microsoft Excel",
  "Power BI",
  "English Language",
  "Partner Relationship Management",
  "Performance Improvement",
  "Program Management",
  "Business Planning",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (204, 51937);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (204, 204, 204, 204, '2024-05-24', '2024-06-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (205, 'ETAF2A1D189FB4113C', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (205, 'ASM Research', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (205, 'San Antonio, TX', 'Texas', '48029');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (22102, '[
  "Customer Service",
  "Forecasting",
  "Management",
  "System Support",
  "Microsoft Excel",
  "Process Optimization",
  "Expediting Orders",
  "Process Improvement",
  "Networking Hardware",
  "Mentorship",
  "Innovation",
  "Dashboard",
  "Calculations",
  "Service Management",
  "Billing",
  "Service-Level Agreement",
  "Detail Oriented",
  "Organizational Skills",
  "Verbal Communication Skills",
  "Problem Solving",
  "Data Entry",
  "Order Processing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (205, 22102);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (205, 205, 205, 205, '2024-09-08', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (206, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, 42455, 46878);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (206, 'State Of Texas', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (206, 'Rosharon, TX', 'Texas', '48039');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25142, '[]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (206, 25142);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (206, 206, 206, 206, '2024-09-12', '2024-09-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (207, 'ET96034B4F13C20330', 'Part-time (≤ 32 hours)', NULL, 
        NULL, 37440, 41600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (207, 'Kid Care', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (207, 'Poway, CA', 'California', '6073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (88981, '[
  "Mathematics",
  "Painting",
  "Valid Driver's License",
  "Cardiopulmonary Resuscitation (CPR) Certification"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (207, 88981);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (207, 207, 207, 207, '2024-05-07', '2024-06-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (208, 'ET05278885FFB8644A', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (208, 'Under Armour', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (208, 'Lansing, MI', 'Michigan', '26037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79647, '[
  "Data Science",
  "Data Management",
  "Mathematics",
  "Statistics",
  "Appeals",
  "Economics",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (208, 79647);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (208, 208, 208, 208, '2024-09-24', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (209, 'ET441EE36B54FE8743', 'Full-time (> 32 hours)', NULL, 
        NULL, 41600, 41600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (209, 'Nucar', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (209, 'Norwood, MA', 'Massachusetts', '25021');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (28040, '[
  "Automotive Industry",
  "Effective Communication",
  "Management",
  "Selling Techniques",
  "Communication",
  "Invoicing",
  "Interpersonal Communications",
  "Data Analysis",
  "Accounting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (209, 28040);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (209, 209, 209, 209, '2024-07-23', '2024-08-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (210, 'ETB453AB2BC84AFE6D', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (210, 'Smx Corporation Limited', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (210, '[Unknown City], ID', 'Idaho', '16999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (8280, '[
  "Reliability",
  "Information Technology",
  "Talent Management",
  "Communication",
  "Agile Project Management",
  "Data Analysis",
  "Business Requirements",
  "Reporting Tools",
  "Oracle Human Capital Management (HCM)",
  "Troubleshooting (Problem Solving)",
  "Quality Assurance",
  "Consulting",
  "Business Administration",
  "Problem Solving",
  "Innovation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (210, 8280);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (210, 210, 210, 210, '2024-06-06', '2024-07-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (211, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', NULL, 
        NULL, 100000, 232000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (211, 'PricewaterhouseCoopers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (211, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81899, '[
  "Management",
  "Coaching",
  "Oracle Applications DBA",
  "Automation",
  "Coordinating",
  "Business Process",
  "Decision Making",
  "Teamwork",
  "Collections",
  "Ethical Standards And Conduct",
  "Technological Change",
  "Billing",
  "Communication",
  "Oracle Human Capital Management (HCM)",
  "Oracle Hyperion",
  "Workflow Management",
  "Consulting",
  "Innovation",
  "PeopleSoft Applications",
  "Value Propositions"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (211, 81899);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (211, 211, 211, 211, '2024-09-25', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (212, 'ETEB8942CF5D1A49DF', 'Full-time (> 32 hours)', 2, 
        2, 65000, 70000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (212, 'Pearson Education', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (212, 'Topeka, KS', 'Kansas', '20177');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (34811, '[
  "Workflow Management",
  "Information Technology",
  "Management",
  "Learning Management Systems",
  "Application Programming Interface (API)",
  "Excel Formulas",
  "Customer Engagement",
  "Operational Efficiency",
  "Extensible Markup Language (XML)",
  "Analytical Skills",
  "Automation",
  "Dataflow",
  "WordPress",
  "Business Process",
  "Python (Programming Language)",
  "Customer Support",
  "Dashboard",
  "Technical Support",
  "Leadership",
  "Decision Making",
  "Positivity",
  "Data Analysis",
  "JIRA",
  "Business Requirements",
  "Web Development",
  "Project Management",
  "Collaborative Software",
  "Business Operations",
  "Drupal",
  "Microsoft Excel",
  "Quality Management",
  "Troubleshooting (Problem Solving)",
  "Single Sign-On (SSO)",
  "Quality Assurance",
  "Information Technology Operations",
  "Problem Solving",
  "Workflow Automation",
  "Program Management",
  "JavaScript (Programming Language)",
  "Computer Science",
  "Curiosity"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (212, 34811);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (212, 212, 212, 212, '2024-08-30', '2024-09-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (213, 'ETDDD0EAD762536DCF', 'Full-time (> 32 hours)', 6, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (213, 'CDW', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (213, '[Unknown City], ND', 'North Dakota', '38999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (39778, '[
  "Power BI",
  "Object-Oriented Programming (OOP)",
  "Apache Hadoop",
  "Server-Side",
  "Continuous Improvement Process",
  "Key Performance Indicators (KPIs)",
  "Planning",
  "Cloud Services",
  "Data Engineering",
  "Big Data",
  "A/B Testing",
  "Algorithms",
  "Communication",
  "New Product Development",
  "Innovation",
  "Python (Programming Language)",
  "Ad Hoc Analysis",
  "Dashboard",
  "Brainstorming",
  "Analytics",
  "Decision Making",
  "Marketing",
  "Critical Thinking",
  "Business Intelligence",
  "Data Structures",
  "SQL (Programming Language)",
  "Scalability",
  "Microsoft PowerPoint",
  "Product Roadmaps",
  "Data Modeling",
  "Verbal Communication Skills",
  "Advanced Analytics",
  "MapReduce",
  "Apache Hive",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (213, 39778);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (213, 213, 213, 213, '2024-06-17', '2024-08-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (214, 'ET6B7012F7B4840C5E', 'Full-time (> 32 hours)', 5, 
        NULL, 41600, 49920);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (214, 'Kelly Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (214, 'Warsaw, NY', 'New York', '36121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (91445, '[
  "Detail Oriented",
  "Banking Software",
  "Legal Discovery",
  "Document Review",
  "Writing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (214, 91445);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (214, 214, 214, 214, '2024-06-20', '2024-07-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (215, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (215, 'Brillient Corporation', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (215, '[Unknown City], WA', 'Washington', '53999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (66217, '[
  "Management",
  "Patient Treatment",
  "Veterans Health Information Systems And Technology Architecture (VistA)",
  "Warehousing",
  "Security Clearance",
  "Influencing Skills",
  "Algorithms",
  "Primary Care",
  "Data Analysis",
  "Corporate Data Management",
  "Cost Accounting",
  "Mathematics"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (215, 66217);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (215, 215, 215, 215, '2024-07-10', '2024-07-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (216, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (216, 'Chenega Corporation', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (216, 'Alexandria, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12556, '[
  "Presentations",
  "Management",
  "Microsoft Word",
  "Microsoft Access",
  "Information Gathering",
  "Sorting",
  "Self-Motivation",
  "Records Management",
  "Telecommunications",
  "Microsoft PowerPoint",
  "Spreadsheets",
  "Microsoft Outlook",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Standard Operating Procedure",
  "Valid Driver's License",
  "Word Processing",
  "Writing",
  "Detail Oriented",
  "Data Analysis",
  "Lifting Ability",
  "Electronic Documents",
  "Microsoft Excel",
  "Metadata",
  "Top Secret Clearance",
  "Presentation Software",
  "Data Entry"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (216, 12556);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (216, 216, 216, 216, '2024-09-13', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (217, 'ETB83C8F49C176B25C', 'Full-time (> 32 hours)', 10, 
        NULL, 125000, 208000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (217, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (217, 'Birmingham, AL', 'Alabama', '1073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25546, '[
  "Sales Proposals",
  "Vendor Relationship Management",
  "Coaching",
  "Project Management",
  "Proposal Development",
  "SAP ERP",
  "SAP SuccessFactors",
  "Request For Proposal",
  "Public Service",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (217, 25546);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (217, 217, 217, 217, '2024-05-20', '2024-07-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (218, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        2, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (218, 'AccruePartners', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (218, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25521, '[
  "Business Objectives",
  "Power BI",
  "Data Science",
  "Predictive Analytics",
  "Human Resource Strategy",
  "Decision Making",
  "Data Analysis",
  "Statistics",
  "Strategic Decision Making",
  "Predictive Modeling",
  "Detail Oriented",
  "Key Performance Indicators (KPIs)",
  "People Analytics",
  "Data Collection",
  "Ad Hoc Reporting",
  "Human Resources Information System (HRIS)",
  "Problem Solving",
  "Advanced Analytics",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (218, 25521);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (218, 218, 218, 218, '2024-08-31', '2024-09-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (219, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', NULL, 
        NULL, 50000, 60000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (219, 'Emergent Software', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (219, 'Virginia Beach, VA', 'Virginia', '51810');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (78568, '[
  "Research",
  "Computing Platforms",
  "Data Science",
  "Sales Prospecting",
  "Python (Programming Language)",
  "Customer Support",
  "Technical Support",
  "Innovation Strategy",
  "Data Analysis",
  "Patents",
  "Marketing",
  "Project Management",
  "Market Research",
  "Business Intelligence",
  "Content Creation",
  "Lead Generation",
  "Quality Assurance",
  "Verbal Communication Skills",
  "Microsoft Excel",
  "Software As A Service (SaaS)",
  "Sales",
  "Data As A Service (DaaS)",
  "Writing",
  "SQL (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (219, 78568);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (219, 219, 219, 219, '2024-05-17', '2024-06-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (220, 'ETAA05A565FBE2A7FF', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (220, 'Fox Rothschild Llp', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (220, 'Atlantic City, NJ', 'New Jersey', '34001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (3754, '[
  "Power BI",
  "Application Packaging",
  "Office Equipment",
  "Management",
  "Load Balancing",
  "Remote Access Systems",
  "Planning",
  "Microsoft Azure",
  "Package Testing",
  "Virtual Desktops",
  "Document Management Systems",
  "Project Management",
  "Emerging Technologies",
  "Information Systems",
  "Clerical Works",
  "Network Communications",
  "Problem Management",
  "Disaster Recovery",
  "Microsoft Teams",
  "Help Desk Support",
  "Computer Terminals",
  "SQL (Programming Language)",
  "Workflow Management",
  "Data Analysis",
  "Application Portfolio Management",
  "Microsoft Intune (Mobile Device Management Software)",
  "Filing",
  "Troubleshooting (Problem Solving)",
  "Scripting",
  "Microsoft 365",
  "Change Management",
  "Release Notes",
  "Visual Acuity",
  "Cloud Hosting",
  "Industry Standards",
  "Team Performance Management",
  "Operating Systems",
  "Computer Science",
  "Software Installation",
  "Azure Active Directory",
  "Transcribing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (220, 3754);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (220, 220, 220, 220, '2024-06-06', '2024-07-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (221, 'ET7F45C85568816B4E', 'Full-time (> 32 hours)', 12, 
        NULL, 63200, 188600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (221, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (221, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (1497, '[
  "Invoicing",
  "SAP S/4HANA",
  "Management",
  "Order Management",
  "Order Management Systems",
  "Digitization",
  "Convergent Charging",
  "Agile Methodology",
  "Planning",
  "Automation",
  "Communication",
  "Process Design",
  "Authorization (Computing)",
  "Finance",
  "Apache Maven",
  "Continuous Integration",
  "Technological Change",
  "Billing",
  "SAP Applications",
  "Business Requirements",
  "Prototyping",
  "Design Thinking",
  "Contract Accounting",
  "Consulting",
  "Test Planning",
  "Artificial Intelligence",
  "Training Coordination",
  "Mediation",
  "Hybris",
  "Scenario Design"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (221, 1497);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (221, 221, 221, 221, '2024-09-03', '2024-10-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (222, 'ET13B5002DB6441162', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (222, 'Bank of America', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (222, 'Jersey City, NJ', 'New Jersey', '34017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (63471, '[
  "Technology Integration",
  "Software Design",
  "Data Modeling",
  "Research",
  "Workflow Management",
  "Python (Programming Language)",
  "Writing",
  "Management",
  "Apache Hadoop",
  "Prioritization",
  "Organizational Communications",
  "Planning",
  "Statistical Analysis",
  "Market Risk",
  "Model Validation",
  "Internal Reporting",
  "External Reporting",
  "Trend Analysis",
  "Git (Version Control System)",
  "Financial Market",
  "Finance",
  "Consolidation",
  "Influencing Skills",
  "PySpark",
  "Communication",
  "Mathematics",
  "Adaptability",
  "Risk Analytics",
  "Performance Measurement",
  "JIRA",
  "Business Requirements",
  "Mathematical Finance",
  "Critical Thinking",
  "Operational Risk",
  "Oracle Exadata",
  "Model Risk Management",
  "Software Engineering",
  "Physics",
  "Scalability",
  "Product Software Implementation Method",
  "Technical Documentation",
  "Software Development",
  "Financial Stress Testing",
  "Economics",
  "Problem Solving",
  "Risk Modeling",
  "Regulatory Requirements",
  "Apache Hive",
  "Risk Management",
  "Test Engineering",
  "Scenario Design",
  "Risk Appetite"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (222, 63471);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (222, 222, 222, 222, '2024-06-06', '2024-07-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (223, 'ETF181DF78AFF609C3', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (223, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (223, 'Nashville, TN', 'Tennessee', '47037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80425, '[
  "Functional Design",
  "Unit Testing",
  "Functional Specification",
  "Innovation",
  "Emerging Technologies",
  "Export Control",
  "SAP Applications",
  "Product Software Implementation Method",
  "Business Transformation",
  "Process Improvement",
  "Data Integrity"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (223, 80425);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (223, 223, 223, 223, '2024-06-26', '2024-08-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (224, 'ET3037E0C947A02404', 'Part-time / full-time', 5, 
        NULL, 65687, 85393);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (224, 'University of Arizona', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (224, 'Tucson, AZ', 'Arizona', '4019');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (86331, '[
  "Power BI",
  "Research",
  "Microsoft Access",
  "Advanced Analytics",
  "Microsoft PowerPoint",
  "Strategic Decision Making",
  "Influencing Skills",
  "IT Service Management",
  "IT Infrastructure",
  "Leadership",
  "Decision Making",
  "Ethical Standards And Conduct",
  "Data Analysis",
  "Statistics",
  "Operations",
  "Statistical Modeling",
  "SQL (Programming Language)",
  "Ad Hoc Reporting",
  "Information Synthesis",
  "Microsoft Excel",
  "Data Visualization",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (224, 86331);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (224, 224, 224, 224, '2024-09-30', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (225, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, 51000, 70000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (225, 'Renaissance', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (225, 'Manchester, NH', 'New Hampshire', '33011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (7522, '[
  "Detail Oriented",
  "Mathematics",
  "Writing",
  "Workflow Management",
  "Authorization (Computing)",
  "Regular Expressions",
  "Communication",
  "Data Extraction",
  "Data Analysis",
  "Teamwork",
  "Help Desk Support",
  "Root Cause Analysis",
  "SQL (Programming Language)",
  "Organizational Skills",
  "Microsoft Excel",
  "Extract Transform Load (ETL)",
  "Problem Solving",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (225, 7522);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (225, 225, 225, 225, '2024-05-24', '2024-07-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (226, 'ETF6C180B3262CED18', 'Part-time (≤ 32 hours)', 6, 
        NULL, 71200, 158200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (226, 'Oracle', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (226, 'Santa Fe, NM', 'New Mexico', '35049');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (13254, '[
  "Change Management Certification",
  "Rapport Building",
  "Self-Motivation",
  "Change Management Strategy",
  "Organizational Change Management",
  "Organizational Leadership",
  "Health Administration",
  "Communication",
  "Health Information Technology",
  "Management",
  "Presentations",
  "Project Management",
  "Internet And Computing Core Certification",
  "Writing",
  "Organizational Skills",
  "Consulting",
  "Complex Problem Solving",
  "Change Management",
  "Microsoft Office"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (226, 13254);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (226, 226, 226, 226, '2024-09-14', '2024-10-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (227, 'ET126EB3FF8715863B', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (227, 'Siemens', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (227, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26426, '[
  "Workflow Management",
  "Data Modeling",
  "Automation",
  "Communication",
  "Finance",
  "Machine Learning",
  "PTC Creo Parametric",
  "Root Cause Analysis",
  "Data Analysis",
  "Failure Mode Effects And Criticality Analysis (FMECA)",
  "Artificial Intelligence",
  "Industrial Engineering"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (227, 26426);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (227, 227, 227, 227, '2024-06-26', '2024-07-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (228, 'ETA3A6092CD0BD4A16', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (228, 'Nvent', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (228, '[Unknown City], IN', 'Indiana', '18999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52784, '[
  "Power BI",
  "Data Modeling",
  "Agile Methodology",
  "Data Literacy",
  "User Experience (UX)",
  "Communication",
  "Python (Programming Language)",
  "Data Warehousing",
  "Analytics",
  "SQL (Programming Language)",
  "Scalability",
  "Prototyping",
  "Amazon Web Services",
  "Problem Solving",
  "Team Oriented",
  "Data Analysis",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (228, 52784);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (228, 228, 228, 228, '2024-06-29', '2024-08-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (229, 'ET7767EEDBF263F7B7', 'Full-time (> 32 hours)', NULL, 
        NULL, 152400, 219100);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (229, '96.5 Fm', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (229, 'Johnston, RI', 'Rhode Island', '44007');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (31464, '[
  "Business Objectives",
  "Technical Debt",
  "Research",
  "Management",
  "Communication",
  "Presentations",
  "Technology Solutions",
  "Planning",
  "Artificial Intelligence Markup Language (AIML)",
  "Cloud Strategy",
  "Loss Prevention",
  "Cloud Computing Architecture",
  "Technology Roadmaps",
  "Automation",
  "Application Portfolio Management",
  "Kubernetes",
  "Portfolio Management",
  "Influencing Skills",
  "Generative Artificial Intelligence",
  "Business Process",
  "Self Service Technologies",
  "Serverless Computing",
  "Strategic Roadmaps",
  "Governance",
  "Business-To-Consumer",
  "Reliability Engineering",
  "Large Language Modeling",
  "Enterprise Architecture",
  "The Open Group Architecture Framework (TOGAF)",
  "Infrastructure as Code (IaC)",
  "Hybrid Cloud Computing",
  "Cloud Financial Management (FinOps)",
  "Business Operations",
  "Negotiation",
  "Business To Business",
  "Cloud-Native Architecture",
  "Business Strategies",
  "Artificial Intelligence",
  "Problem Solving",
  "Solution Architecture",
  "Product Roadmaps",
  "Strategic Thinking",
  "Risk Management",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (229, 31464);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (229, 229, 229, 229, '2024-07-18', '2024-10-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (230, 'ET17B54F5BDFE2F9F2', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (230, 'Sensiple', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (230, 'Saint Louis, MO', 'Missouri', '29510');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (62891, '[
  "Mathematics",
  "SAP S/4HANA",
  "Database Administration",
  "SAP HANA",
  "Proactive Maintenance",
  "Information Systems",
  "SAP Basis",
  "SAP Solution Manager",
  "System Administration",
  "SAP Applications",
  "Operations",
  "Troubleshooting (Problem Solving)",
  "Middleware",
  "Post-Production",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (230, 62891);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (230, 230, 230, 230, '2024-05-08', '2024-05-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (231, 'ETF76C13F058BFE143', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (231, 'Capgemini', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (231, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (62505, '[
  "Workflow Management",
  "Management",
  "Coaching",
  "Solution Design",
  "Mentorship",
  "Job Architecture",
  "Project Management",
  "Enterprise Architecture",
  "SAP SuccessFactors",
  "SAP Applications",
  "Organizational Architecture",
  "Emergency Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (231, 62505);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (231, 231, 231, 231, '2024-09-04', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (232, 'ET0000000000000000', 'Full-time (> 32 hours)', 8, 
        NULL, 110000, 120000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (232, 'Sapear Limited', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (232, 'Austin, TX', 'Texas', '48491');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (86683, '[
  "BRFplus",
  "SAP S/4HANA",
  "Presentations",
  "Management",
  "Functional Requirement",
  "Order To Cash Process",
  "Solution Design",
  "Coordinating",
  "Finance",
  "Business Process",
  "International Financial Reporting Standards",
  "Leadership",
  "Revenue Recognition",
  "SAP Applications",
  "Writing",
  "Certified Public Accountant",
  "Accounting",
  "Revenue Accounting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (232, 86683);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (232, 232, 232, 232, '2024-05-30', '2024-06-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (233, 'ETF7592B455FB4918B', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (233, 'Baycare Health System', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (233, 'Clearwater, FL', 'Florida', '12103');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (76974, '[
  "Microsoft SharePoint",
  "Telecommuting",
  "Analytical Skills",
  "Innovation",
  "Data Warehousing",
  "Dashboard",
  "Data Analysis",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Microsoft PowerPoint",
  "Microsoft Excel",
  "Pivot Tables And Charts",
  "Database Management",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (233, 76974);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (233, 233, 233, 233, '2024-08-14', '2024-09-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (234, 'ET915DA975C7618A79', 'Full-time (> 32 hours)', 4, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (234, 'Commfinity Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (234, 'Dallas, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (10496, '[
  "Financial Statements",
  "Management",
  "Visual Basic (Programming Language)",
  "Financial Management",
  "Oracle Hyperion Financial Management",
  "Process Management",
  "Consolidation",
  "Financial Accounting",
  "Month-End Closing",
  "Financial Data",
  "Oracle Hyperion",
  "Relationship Management",
  "Metadata",
  "Quality Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (234, 10496);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (234, 234, 234, 234, '2024-06-24', '2024-07-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (235, 'ETC79EBC6A5480AAF6', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (235, 'PricewaterhouseCoopers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (235, 'Portland, OR', 'Oregon', '41051');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25717, '[
  "Financial Systems",
  "Collections",
  "Management",
  "Oracle Cloud",
  "Strategic Planning",
  "Budgeting",
  "Account Reconciliation",
  "Planning",
  "Financial Planning",
  "Performance Management",
  "Data Management",
  "Finance",
  "Consolidation",
  "Influencing Skills",
  "Financial Management",
  "Thought Leadership",
  "Information Systems",
  "Ethical Standards And Conduct",
  "Enterprise Performance Management (EPM)",
  "Billing",
  "Business Intelligence",
  "Workflow Management",
  "Persuasive Communication",
  "Negotiation",
  "NextGen Enterprise Practice Management",
  "Enterprise Resource Planning",
  "Consulting",
  "Team Leadership",
  "Accounting",
  "Innovation",
  "Expense Management",
  "Value Propositions"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (235, 25717);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (235, 235, 235, 235, '2024-05-02', '2024-05-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (236, 'ET77562EC431462A19', 'Full-time (> 32 hours)', NULL, 
        NULL, 124950, 208250);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (236, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (236, 'Indianapolis, IN', 'Indiana', '18097');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (67304, '[
  "SAP Functional",
  "Order To Cash Process",
  "Functional Design",
  "Rapport Building",
  "Communication",
  "Requirements Elicitation",
  "SAP CRM",
  "Leadership",
  "Presentations",
  "SAP Applications",
  "Consulting",
  "Customer Relationship Management",
  "SAP Implementation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (236, 67304);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (236, 236, 236, 236, '2024-06-08', '2024-06-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (237, 'ET4E8B8FD02356D442', 'Full-time (> 32 hours)', NULL, 
        NULL, 34000, 40000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (237, 'Albion CSD Middle School', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (237, 'Albion, NY', 'New York', '36073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25142, '[]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (237, 25142);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (237, 237, 237, 237, '2024-09-11', '2024-10-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (238, 'ETE0EE22B15A38F4C5', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (238, 'Texas Capital Bancshares', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (238, 'Richardson, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (76279, '[
  "Salesforce",
  "User Story",
  "Functional Requirement",
  "Process Optimization",
  "Financial Services",
  "Process Improvement",
  "Automation",
  "Dataflow",
  "Microsoft Office",
  "Microsoft PowerPoint",
  "Interpersonal Communications",
  "Business Metrics",
  "Performance Metric",
  "Communication",
  "Data Integration",
  "Developing Training Materials",
  "Scrum (Software Development)",
  "Business Requirements",
  "Marketing",
  "Microsoft Visio",
  "Detail Oriented",
  "Microsoft Excel",
  "Banking Services",
  "Sales Analysis",
  "Customer Relationship Management",
  "Sales",
  "Problem Solving",
  "Collaboration",
  "User Feedback"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (238, 76279);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (238, 238, 238, 238, '2024-09-03', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (239, 'ET5A8E3D6999AC17DD', 'Full-time (> 32 hours)', 5, 
        5, 145000, 170000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (239, 'Huron Consulting Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (239, 'Buffalo, NY', 'New York', '36029');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (56853, '[
  "Planning",
  "Communication",
  "Interpersonal Communications",
  "Mentorship",
  "Oracle Payroll",
  "Project Management",
  "Troubleshooting (Problem Solving)",
  "NextGen Enterprise Practice Management",
  "Project Implementation",
  "Enterprise Resource Planning",
  "Consulting",
  "Customer Relationship Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (239, 56853);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (239, 239, 239, 239, '2024-09-19', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (240, 'ET181A3AE698D2413D', 'Full-time (> 32 hours)', 2, 
        NULL, 52000, 52000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (240, 'Evolent Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (240, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (86174, '[
  "Detail Oriented",
  "Management",
  "Microsoft OneNote",
  "Agile Methodology",
  "Auditing",
  "Utilization Management",
  "Data Management",
  "Healthcare Industry Knowledge",
  "Microsoft Outlook",
  "Communication",
  "Managed Care",
  "Data Analysis",
  "JIRA",
  "Call Center Experience",
  "Operations",
  "Writing",
  "SQL (Programming Language)",
  "Proactivity",
  "Organizational Skills",
  "Microsoft Excel",
  "Service Level",
  "Process Improvement",
  "Microsoft Office"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (240, 86174);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (240, 240, 240, 240, '2024-07-12', '2024-07-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (241, 'ETF6AC5557025E2A92', 'Full-time (> 32 hours)', 8, 
        NULL, 118000, 203550);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (241, 'Johnson & Johnson', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (241, 'Hartford, CT', 'Connecticut', '9003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93227, '[
  "Healthcare Industry Knowledge",
  "Procurement",
  "Management",
  "Continuous Improvement Process",
  "Planning",
  "Benchmarking",
  "Performance Management",
  "Data Science",
  "Strategy Execution",
  "Communication",
  "Microsoft PowerPoint",
  "Data Management",
  "Functional Excellence",
  "Interpersonal Communications",
  "Innovation",
  "Advocacy",
  "Dealing With Ambiguity",
  "Business Process",
  "Creativity",
  "Process Mapping",
  "Python (Programming Language)",
  "Medical Devices",
  "Key Performance Indicators (KPIs)",
  "Leadership",
  "Supply Chain",
  "Pharmaceuticals",
  "Real Estate",
  "Strategic Planning",
  "Critical Thinking",
  "Project Management",
  "Business Intelligence",
  "Operations",
  "Business Operations",
  "SQL (Programming Language)",
  "Budgeting",
  "Coordinating",
  "Financial Modeling",
  "Environment Health And Safety",
  "Microsoft Excel",
  "Power BI",
  "English Language",
  "Partner Relationship Management",
  "Performance Improvement",
  "Business Planning",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (241, 93227);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (241, 241, 241, 241, '2024-05-28', '2024-07-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (242, 'ET04420E6E6DCA9EA5', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (242, 'Rocket Companies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (242, 'Detroit, MI', 'Michigan', '26163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (30594, '[
  "Business Architecture Certification",
  "Solution Delivery",
  "Research",
  "Business Architecture",
  "ServiceNow",
  "Information Technology",
  "Tooling Design",
  "Business Process Model And Notation",
  "Solution Design",
  "Tooling",
  "Mentorship",
  "Governance",
  "Leadership",
  "Process Analysis",
  "Decision Making",
  "Investment Decisions",
  "Portfolio Management",
  "The Open Group Architecture Framework (TOGAF)",
  "Agile Certification",
  "Sales Performance Management",
  "Business Strategies",
  "Architecture Framework",
  "Business Administration",
  "Business Technologies",
  "Business Process Modeling"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (242, 30594);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (242, 242, 242, 242, '2024-09-24', '2024-10-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (243, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, 43400, 59600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (243, 'Homesafe Alliance', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (243, 'Huntsville, AL', 'Alabama', '1089');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (87763, '[
  "Wireless Communications",
  "Internet Services",
  "Medical Coding Certification",
  "Administrative Functions",
  "Medical Coding",
  "Customer Support",
  "CPT Coding",
  "Medicare",
  "Digital Subscriber Line",
  "Medical Records",
  "Root Cause Analysis",
  "Critical Thinking",
  "Data Analysis",
  "Hospital Information Systems",
  "Editing",
  "Healthcare Industry Knowledge",
  "Medicaid",
  "Customer Relationship Management",
  "Microsoft Office",
  "Mathematics",
  "ICD Coding (ICD-9/ICD-10)",
  "Certified Coding Specialist (CCS)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (243, 87763);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (243, 243, 243, 243, '2024-05-20', '2024-06-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (244, 'ETA4F9C01DB87EFBE9', 'Full-time (> 32 hours)', 3, 
        3, 135013, 135013);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (244, 'APR Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (244, 'Wharton, NJ', 'New Jersey', '34027');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (47902, '[
  "Auditing",
  "Financial Statements",
  "Management",
  "Systems Analysis",
  "Discrete Manufacturing",
  "Finance",
  "Secret Clearance",
  "Business Process",
  "Technical Services",
  "Interest Expense",
  "Enterprise Architecture",
  "SAP Applications",
  "Business Requirements",
  "SAP ERP",
  "Troubleshooting (Problem Solving)",
  "Change Management",
  "Accounting",
  "Middleware",
  "SAP Business Suite"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (244, 47902);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (244, 244, 244, 244, '2024-06-11', '2024-07-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (245, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (245, 'Ventechsoft', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (245, 'Plano, TX', 'Texas', '48085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (46622, '[
  "Power BI",
  "Data Modeling",
  "Manufacturing Processes",
  "Data Extraction",
  "Data Warehousing",
  "Manufacturing Execution System (MES)",
  "Collaboration",
  "Communication",
  "Python (Programming Language)",
  "Dashboard",
  "Key Performance Indicators (KPIs)",
  "Operations",
  "Data Analysis",
  "SQL (Programming Language)",
  "Data-Driven Decision Making",
  "Scripting",
  "Enterprise Resource Planning",
  "Problem Solving",
  "Engineering Management",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (245, 46622);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (245, 245, 245, 245, '2024-06-01', '2024-08-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (246, 'ETD0BBD8B7F02FC5BB', 'Full-time (> 32 hours)', 6, 
        6, 145600, 156000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (246, 'Pinnacle Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (246, 'Columbus, OH', 'Ohio', '39049');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (42736, '[
  "SAP Financial Management",
  "Invoicing",
  "Project Management Life Cycle",
  "Generally Accepted Accounting Principles",
  "SAP Material Management",
  "ServiceNow",
  "Functional Specification",
  "SAP Concur (Travel And Invoice Software)",
  "Automation",
  "Multitasking",
  "Change Requests",
  "Accounting Regulations",
  "Fixed Asset",
  "Advanced Business Application Programming (ABAP)",
  "Agile Methodology",
  "Accounts Payable",
  "Tax Accounting",
  "Accounts Receivable",
  "Tax Laws",
  "Software Design Documents",
  "Indirect Tax",
  "User Acceptance Testing (UAT)",
  "SAP Applications",
  "Business Requirements",
  "SAP FI/CO",
  "Teamwork",
  "Vendor Payments",
  "SAP FI",
  "Consulting",
  "Resourcefulness",
  "Sales",
  "Accounting",
  "Unit Testing",
  "Self-Discipline"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (246, 42736);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (246, 246, 246, 246, '2024-05-10', '2024-06-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (247, 'ET1E39EA474701EF08', 'Full-time (> 32 hours)', 11, 
        11, 73000, 102200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (247, 'Infosys', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (247, 'Richardson, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (30407, '[
  "Information Technology",
  "Business Process Management",
  "Solution Design",
  "SAP Sales And Distribution",
  "Domain Knowledge",
  "Application Development",
  "Interpersonal Communications",
  "Change Requests",
  "Full Life Cycle Implementation",
  "Business Process",
  "Thought Leadership",
  "Go-to-Market Strategy",
  "SAP Applications",
  "Cost To Serve",
  "Critical Thinking",
  "SAP ERP",
  "Technology Solutions",
  "Team Management",
  "Consulting",
  "Knowledge Management",
  "Process Improvement",
  "Problem Solving",
  "Collaboration",
  "Request For Quotation (RFQ)",
  "SAP Production Planning"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (247, 30407);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (247, 247, 247, 247, '2024-06-25', '2024-07-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (248, 'ETB380CA22CD97D67D', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (248, 'University of Chicago', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (248, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (68608, '[
  "MuleSoft",
  "Debugging",
  "Enterprise Resource Planning",
  "Effective Communication",
  "Cloud Computing",
  "Curiosity",
  "Research",
  "Vendor Relationship Management",
  "Prioritization",
  "Information Technology",
  "Management",
  "Cloud Infrastructure",
  "Communication",
  "Oracle Cloud",
  "Oracle Certification",
  "System Integrity",
  "Continuous Improvement Process",
  "Microsoft Azure",
  "Expectation Management",
  "Process Improvement",
  "Analytical Skills",
  "Coordinating",
  "Interpersonal Communications",
  "Problem Solving",
  "Business Process",
  "Emerging Technologies",
  "Emergency Response",
  "Mentorship",
  "IT Security",
  "Decision Making",
  "Problem Management",
  "Statistics",
  "Team Motivation",
  "Technological Change",
  "Fire Safety",
  "Reporting Tools",
  "Organizational Change Management",
  "Leadership",
  "Operations",
  "System Status",
  "Troubleshooting (Problem Solving)",
  "NextGen Enterprise Practice Management",
  "Willingness To Learn",
  "Change Management",
  "Configuration Management",
  "Teaching",
  "Amazon Web Services",
  "System Optimization",
  "Public Cloud",
  "Oracle Development",
  "Release Management",
  "Oracle SOA Suite",
  "Google Cloud Platform (GCP)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (248, 68608);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (248, 248, 248, 248, '2024-07-09', '2024-08-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (249, 'ET557C27A572A7FE41', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (249, 'Hyster-Yale Materials Handling', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (249, 'Greenville, NC', 'North Carolina', '37147');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (16916, '[
  "Information Technology",
  "Management",
  "Empathy",
  "Prioritization",
  "Self-Motivation",
  "Business Acumen",
  "Market Dynamics",
  "Systems Development Life Cycle",
  "Business Process",
  "Information Systems",
  "Organizational Strategy",
  "Decision Making",
  "Certified Power Quality Professional",
  "Business Requirements",
  "Product Knowledge",
  "Quick Learning",
  "Auditing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (249, 16916);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (249, 249, 249, 249, '2024-06-14', '2024-08-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (250, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 6, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (250, 'Sedgwick', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (250, '[Unknown City], TN', 'Tennessee', '47999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58780, '[
  "Management",
  "Coaching",
  "Report Writing",
  "Data Compilation",
  "Software Technical Review",
  "Security Clearance",
  "Interpersonal Communications",
  "Finance",
  "Ability To Meet Deadlines",
  "Presentations",
  "Writing",
  "Teamwork",
  "Data Analysis",
  "Organizational Skills",
  "Data Integrity",
  "Microsoft Office",
  "Economics",
  "Program Management",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (250, 58780);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (250, 250, 250, 250, '2024-05-29', '2024-06-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (251, 'ET482026512E1FEAE7', 'Full-time (> 32 hours)', 3, 
        NULL, 50045, 69701);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (251, 'City Of Lee's Summit', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (251, 'Lee's Summit, MO', 'Missouri', '29095');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79800, '[
  "ArcGIS (GIS Software)",
  "Public Administration",
  "Geographic Information Systems",
  "Political Sciences",
  "Spreadsheets",
  "Communication",
  "Emergency Medical Services",
  "Word Processing",
  "Project Management",
  "Data Analysis",
  "Quality Assurance",
  "Microsoft Excel",
  "Project Management Software",
  "ArcMap",
  "Operating Systems",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (251, 79800);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (251, 251, 251, 251, '2024-07-19', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (252, 'ET5CC33E4DE967CA14', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (252, 'Highmark Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (252, '[Unknown City], PA', 'Pennsylvania', '42999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85826, '[
  "Effective Communication",
  "Research",
  "Presentations",
  "Forecasting",
  "Information Technology",
  "Management",
  "Data Reporting",
  "Data-Driven Decision Making",
  "Selling Techniques",
  "Analytical Skills",
  "Automation",
  "Business Analysis",
  "Interpersonal Communications",
  "Operational Excellence",
  "Ability To Meet Deadlines",
  "Security Policies",
  "Advanced Mathematics",
  "Dashboard",
  "Key Performance Indicators (KPIs)",
  "Leadership",
  "Data Quality",
  "Templates",
  "Ethical Standards And Conduct",
  "Mathematics",
  "Statistics",
  "Operations Research",
  "Lean Six Sigma",
  "Reporting Tools",
  "Project Management",
  "Accountability",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Data Collection",
  "Microsoft PowerPoint",
  "Microsoft Excel",
  "Decision Making",
  "Health Insurance Portability And Accountability Act (HIPAA) Compliance",
  "Verbal Communication Skills",
  "Sales",
  "Data Integrity",
  "Microsoft Office",
  "Executive Presentations",
  "Problem Solving",
  "Computer Science",
  "Data Security",
  "Software Development Life Cycle"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (252, 85826);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (252, 252, 252, 252, '2024-07-02', '2024-08-31');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (253, 'ETA5A1E31D31CFAC36', 'Full-time (> 32 hours)', NULL, 
        NULL, 113325, 188875);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (253, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (253, 'Boise, ID', 'Idaho', '16001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52726, '[
  "Agile Methodology",
  "Supply Chain",
  "SAP Applications",
  "Supply Chain Acumen",
  "Consulting",
  "SAP Production Planning"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (253, 52726);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (253, 253, 253, 253, '2024-05-12', '2024-07-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (254, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (254, 'ResMed', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (254, 'Richmond, VA', 'Virginia', '51760');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25639, '[
  "Power BI",
  "Data Analysis",
  "Data Visualization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (254, 25639);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (254, 254, 254, 254, '2024-06-10', '2024-06-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (255, 'ET34679010FD635FD5', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (255, 'Singlepoint Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (255, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (17670, '[
  "Financial Systems",
  "Workflow Management",
  "Financial Statements",
  "Functional Requirement",
  "Oracle Cloud",
  "Platform As A Service (PaaS)",
  "Application Programming Interface (API)",
  "Operational Efficiency",
  "Analytical Skills",
  "VBScript (Visual Basic Scripting Edition)",
  "Collaboration",
  "Finance",
  "Business Process",
  "Cloud Services",
  "Communication",
  "Accounts Payable",
  "Accounts Receivable",
  "Asset Management",
  "Web Services",
  "Simple Object Access Protocol (SOAP)",
  "Oracle Fusion Middleware",
  "Troubleshooting (Problem Solving)",
  "General Ledger",
  "Software As A Service (SaaS)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (255, 17670);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (255, 255, 255, 255, '2024-09-19', '2024-09-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (256, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (256, 'Talent Groups', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (256, 'Chelsea, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (45528, '[
  "Management",
  "Key Performance Indicators (KPIs)",
  "Big Data",
  "Ad Hoc Analysis",
  "Business Requirements",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (256, 45528);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (256, 256, 256, 256, '2024-08-11', '2024-08-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (257, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 5, 
        NULL, 82160, 102960);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (257, 'Randstad', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (257, 'San Bruno, CA', 'California', '6081');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (37657, '[
  "Power BI",
  "Data Analysis Expressions (DAX)",
  "Data Modeling",
  "Data Extraction",
  "Dataflow",
  "Data Warehousing",
  "Data Architecture",
  "Query Performance",
  "Communication",
  "Python (Programming Language)",
  "Dashboard",
  "Database Administration",
  "Scalability Design",
  "Data Analysis",
  "SQL (Programming Language)",
  "Extract Transform Load (ETL)",
  "Database Design"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (257, 37657);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (257, 257, 257, 257, '2024-09-03', '2024-09-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (258, 'ETD0BBD8B7F02FC5BB', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (258, 'Diverse Lynx', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (258, 'Austin, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (19251, '[
  "Gap Analysis",
  "Solution Design",
  "Full Life Cycle Implementation",
  "Business Requirements",
  "SAP FI/CO"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (258, 19251);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (258, 258, 258, 258, '2024-07-12', '2024-09-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (259, 'ETD93E714DA3EF968D', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (259, 'Creative It Limited', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (259, 'Atlanta, GA', 'Georgia', '13067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32123, '[
  "Wireframing",
  "Management",
  "Medical Records",
  "Electronic Medical Record",
  "System Testing",
  "Product Design",
  "Practice Management",
  "Agile Methodology",
  "Joint Application Design (JAD)",
  "User Acceptance Testing (UAT)",
  "Business Process",
  "Delivery Focused",
  "Balsamiq Studios",
  "Billing",
  "Communication",
  "Workflow Management",
  "Verbal Communication Skills",
  "Taking Meeting Minutes"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (259, 32123);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (259, 259, 259, 259, '2024-06-17', '2024-07-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (260, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, 70000, 115000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (260, 'Consolidated Communications', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (260, 'Boise, ID', 'Idaho', '16001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (38491, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (260, 38491);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (260, 260, 260, 260, '2024-08-15', '2024-09-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (261, 'ET67F75DE34B3CBEFF', 'Full-time (> 32 hours)', 2, 
        NULL, 78000, 126000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (261, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (261, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (64409, '[
  "Salesforce",
  "Power BI",
  "Technical Debt",
  "Data Infrastructure",
  "Apache Hadoop",
  "Prioritization",
  "Learning Management Systems",
  "Solution Design",
  "Business Continuity Planning",
  "Problem Solving",
  "Business Acumen",
  "Data Science",
  "User Experience (UX)",
  "Data Management",
  "Microsoft Dynamics",
  "Finance",
  "Influencing Skills",
  "Creative Problem Solving",
  "Analytics",
  "Distributed Data Store",
  "Marketing",
  "Business Intelligence",
  "Operations",
  "Collaboration",
  "Business Operations",
  "SQL (Programming Language)",
  "Scalability",
  "Go-to-Market Strategy",
  "Data-Driven Decision Making",
  "Troubleshooting (Problem Solving)",
  "Consulting",
  "Customer Relationship Management",
  "Process Transformation",
  "Data Integrity",
  "Data Analysis",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (261, 64409);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (261, 261, 261, 261, '2024-06-13', '2024-06-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (262, 'ET65C9F1740D9E39F7', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (262, 'Wells Fargo', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (262, 'San Antonio, TX', 'Texas', '48029');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25480, '[
  "Regression Testing",
  "Analytical Techniques",
  "Research",
  "Loans",
  "Quality Control",
  "Analytic Functions",
  "Prioritization",
  "Safety Assurance",
  "Applied Statistics",
  "Analytical Skills",
  "Statistical Analysis",
  "Automation",
  "Behavioral Science",
  "Finance",
  "Ability To Meet Deadlines",
  "Business Process",
  "Innovation",
  "Governance",
  "Financial Stress Testing",
  "Calculations",
  "Leadership",
  "Physics",
  "Computer Science",
  "Adaptability",
  "Data Analysis",
  "Statistics",
  "Interpersonal Communications",
  "Futures Exchange",
  "Detail Oriented",
  "Econometrics",
  "SQL (Programming Language)",
  "Regulatory Compliance",
  "SAS (Software)",
  "DataOps",
  "Quality Assurance",
  "Independent Thinking",
  "Economics",
  "Accounting",
  "Account Adjustments",
  "Teradata SQL",
  "Auditing",
  "Applied Mathematics",
  "Risk Appetite"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (262, 25480);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (262, 262, 262, 262, '2024-06-08', '2024-08-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (263, 'ET66C7D05AB3684195', 'Full-time (> 32 hours)', 8, 
        NULL, 131175, 218625);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (263, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (263, 'Saint Louis, MO', 'Missouri', '29510');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85130, '[
  "SAP S/4HANA",
  "Agile Methodology",
  "Microsoft Access",
  "SAP Sales And Distribution",
  "Communication",
  "Microsoft Word",
  "Microsoft Office",
  "Microsoft PowerPoint",
  "Presentations",
  "SAP Applications",
  "Writing",
  "Microsoft Excel",
  "Consulting",
  "Sales"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (263, 85130);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (263, 263, 263, 263, '2024-05-13', '2024-05-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (264, 'ET7BA31781C75852EB', 'Full-time (> 32 hours)', NULL, 
        NULL, 111900, 136700);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (264, 'Disney', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (264, 'Burbank, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (59737, '[
  "Power BI",
  "Research",
  "Software Versioning",
  "Management",
  "Data Modeling",
  "Automation",
  "Auditing",
  "Data Engineering",
  "Data Warehousing",
  "Collaboration",
  "Query Performance",
  "Communication",
  "Governance",
  "Python (Programming Language)",
  "Data Integration",
  "Encryption",
  "Information Systems",
  "Data Quality",
  "Machine Learning",
  "Extract Transform Load (ETL)",
  "User Acceptance Testing (UAT)",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Snowflake (Data Warehouse)",
  "Test Data",
  "Data Pipelines",
  "Troubleshooting (Problem Solving)",
  "Scripting",
  "Knowledge Transfer",
  "Data Governance",
  "Artificial Intelligence",
  "Problem Solving",
  "Document-Oriented Databases",
  "Tableau (Business Intelligence Software)",
  "Scalability",
  "Computer Science",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (264, 59737);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (264, 264, 264, 264, '2024-06-13', '2024-07-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (265, 'ETB453AB2BC84AFE6D', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (265, 'Smx Corporation Limited', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (265, '[Unknown City], IN', 'Indiana', '18999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (8280, '[
  "Reliability",
  "Information Technology",
  "Talent Management",
  "Communication",
  "Agile Project Management",
  "Data Analysis",
  "Business Requirements",
  "Reporting Tools",
  "Oracle Human Capital Management (HCM)",
  "Troubleshooting (Problem Solving)",
  "Quality Assurance",
  "Consulting",
  "Business Administration",
  "Problem Solving",
  "Innovation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (265, 8280);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (265, 265, 265, 265, '2024-06-06', '2024-07-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (266, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (266, 'Dew Softech', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (266, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60878, '[
  "Power BI",
  "Data Preprocessing",
  "Data Infrastructure",
  "Communication",
  "Presentations",
  "Amazon S3",
  "Analytical Skills",
  "Data Manipulation",
  "Amazon Redshift",
  "Spreadsheets",
  "Data Analysis",
  "Python (Programming Language)",
  "Dashboard",
  "Data Integration",
  "Azure Data Factory",
  "Data Mapping",
  "Data Lakes",
  "Detail Oriented",
  "Data Migration",
  "SQL (Programming Language)",
  "Project Scoping",
  "Data Pipelines",
  "Microsoft Excel",
  "Data Visualization",
  "Cloud Database"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (266, 60878);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (266, 266, 266, 266, '2024-09-13', '2024-09-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (267, 'ET8C3862714E338DDD', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (267, 'Dss International Sa', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (267, '[Unknown City], FL', 'Florida', '12999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (9910, '[
  "System Administration",
  "Information Technology",
  "Communication",
  "Application Programming Interface (API)",
  "Security Engineering",
  "Systems Design",
  "Cyber Security",
  "Lifting Ability",
  "IT Infrastructure",
  "IT Security",
  "Information Systems",
  "Internet Of Things (IoT)",
  "Enterprise Security",
  "Enterprise Architecture",
  "Graphic Design",
  "Security Systems",
  "Cloud Technologies",
  "FedRAMP",
  "NIST 800-53",
  "Information Systems Architecture",
  "Artificial Intelligence",
  "Security Policies",
  "Systems Engineering",
  "Software Development Methodologies"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (267, 9910);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (267, 267, 267, 267, '2024-08-28', '2024-10-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (268, 'ETBC0050BCE878D93D', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (268, 'KPMG', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (268, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58931, '[
  "Forecasting",
  "Management",
  "Conceptual Data Modeling",
  "Oracle Cloud",
  "Account Reconciliation",
  "Financial Close",
  "Planning",
  "Cost Management",
  "Data Warehousing",
  "Data Management",
  "Consolidation",
  "Hybrid Online Analytical Processing",
  "Full Life Cycle Implementation",
  "Professionalism",
  "Communication",
  "Governance",
  "Online Analytical Processing",
  "Leadership",
  "Budgeting",
  "Data Quality",
  "Master Of Business Administration (MBA)",
  "Enterprise Performance Management (EPM)",
  "Data Cleansing",
  "Management Information Systems",
  "NextGen Enterprise Practice Management",
  "Relational Online Analytical Processing (ROLAP)",
  "Change Management",
  "Process Transformation",
  "Stewardship",
  "Sales",
  "Reengineering",
  "Extract Transform Load (ETL)",
  "Information Access",
  "Business Performance Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (268, 58931);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (268, 268, 268, 268, '2024-09-27', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (269, 'ET31B81E815D3E5AFB', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (269, 'MicroStrategy', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (269, 'Carrollton, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93821, '[
  "Research",
  "Business Risk Management",
  "Flask (Web Framework)",
  "Automation",
  "Data Engineering",
  "Data Warehousing",
  "Tooling",
  "Git (Version Control System)",
  "Web Frameworks",
  "Systems Development Life Cycle",
  "Python (Programming Language)",
  "Django (Web Framework)",
  "Data Quality",
  "Continuous Integration",
  "FactSet (Analytics Software)",
  "Agile Methodology",
  "Jenkins",
  "Udeploy",
  "Amazon Web Services",
  "Cloudbees",
  "Formal Language",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (269, 93821);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (269, 269, 269, 269, '2024-05-17', '2024-05-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (270, 'ET748FE66CFA91C53A', 'Part-time / full-time', 2, 
        NULL, 66560, 93600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (270, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (270, 'Dartmouth, MA', 'Massachusetts', '25005');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (20729, '[
  "Clinical Experience",
  "Communication",
  "Time Management",
  "Licensed Independent Clinical Social Worker",
  "Working With Children",
  "Licensed Mental Health Counselor (LMHC)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (270, 20729);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (270, 270, 270, 270, '2024-08-29', '2024-10-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (271, 'ET6B57FB37DA4AA8A8', 'Full-time (> 32 hours)', 3, 
        NULL, 119995, 180086);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (271, 'Mayo Clinic', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (271, 'Rochester, MN', 'Minnesota', '27109');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (22362, '[
  "Customer Service",
  "Decision Tree Learning",
  "Analytical Procedures",
  "Writing",
  "Continuous Improvement Process",
  "Application Deployment",
  "Pattern Recognition",
  "Planning",
  "Data Extraction",
  "Prioritization",
  "Analytical Skills",
  "Data Mining",
  "Data Processing",
  "Data Science",
  "Unstructured Data",
  "Data Management",
  "Statistical Modeling",
  "Interpersonal Communications",
  "Health Sciences",
  "Data Analysis",
  "Communication",
  "Leadership",
  "Time Management",
  "Mathematics",
  "Operations Research",
  "Machine Learning",
  "Clinical Practices",
  "Project Management",
  "Predictive Modeling",
  "Scientific Computing",
  "Deep Learning",
  "Statistical Packages",
  "Data Modeling",
  "Persuasive Communication",
  "Negotiation",
  "Consulting",
  "Software Development",
  "Artificial Intelligence",
  "Problem Solving",
  "Report Writing",
  "Probability Theories",
  "Performance Appraisal",
  "Computer Science",
  "Artificial Neural Networks",
  "Scale (Map)",
  "Research Experiences"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (271, 22362);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (271, 271, 271, 271, '2024-06-09', '2024-06-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (272, 'ETC7B5640A8D002485', 'Full-time (> 32 hours)', 10, 
        NULL, 128310, 171080);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (272, 'Lumen Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (272, 'Honolulu, HI', 'Hawaii', '15003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52314, '[
  "Project Portfolio Management",
  "Application Programming Interface (API)",
  "Continuous Improvement Process",
  "Microservices",
  "Market Trend",
  "Business Process",
  "Customer Service",
  "Communication",
  "Emerging Technologies",
  "Leadership",
  "Enterprise Architecture",
  "Cloud Technologies",
  "Software Engineering",
  "Scalability",
  "DevOps",
  "Innovation",
  "Wholesaling",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (272, 52314);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (272, 272, 272, 272, '2024-06-02', '2024-07-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (273, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 10, 
        NULL, 164300, 200400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (273, 'Network Designs', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (273, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (96880, '[
  "System Lifecycle",
  "Customer Service",
  "Workflow Management",
  "ServiceNow",
  "Information Technology",
  "Management",
  "Solution Design",
  "Microsoft Azure",
  "Planning",
  "Cloud-Native Computing",
  "Security Clearance",
  "Microsoft PowerPoint",
  "Consolidation",
  "Scrum (Software Development)",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Innovation",
  "Agile Methodology",
  "Emerging Technologies",
  "Leadership",
  "Technical Leadership",
  "Enterprise Architecture",
  "JIRA",
  "Resilience",
  "IT Service Management",
  "Communication",
  "Root Cause Analysis",
  "Project Management",
  "Operations",
  "Detail Oriented",
  "Microsoft Project",
  "Access Controls",
  "Scalability",
  "Microsoft Excel",
  "Troubleshooting (Problem Solving)",
  "Amazon Web Services",
  "Microsoft 365",
  "Information Technology Infrastructure Library",
  "Verbal Communication Skills",
  "Change Management",
  "Product Support",
  "Microsoft Office",
  "Scalability Design",
  "Problem Solving",
  "Apple IOS",
  "Top Secret Clearance",
  "Industry Standards",
  "Disaster Recovery"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (273, 96880);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (273, 273, 273, 273, '2024-08-09', '2024-09-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (274, 'ET5A93722FDAB2407C', 'Full-time (> 32 hours)', 8, 
        8, 102000, 145700);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (274, 'Cardinal Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (274, 'Sacramento, CA', 'California', '6067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (19423, '[
  "Relational Databases",
  "Lifecycle Management",
  "Power BI",
  "Forecasting",
  "Research",
  "Business Systems",
  "Business Acumen",
  "Data Manipulation",
  "Market Dynamics",
  "Influencing Skills",
  "Python (Programming Language)",
  "Presentations",
  "Visualization",
  "Marketing",
  "Business Intelligence",
  "Writing",
  "Detail Oriented",
  "Data Analysis",
  "Alteryx",
  "SQL (Programming Language)",
  "Problem Solving",
  "Advanced Analytics",
  "Tableau (Business Intelligence Software)",
  "Visual Design",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (274, 19423);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (274, 274, 274, 274, '2024-06-13', '2024-06-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (275, 'ET8585070CB5E757EC', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (275, 'Jabil', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (275, 'Saint Petersburg, FL', 'Florida', '12103');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (45194, '[
  "Relational Databases",
  "Business Objectives",
  "Infrastructure Architecture",
  "Unified Modeling Language",
  "API Management",
  "Information Technology",
  "Management",
  "Functional Requirement",
  "Server-Side",
  "Continuous Improvement Process",
  "Application Deployment",
  "SAP HANA",
  "Data Collection",
  "Performance Tuning",
  "Data Warehousing",
  "Development Environment",
  "Amazon Redshift",
  "Influencing Skills",
  "Security Policies",
  "Service-Oriented Architecture",
  "Communication",
  "Project Management",
  "Leadership",
  "Information Systems",
  "Technical Leadership",
  "Agile Methodology",
  "Applications Architecture",
  "Advocacy",
  "Business Architecture",
  "Angular (Web Framework)",
  "Enterprise Architecture",
  "Lean Six Sigma",
  "SAP Applications",
  "Prototyping",
  "Root Cause Analysis",
  "Java (Programming Language)",
  "Cloud Technologies",
  "Data Lakes",
  "Writing",
  "Node.js (Javascript Library)",
  "Software Engineering",
  "SQL (Programming Language)",
  "Data Modeling",
  "Solution Architecture",
  "C# (Programming Language)",
  "Amazon Web Services",
  "ArchiMate",
  "Customer Relationship Management",
  "Scientific Data Archiving",
  "Problem Solving",
  "Public Cloud",
  "Team Leadership",
  "Amazon S3",
  "Scalability",
  "Computer Science",
  "Disaster Recovery",
  "Information Architecture",
  "Information Technology Architecture"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (275, 45194);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (275, 275, 275, 275, '2024-08-01', '2024-09-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (276, 'ET5CCE1CEC2FA1C6A3', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (276, 'Humac Co., Ltd.', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (276, 'Atlanta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (86808, '[
  "Application Programming Interface (API)",
  "User Interface (UI)",
  "Agile Methodology",
  "BigMachines Query Language (BMQL)",
  "Excel Solver",
  "Extensible Markup Language (XML)",
  "Technical Design",
  "Business Priorities",
  "Web Services",
  "BigMachines",
  "Product Configuration",
  "Salesforce",
  "Proposal Development",
  "Asynchronous Javascript and XML (AJAX)",
  "DocuSign (Software)",
  "Extensible HyperText Markup Language (XHTML)",
  "Certified Power Quality Professional",
  "Technological Change",
  "System Administration",
  "Business Requirements",
  "Java (Programming Language)",
  "Cloud Applications",
  "Workflow Management",
  "Mobile Application Development",
  "Simple Object Access Protocol (SOAP)",
  "Oracle Configure-Price-Quote (CPQ)",
  "Verbal Communication Skills",
  "User Experience (UX)",
  "HyperText Markup Language (HTML)",
  "Cascading Style Sheets (CSS)",
  "Middleware",
  "JavaScript (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (276, 86808);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (276, 276, 276, 276, '2024-06-11', '2024-06-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (277, 'ET269B693FDA320422', 'Full-time (> 32 hours)', 2, 
        NULL, 60000, 60000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (277, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (277, 'Virginia Beach, VA', 'Virginia', '51810');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81124, '[
  "Procurement",
  "Management",
  "Memos",
  "Investigation",
  "Procurement Cards",
  "Mergers And Acquisitions",
  "Communication",
  "Microsoft Office 365",
  "Internet Protocol Telephony",
  "Information Warfare",
  "Quality Assurance",
  "Knowledge Management",
  "Process Improvement",
  "Microsoft Office",
  "Program Management",
  "Business Development",
  "Team Performance Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (277, 81124);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (277, 277, 277, 277, '2024-07-30', '2024-08-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (278, 'ETBC0050BCE878D93D', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (278, 'KPMG', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (278, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58931, '[
  "Forecasting",
  "Management",
  "Conceptual Data Modeling",
  "Oracle Cloud",
  "Account Reconciliation",
  "Financial Close",
  "Planning",
  "Cost Management",
  "Data Warehousing",
  "Data Management",
  "Consolidation",
  "Hybrid Online Analytical Processing",
  "Full Life Cycle Implementation",
  "Professionalism",
  "Communication",
  "Governance",
  "Online Analytical Processing",
  "Leadership",
  "Budgeting",
  "Data Quality",
  "Master Of Business Administration (MBA)",
  "Enterprise Performance Management (EPM)",
  "Data Cleansing",
  "Management Information Systems",
  "NextGen Enterprise Practice Management",
  "Relational Online Analytical Processing (ROLAP)",
  "Change Management",
  "Process Transformation",
  "Stewardship",
  "Sales",
  "Reengineering",
  "Extract Transform Load (ETL)",
  "Information Access",
  "Business Performance Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (278, 58931);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (278, 278, 278, 278, '2024-09-24', '2024-09-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (279, 'ET59E4A9901A4DF74B', 'Full-time (> 32 hours)', 4, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (279, 'The Boston Consulting Group (BCG)', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (279, 'Austin, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81717, '[
  "Salesforce",
  "Enterprise Resource Planning",
  "Information Technology",
  "Management",
  "Communication",
  "Presentations",
  "On Prem",
  "Agile Methodology",
  "Planning",
  "Advanced Mathematics",
  "Netsuite",
  "Workday (Software)",
  "Business Process Modeling",
  "Influencing Skills",
  "Waterfall Methodology",
  "Mergers And Acquisitions",
  "Feasibility Studies",
  "SAP Applications",
  "Project Management",
  "Quality Assurance",
  "Consulting",
  "Software Development",
  "Relationship Building",
  "Restructuring (Business)",
  "PeopleSoft Applications",
  "Natural Sciences"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (279, 81717);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (279, 279, 279, 279, '2024-09-01', '2024-09-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (280, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (280, 'LMI', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (280, 'Scott Air Force Base, IL', 'Illinois', '17163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97196, '[
  "Systems Engineering",
  "Databricks",
  "Workflow Management",
  "Information Technology",
  "Data Modeling",
  "Tooling Design",
  "Microsoft Excel",
  "Agile Methodology",
  "Pandas (Python Package)",
  "Static Data",
  "Microsoft Teams",
  "PySpark",
  "Data Definition Language",
  "Scrum (Software Development)",
  "Customer Service",
  "Python (Programming Language)",
  "Dashboard",
  "Social Sciences",
  "Data Manipulation Language",
  "Business Requirements",
  "Business Intelligence",
  "Data Analysis",
  "SQL (Programming Language)",
  "Data Pipelines",
  "Power BI",
  "Extract Transform Load (ETL)",
  "Document-Oriented Databases",
  "Database Design",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (280, 97196);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (280, 280, 280, 280, '2024-08-18', '2024-09-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (281, 'ET3C44CD0B3DF65D86', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (281, 'California Physicians' Service', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (281, 'Oakland, CA', 'California', '6001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (23277, '[
  "Presentations",
  "Quality Control",
  "Data Processing",
  "Automation",
  "Drilldown",
  "Decision Making",
  "Data Analysis",
  "Business Continuity",
  "Health Informatics",
  "Process Improvement",
  "Research And Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (281, 23277);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (281, 281, 281, 281, '2024-07-26', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (282, 'ET607BA62B20FCA3C8', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (282, 'The Church Of Jesus Christ Of Latter-Day Saints', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (282, 'Salt Lake City, UT', 'Utah', '49035');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (92881, '[
  "Requirements Specifications",
  "Data Management",
  "React.js (Javascript Library)",
  "Business Process",
  "Front End (Software Engineering)",
  "Data Manipulation",
  "Python (Programming Language)",
  "Communication",
  "Java (Programming Language)",
  "Operations",
  "Data Structures",
  "DataOps",
  "Build Tools",
  "Project Management Software",
  "Data Recording"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (282, 92881);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (282, 282, 282, 282, '2024-05-04', '2024-05-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (283, 'ETABBAE9948F7A41C0', 'Part-time / full-time', NULL, 
        NULL, 100000, 100000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (283, 'First Guardian Security Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (283, 'Columbia, SC', 'South Carolina', '45079');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (48867, '[
  "Remote Access Systems",
  "Personalized Marketing",
  "Geofencing",
  "Video Analytics",
  "Alarm Devices",
  "Communication",
  "Motion Detection",
  "Revenue Stream",
  "Marketing Materials",
  "Referral Marketing",
  "Security Systems"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (283, 48867);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (283, 283, 283, 283, '2024-07-02', '2024-07-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (284, 'ETDAE50FF1ABF59BD7', 'Full-time (> 32 hours)', NULL, 
        NULL, 130000, 150000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (284, 'Interactive Resources', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (284, 'Irvine, CA', 'California', '6059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (5015, '[
  "Salesforce",
  "American Society For Clinical Pathology (ASCP) Certification",
  "User Story",
  "Order Management",
  "Order Management Systems",
  "Prioritization",
  "Requirements Specifications",
  "Planning",
  "Discrete Manufacturing",
  "Atlassian Confluence",
  "Agile Methodology",
  "Communication",
  "Microsoft Office",
  "Title 21 Of The Code Of Federal Regulations",
  "Project Management",
  "Business Priorities",
  "Finance",
  "Ability To Meet Deadlines",
  "Business Process",
  "Sarbanes-Oxley Act (SOX) Compliance",
  "FDA Regulations",
  "Scrum (Software Development)",
  "Software Development Life Cycle",
  "Oracle Manufacturing",
  "Leadership",
  "Information Systems",
  "Computer Science",
  "Enterprise Application Integration",
  "Supply Chain",
  "Supply Chain Planning",
  "Presentations",
  "JIRA",
  "Material Requirements Planning",
  "User Acceptance Testing (UAT)",
  "Enterprise Resource Planning",
  "Business Requirements",
  "Technical Support",
  "Kinaxis RapidResponse",
  "Oracle E-Business Suite",
  "Medical Devices",
  "Purchasing",
  "Microsoft Visio",
  "Forecasting",
  "Development Environment",
  "Supply Chain Software",
  "Manufacturing Engineering",
  "Incident Management",
  "Product Lifecycle Management",
  "Business Systems Analysis",
  "Regulatory Requirements",
  "SQL (Programming Language)",
  "Oracle Agile",
  "Regulatory Process"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (284, 5015);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (284, 284, 284, 284, '2024-07-18', '2024-08-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (285, 'ET25F7BF5157244FA6', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (285, 'Texcelvision', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (285, 'Austin, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25924, '[
  "Salesforce",
  "User Story",
  "Business Systems",
  "Agile Methodology",
  "Agile Software Development",
  "Business Process Reengineering",
  "Project Management Professional Certification",
  "Business Strategies",
  "Communication",
  "Requirements Elicitation",
  "Business Requirements Documentation",
  "Project Management",
  "Acceptance Testing",
  "Creativity",
  "Financial Analysis",
  "Product Management",
  "Scrum (Software Development)",
  "Data Analysis",
  "SQL (Programming Language)",
  "Coordinating",
  "Reengineering",
  "Oracle SQL Developer",
  "Business Process Mapping"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (285, 25924);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (285, 285, 285, 285, '2024-07-16', '2024-07-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (286, 'ETA6C910340E81639B', 'Full-time (> 32 hours)', NULL, 
        NULL, 66000, 106000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (286, 'Peraton', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (286, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (75316, '[
  "Research",
  "Information Technology",
  "System Support",
  "Microsoft Azure",
  "Windows System Administration",
  "Self-Motivation",
  "Microsoft Teams",
  "Telecommunications",
  "Network Quality Of Service (QoS)",
  "Linux",
  "Cisco Unified Communications Manager",
  "Red Hat Enterprise Linux",
  "Emerging Technologies",
  "TeleCommunications Engineering",
  "Call Center Experience",
  "Service-Level Agreement",
  "VMware Servers",
  "Security Requirements Analysis",
  "Operations",
  "Writing",
  "Technology Solutions",
  "Unified Communications",
  "Amazon Web Services",
  "Willingness To Learn",
  "Server Configuration",
  "Backup Devices",
  "Legal Support",
  "Engineering Support",
  "Local Area Networks",
  "Cisco WebEx",
  "Wide Area Networks",
  "Teamwork",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (286, 75316);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (286, 286, 286, 286, '2024-08-05', '2024-09-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (287, 'ET1D88879F3928A6E7', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (287, 'Diligente Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (287, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (76415, '[
  "Invoicing",
  "SAP S/4HANA",
  "Procurement",
  "Performance Reporting",
  "Purchasing",
  "Inventory Management",
  "Planning",
  "Physical Inventory",
  "Functional Specification",
  "Business Process",
  "Moving Average",
  "Contract Management",
  "Test Planning",
  "Logistics",
  "JIRA",
  "SAP Applications",
  "Business Requirements",
  "SAP Best Practices",
  "SAP ERP",
  "Transportation Management Systems",
  "Data Transformation",
  "Troubleshooting (Problem Solving)",
  "Problem Solving",
  "Communication",
  "Presentations",
  "Warehouse Management",
  "SAP Material Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (287, 76415);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (287, 287, 287, 287, '2024-05-25', '2024-06-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (288, 'ET96B7D40226B7842C', 'Full-time (> 32 hours)', 12, 
        NULL, 63200, 188600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (288, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (288, 'Miami, FL', 'Florida', '12086');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (37304, '[
  "Procurement",
  "SAP Fieldglass (Vendor Management Tool)",
  "Digitization",
  "SAP Ariba",
  "Apache Maven",
  "Technological Change",
  "SAP Applications",
  "Business Case",
  "Sales"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (288, 37304);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (288, 288, 288, 288, '2024-06-03', '2024-06-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (289, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (289, 'Trilogy Federal', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (289, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97665, '[
  "Detail Oriented",
  "Power BI",
  "Virtual Environment",
  "Agile Methodology",
  "Data Extraction",
  "Prioritization",
  "Self-Motivation",
  "Systems Development Life Cycle",
  "Automation",
  "Microsoft PowerPoint",
  "Data Management",
  "Big Data",
  "Microsoft Outlook",
  "Communication",
  "Star Schema",
  "Online Analytical Processing",
  "Decision Making",
  "Structured Query Language Procedural Language (SQL PL)",
  "SQL Server Analysis Services",
  "Visual Basic For Applications",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Data Analysis",
  "Microsoft Excel",
  "Consulting",
  "Predictive Analytics",
  "Scalability Design",
  "Extract Transform Load (ETL)",
  "Problem Solving",
  "Tableau (Business Intelligence Software)",
  "Information Technology Architecture"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (289, 97665);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (289, 289, 289, 289, '2024-08-01', '2024-08-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (290, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', 6, 
        NULL, 144600, 241000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (290, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (290, 'Princeton, NJ', 'New Jersey', '34021');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (7354, '[
  "Human Resource Strategy",
  "Communication",
  "Project Management",
  "Planning",
  "Talent Management",
  "Employee Engagement",
  "Workforce Planning",
  "Microsoft PowerPoint",
  "Mentorship",
  "Microsoft Visio",
  "Oracle Human Capital Management (HCM)",
  "Microsoft Excel",
  "Consulting",
  "Software As A Service (SaaS)",
  "Sales",
  "Microsoft Office",
  "Request For Proposal"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (290, 7354);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (290, 290, 290, 290, '2024-05-30', '2024-07-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (291, 'ETCC72DEEF80C62200', 'Full-time (> 32 hours)', 7, 
        7, 66977, 106312);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (291, 'Umpqua Bank', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (291, '[Unknown City], NV', 'Nevada', '32999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72366, '[
  "Bank Regulations",
  "Operating Systems",
  "System Software",
  "Financial Institution",
  "Mortgage Loans",
  "Microsoft Azure",
  "Agile Methodology",
  "Data Warehousing",
  "Goal Setting",
  "Functional Specification",
  "Finance",
  "Ability To Meet Deadlines",
  "Business Systems Analysis",
  "Data Integration",
  "Data Quality",
  "Bank Secrecy Act",
  "SQL Server Oracle",
  "Relational Databases",
  "Commercial Lending",
  "User Acceptance Testing (UAT)",
  "Business Requirements",
  "Management Information Systems",
  "Project Management",
  "Operations",
  "Writing",
  "Detail Oriented",
  "Analytical Skills",
  "Data Modeling",
  "Microsoft Excel",
  "Process Development",
  "DevOps"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (291, 72366);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (291, 291, 291, 291, '2024-08-27', '2024-09-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (292, 'ET73A8DA8CB5B119B1', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (292, 'Allegis Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (292, 'Fort Mill, SC', 'South Carolina', '45057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (94555, '[
  "Apache Hadoop",
  "Data Modeling",
  "Metadata Repository",
  "Data Management",
  "Big Data",
  "Waterfall Methodology",
  "Reference Data",
  "Python (Programming Language)",
  "Apache Spark",
  "Data Flow Diagram",
  "Data Dictionary",
  "SQL (Programming Language)",
  "Technology Solutions",
  "Agile Projects",
  "Metadata",
  "Data Lineage",
  "Snowflake Schema",
  "Data Governance",
  "Operational Data Store"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (292, 94555);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (292, 292, 292, 292, '2024-08-03', '2024-08-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (293, 'ET2FFCC727DAECFE9F', 'Full-time (> 32 hours)', 1, 
        1, 70000, 95000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (293, 'Revlon', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (293, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (46934, '[
  "Research",
  "Prioritization",
  "Analytical Skills",
  "Self-Motivation",
  "Microsoft PowerPoint",
  "Time Management",
  "Business Intelligence",
  "Strong Work Ethic",
  "Brand Strategy",
  "Microsoft Excel",
  "Power BI",
  "Ideation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (293, 46934);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (293, 293, 293, 293, '2024-07-18', '2024-09-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (294, 'ET707E25DD53AC062E', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (294, 'Diverse Lynx', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (294, 'Cambridge, MA', 'Massachusetts', '25017');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (42645, '[
  "Workflow Management",
  "Management",
  "Oracle Cloud",
  "Communication",
  "Technical Design",
  "Business Process",
  "Structured Query Language Procedural Language (SQL PL)",
  "PL/SQL",
  "Product Knowledge",
  "Business Requirements",
  "Functional Skills Qualification",
  "Oracle E-Business Suite",
  "Oracle Business Intelligence (BI) / OBIA",
  "Troubleshooting (Problem Solving)",
  "Technical Documentation",
  "Trade Compliance",
  "Oracle Transportation Management",
  "SQL (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (294, 42645);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (294, 294, 294, 294, '2024-07-25', '2024-09-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (295, 'ETE3CC2FB59D9F934F', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (295, 'Swift Strategic Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (295, 'Jackson, MS', 'Mississippi', '28049');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (30292, '[
  "Power BI",
  "NoSQL",
  "Data Governance",
  "Management",
  "Data Science",
  "Data Warehousing",
  "Collibra (Software)",
  "Metadata Management",
  "Informatica",
  "Data Management",
  "Information Systems",
  "Data Quality",
  "SQL (Programming Language)",
  "Data Lineage",
  "Extract Transform Load (ETL)",
  "Alation Data Catalog",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (295, 30292);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (295, 295, 295, 295, '2024-09-05', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (296, 'ET4EED4F34E592C3F5', 'Full-time (> 32 hours)', 14, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (296, 'Novo Nordisk', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (296, 'Clayton, NC', 'North Carolina', '37101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52869, '[
  "Business Objectives",
  "Forecasting",
  "Blueprinting",
  "Apache OpenOffice",
  "Supply Chain Analysis",
  "Warehousing",
  "Planning",
  "Complex Problem Solving",
  "SAP APO",
  "Performance Tuning",
  "SAP EWM",
  "Data Mining",
  "SAP Certification",
  "User Requirements Documents",
  "Communication",
  "Mentorship",
  "Superuser",
  "Presentations",
  "Supply Chain Management",
  "SAP Basis",
  "Data Quality",
  "Master Of Business Administration (MBA)",
  "Supply Chain",
  "Enterprise Resource Planning",
  "SAP Applications",
  "Project Management",
  "Business Intelligence",
  "Production Planning",
  "Writing",
  "Key Performance Indicators (KPIs)",
  "SAP ERP",
  "Workflow Management",
  "Report Writing",
  "Microsoft Excel",
  "Troubleshooting (Problem Solving)",
  "Test Automation",
  "Process Improvement",
  "SAP Supply Chain Management (SCM)",
  "Transaction Data",
  "Problem Solving",
  "Warehouse Management",
  "Computer Literacy"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (296, 52869);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (296, 296, 296, 296, '2024-05-20', '2024-06-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (297, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 4, 
        NULL, 70000, 90000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (297, 'Public Consulting Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (297, 'Salem, OR', 'Oregon', '41047');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58386, '[
  "Relational Databases",
  "Power BI",
  "SQL Server Integration Services (SSIS)",
  "Agile Methodology",
  "Transact-SQL",
  "Data Mining",
  "Business Analysis",
  "Data Warehousing",
  "Business Process",
  "Dashboard",
  "Vlookups",
  "Data Analysis",
  "Critical Thinking",
  "SQL (Programming Language)",
  "Microsoft Office",
  "Data Governance",
  "Problem Solving",
  "Data Visualization",
  "Microsoft Power Automate",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (297, 58386);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (297, 297, 297, 297, '2024-07-04', '2024-08-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (298, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (298, 'Ccf Holdings', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (298, 'Livonia, MI', 'Michigan', '26163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79267, '[
  "Management",
  "Customer Service"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (298, 79267);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (298, 298, 298, 298, '2024-07-16', '2024-08-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (299, 'ET234CB498A8801821', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (299, 'Bank of America', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (299, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (3237, '[
  "Relational Databases",
  "Programming Languages",
  "Research",
  "Anti Money Laundering",
  "Management",
  "Communication",
  "Data Modeling",
  "Data Element",
  "Business Analytics",
  "Continuous Improvement Process",
  "Inventory Management",
  "Analytical Thinking",
  "Information Gathering",
  "Business Acumen",
  "Application Development",
  "Data Mining",
  "Collibra (Software)",
  "Trend Analysis",
  "Data Management",
  "Data Architecture",
  "Operational Excellence",
  "Business Process",
  "Governance",
  "Engagement Skills",
  "Python (Programming Language)",
  "Apache Spark",
  "Leadership",
  "Data Quality",
  "Templates",
  "Supply Chain",
  "Bank Secrecy Act",
  "Business Continuity",
  "Data Mapping",
  "Business Requirements",
  "File Systems",
  "Business Intelligence",
  "Data Dictionary",
  "Advertisement",
  "SQL (Programming Language)",
  "Workflow Management",
  "Microsoft PowerPoint",
  "Microsoft Excel",
  "SAS (Software)",
  "Quality Assurance",
  "Metadata",
  "Data Lineage",
  "Data Governance",
  "Microsoft Office",
  "Extract Transform Load (ETL)",
  "Scala (Programming Language)",
  "Resilience",
  "Writing",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (299, 3237);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (299, 299, 299, 299, '2024-08-18', '2024-09-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (300, 'ETD009E29DA3AA3477', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (300, 'SAP', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (300, 'Herndon, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85534, '[
  "Infrastructure As A Service (IaaS)",
  "Maintenance Scheduling",
  "Architecture Analysis",
  "Management",
  "Cloud Infrastructure",
  "Platform As A Service (PaaS)",
  "Planning",
  "Microsoft Azure",
  "Change Control",
  "Business Continuity Planning",
  "Safety Assurance",
  "Communication",
  "Interpersonal Communications",
  "Tactfulness",
  "Business Process",
  "Mentorship",
  "Constructive Feedback",
  "Customer Support",
  "Leadership",
  "SAP Basis",
  "Decision Making",
  "Conflict Resolution",
  "Product Management",
  "Risk Analysis",
  "Strong Work Ethic",
  "Landscape Design",
  "Cooperation",
  "SAP Applications",
  "Root Cause Analysis",
  "SAP Best Practices",
  "Operations",
  "Writing",
  "Organizational Skills",
  "Sybase (Software)",
  "Troubleshooting (Problem Solving)",
  "Self-Motivation",
  "Amazon Web Services",
  "Software As A Service (SaaS)",
  "Linux",
  "Google Cloud Platform (GCP)",
  "Oracle SQL Developer",
  "Problem Solving",
  "Influencing Skills"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (300, 85534);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (300, 300, 300, 300, '2024-08-13', '2024-08-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (301, 'ET0000000000000000', 'Full-time (> 32 hours)', 3, 
        NULL, 83200, 93600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (301, 'Vsion Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (301, 'Cupertino, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80778, '[
  "Power BI",
  "Advanced Business Application Programming (ABAP)",
  "Analytical Skills",
  "Communication",
  "SAP BusinessObjects",
  "SAP CRM",
  "SAP Applications",
  "SAP ERP",
  "SQL (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (301, 80778);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (301, 301, 301, 301, '2024-07-23', '2024-07-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (302, 'ET26FD5AC53160D4EB', 'Full-time (> 32 hours)', 2, 
        NULL, 52250, 78390);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (302, 'Prime Therapeutics', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (302, 'Lincoln, NE', 'Nebraska', '31109');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (99645, '[
  "Tooling Design",
  "Crystal Reports (Reporting Software)",
  "Information Technology",
  "Management",
  "Microsoft Excel",
  "Data Warehousing",
  "Data Management",
  "Informatics",
  "Managed Care",
  "Analytics",
  "Security Controls",
  "Data Analysis",
  "Relational Databases",
  "Reporting Tools",
  "Data Collection",
  "SAS (Software)",
  "Continuous Quality Improvement (CQI)",
  "Business Administration",
  "Microsoft SQL Servers",
  "Microsoft Access",
  "Database Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (302, 99645);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (302, 302, 302, 302, '2024-08-09', '2024-08-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (303, 'ET72C940B7E137B87E', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (303, 'Delta Air Lines', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (303, 'Atlanta, GA', 'Georgia', '13067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85358, '[
  "Information Technology",
  "Management",
  "Servant Leadership",
  "Agile Methodology",
  "Solution Design",
  "Business Process Improvement",
  "Research And Development",
  "Authorization (Computing)",
  "Aviation",
  "Interpersonal Communications",
  "Creative Design",
  "Scheduling",
  "Flight Training",
  "Scrum (Software Development)",
  "Innovation",
  "Time Management",
  "Leadership",
  "Statistics",
  "Project Management",
  "Operations",
  "Technology Solutions",
  "Troubleshooting (Problem Solving)",
  "Business Strategies",
  "Business Administration",
  "Information Technology Management",
  "Database Management",
  "Process Mapping",
  "Industrial Engineering"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (303, 85358);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (303, 303, 303, 303, '2024-06-11', '2024-09-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (304, 'ETD93E714DA3EF968D', 'Full-time (> 32 hours)', 5, 
        NULL, 145600, 166400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (304, 'Computer Consultants International', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (304, 'Columbia, SC', 'South Carolina', '45079');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (75747, '[
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
  "Business Requirements",
  "Project Management",
  "Business Modeling",
  "Business Process Modeling",
  "Operations",
  "Writing",
  "Data Analysis",
  "Microsoft Project",
  "Healthcare Industry Knowledge",
  "Medicaid",
  "Traceability",
  "Version Control"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (304, 75747);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (304, 304, 304, 304, '2024-09-18', '2024-10-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (305, 'ETC8A11EF058B8166F', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (305, 'Quantum World Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (305, 'Cleveland, OH', 'Ohio', '39035');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (99351, '[
  "Gap Analysis",
  "Functional Testing",
  "Oracle Cloud",
  "Solution Design",
  "End-User Training And Support",
  "Requirements Elicitation",
  "Functional Specification",
  "Business Requirements",
  "Functional Analysis",
  "Oracle E-Business Suite"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (305, 99351);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (305, 305, 305, 305, '2024-05-01', '2024-05-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (306, 'ET20ADFD5ED9BE8A15', 'Full-time (> 32 hours)', 2, 
        NULL, 66200, 135800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (306, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (306, 'Tampa, FL', 'Florida', '12057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (21223, '[
  "Public Key Infrastructure",
  "Firewall",
  "Lifecycle Management",
  "Mitigation",
  "Data Analysis",
  "Network Protocols",
  "Information Technology",
  "Management",
  "Data Classification",
  "Windows Servers",
  "Microsoft Azure",
  "Vormetric Transparent Encryption (VTE)",
  "Business Continuity Planning",
  "Problem Solving",
  "CompTIA Security+",
  "Business Strategies",
  "Virtual Private Networks (VPN)",
  "Unix",
  "Communication",
  "Verisign",
  "NIST 800",
  "Incident Response",
  "Akamai",
  "Software Deployment",
  "Cyber Security",
  "Bomgar",
  "Linux",
  "Technical Engineering",
  "Admin Tools",
  "System Administration",
  "Governance",
  "Windows Defender",
  "Mac OS",
  "Virtualization",
  "Technical Support",
  "Hardening",
  "IT Security",
  "Encryption",
  "Security Controls",
  "Application Firewall",
  "Design Elements And Principles",
  "Active Directory",
  "Privileged Access Management",
  "Cloud Access Security Broker Tools (CASBs)",
  "Identity And Access Management",
  "Data Loss Prevention",
  "Data Protection Strategy",
  "Cloud Technologies",
  "Lightweight Directory Access Protocols",
  "Radware",
  "Key Management",
  "Application Security",
  "Removable Media",
  "Data Encryption",
  "Cryptography",
  "Endpoint Detection And Response",
  "CyberArk",
  "Certified Information Systems Security Professional",
  "Troubleshooting (Problem Solving)",
  "Scripting",
  "Self-Motivation",
  "Data Discovery",
  "Amazon Web Services",
  "Network Discovery",
  "Command-Line Interface",
  "Willingness To Learn",
  "Courage",
  "Software As A Service (SaaS)",
  "Change Management",
  "Data Retention",
  "Google Cloud Platform (GCP)",
  "Tier 2 Technical Support",
  "Risk Analysis",
  "Information Privacy",
  "Virtual Teams",
  "Incident Management",
  "IT Security Architecture",
  "ISO/IEC 27001",
  "Imperva",
  "Vulnerability",
  "Netskope",
  "Code Signing",
  "Cyber Risk",
  "Public Cloud",
  "Microsoft Office 365",
  "Windows PowerShell",
  "Data Access",
  "Computer Science",
  "TCP/IP",
  "SMTP (Simple Mail Transfer Protocol)",
  "Data Security",
  "Transmission Control Protocol (TCP)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (306, 21223);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (306, 306, 306, 306, '2024-05-18', '2024-05-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (307, 'ET95DB859B53CCACA7', 'Full-time (> 32 hours)', 6, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (307, 'Syms Strategic Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (307, 'Des Moines, IA', 'Iowa', '19153');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (86405, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (307, 86405);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (307, 307, 307, 307, '2024-08-02', '2024-08-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (308, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (308, 'ASGN', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (308, 'Cincinnati, OH', 'Ohio', '39061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90882, '[
  "Process Improvement",
  "User Experience (UX)",
  "Data Architecture",
  "Finance",
  "Business Process",
  "Leadership",
  "Analytics",
  "Key Performance Indicators (KPIs)",
  "Data Analysis",
  "Training And Development",
  "Technology Solutions",
  "Power BI",
  "Innovation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (308, 90882);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (308, 308, 308, 308, '2024-05-12', '2024-06-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (309, 'ET0000000000000000', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (309, 'Unikon It', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (309, 'Pasadena, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (18952, '[
  "User Story",
  "Workflow Management",
  "Management",
  "Prioritization",
  "Platform As A Service (PaaS)",
  "Order To Cash Process",
  "Legacy System Migration Workbench",
  "Quotations",
  "SAP Sales And Distribution",
  "Business Process Outsourcing",
  "SAP Certification",
  "Knowledge-Based Configuration",
  "Authorization (Computing)",
  "Functional Specification",
  "Scheduling",
  "Invoicing",
  "Equipment Service Management And Rental",
  "Business Process",
  "Salesforce",
  "Scrum (Software Development)",
  "Change Management",
  "File Transfer",
  "Systems Development Life Cycle",
  "Advanced Business Application Programming (ABAP)",
  "Agile Methodology",
  "SAP Solution Manager",
  "Certified Power Quality Professional",
  "Application Programming Interface (API)",
  "Billing",
  "SAP Applications",
  "Business Requirements",
  "Bill Of Materials",
  "Process Flow Diagrams",
  "Operations",
  "IDoc (Intermediate Document)",
  "Electronic Data Interchange",
  "Sarbanes-Oxley Act (SOX) Compliance",
  "Enterprise Resource Planning",
  "Consulting",
  "Verbal Communication Skills",
  "Software As A Service (SaaS)",
  "Sales",
  "Problem Solving",
  "Middleware",
  "Self-Discipline",
  "Presentations",
  "Writing",
  "Subcontracting",
  "Business Process Modeling"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (309, 18952);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (309, 309, 309, 309, '2024-07-12', '2024-07-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (310, 'ETA5854CF8FDA069ED', 'Full-time (> 32 hours)', 1, 
        NULL, 39520, 45760);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (310, 'RealManage', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (310, 'Seattle, WA', 'Washington', '53033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33657, '[
  "Good Driving Record",
  "Detail Oriented"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (310, 33657);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (310, 310, 310, 310, '2024-08-27', '2024-09-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (311, 'ET7767EEDBF263F7B7', 'Full-time (> 32 hours)', 3, 
        NULL, 235000, 250000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (311, 'CBRE', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (311, 'Richmond, VA', 'Virginia', '51760');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81947, '[
  "Business Objectives",
  "Salesforce",
  "Communication",
  "Application Data",
  "Mitigation",
  "Forecasting",
  "Management",
  "Functional Requirement",
  "Quantification",
  "Digital Transformation",
  "Hyperautomation",
  "Application Programming Interface (API)",
  "Agile Methodology",
  "Microsoft Azure",
  "Agile Software Development",
  "Cloud Computing Architecture",
  "Database Architecture",
  "User Experience (UX)",
  "Collibra (Software)",
  "Intellectual Curiosity",
  "Data Warehousing",
  "Virtual Reality",
  "Augmented Reality",
  "Informatica",
  "Data Management",
  "React.js (Javascript Library)",
  "Data Architecture",
  "Technical Presentations",
  "Demonstration Skills",
  "Analytics",
  "Decision Making",
  "Master Of Business Administration (MBA)",
  "Product Management",
  "Mathematics",
  "Enterprise Architecture",
  "Relational Databases",
  "Asset Management",
  "Portfolio Management",
  "Juniper Network Technologies",
  "Cost Reduction",
  "SnapLogic",
  "Data Lakes",
  "Presentations",
  "Verbal Communication Skills",
  "Data Modeling",
  "Market Requirements Documents",
  "Business Transformation",
  "Technology Solutions",
  "Solution Architecture",
  "Scalability Design",
  "Node.js (Javascript Library)",
  "Self-Motivation",
  "Amazon Web Services",
  "Anaplan",
  "Business Strategies",
  "Customer Relationship Management",
  "Performance Improvement",
  "Technology Ecosystems",
  "Sales",
  "DevOps",
  "Extract Transform Load (ETL)",
  "Data Governance",
  "Amazon DynamoDB",
  "Real Estate Investments",
  "CI/CD",
  "Influencing Skills",
  "PostgreSQL",
  "Data Strategy",
  "Investment Management",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (311, 81947);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (311, 311, 311, 311, '2024-05-20', '2024-08-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (312, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (312, 'Signode', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (312, 'Tampa, FL', 'Florida', '12057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (63352, '[
  "Customer Service",
  "Power BI",
  "Spanish Language",
  "Portuguese Language",
  "Business Analytics",
  "Data Warehousing",
  "Financial Acumen",
  "Business Acumen",
  "Cross-Functional Collaboration",
  "Business Metrics",
  "Business Analysis",
  "Microsoft PowerPoint",
  "Data Management",
  "Finance",
  "Business Process",
  "Tenacity",
  "Microsoft Outlook",
  "Communication",
  "Time Management",
  "Leadership",
  "Supply Chain",
  "Adaptability",
  "Data Analysis",
  "Regional Sales",
  "Marketing",
  "Packaging And Labeling",
  "Microsoft Visio",
  "Business Intelligence",
  "Operations",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Ad Hoc Reporting",
  "Sales Operations",
  "Customer Relationship Management",
  "Sales",
  "Business Administration",
  "Problem Solving",
  "Business To Business",
  "Influencing Skills",
  "New Product Development",
  "Interpersonal Communications"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (312, 63352);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (312, 312, 312, 312, '2024-08-07', '2024-09-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (313, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        3, 65000, 85000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (313, 'Jobot', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (313, 'Nashville, TN', 'Tennessee', '47037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58534, '[
  "Analytical Thinking",
  "Key Performance Indicators (KPIs)",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (313, 58534);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (313, 313, 313, 313, '2024-07-08', '2024-09-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (314, 'ET7E9852E6EBCA0A91', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (314, 'Tiktok', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (314, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (53908, '[
  "Sales Enablement",
  "Salesforce",
  "Power BI",
  "Sales Process",
  "Prioritization",
  "Forecasting",
  "Advanced Analytics",
  "Self-Motivation",
  "Courage",
  "Multitasking",
  "Sales Support",
  "Business Analysis",
  "Microsoft PowerPoint",
  "Influencing Skills",
  "Digital Advertising",
  "Decision Making",
  "Management Consulting",
  "Operations",
  "Google Workspace",
  "Key Performance Indicators (KPIs)",
  "Business Operations",
  "Advertisement",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Sales Planning",
  "Sales",
  "Problem Solving",
  "Revenue Growth",
  "Team Performance Management",
  "Document-Oriented Databases",
  "TikTok",
  "Tableau (Business Intelligence Software)",
  "Scalability"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (314, 53908);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (314, 314, 314, 314, '2024-05-02', '2024-05-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (315, 'ET44582B082B54BC85', 'Full-time (> 32 hours)', 6, 
        NULL, 144501, 217311);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (315, 'Intel', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (315, 'Trenton, NJ', 'New Jersey', '34021');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33803, '[
  "Unified Modeling Language",
  "Project Management Life Cycle",
  "Information Technology",
  "Information Technology Architecture",
  "Management",
  "Semiconductors",
  "Scenario Testing",
  "Inventory Management",
  "Warehousing",
  "Agile Methodology",
  "Planning",
  "Requirements Elicitation",
  "Timelines",
  "Ability To Meet Deadlines",
  "Acceptance Testing",
  "Waterfall Methodology",
  "User Requirements Documents",
  "Communication",
  "Systems Analysis",
  "Project Management",
  "Systems Development Life Cycle",
  "Non-Functional Testing",
  "Continuous Integration",
  "Industrial Engineering",
  "Test Automation",
  "SAP Applications",
  "Business Requirements",
  "Microsoft Visio",
  "Collaborative Software",
  "Web Services",
  "Production Planning",
  "Workflow Management",
  "Simple Object Access Protocol (SOAP)",
  "Troubleshooting (Problem Solving)",
  "Quality Assurance",
  "Change Management",
  "Process Improvement",
  "Backup And Restore",
  "Local Area Networks",
  "Computer Engineering",
  "Wide Area Networks",
  "Data Centers",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (315, 33803);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (315, 315, 315, 315, '2024-06-23', '2024-08-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (316, 'ET9B37BAEB716CCCDA', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (316, 'Asset Performance Networks', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (316, 'Bethesda, MD', 'Maryland', '24031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (69716, '[
  "Relational Databases",
  "Stata",
  "Environment Health And Safety",
  "Research",
  "Pattern Recognition",
  "Benchmarking",
  "Data Science",
  "Communication",
  "Data Engineering",
  "English Language",
  "Python (Programming Language)",
  "Mathematics",
  "Data Analysis",
  "Statistics",
  "Operations Research",
  "Machine Learning",
  "Project Management",
  "SQL (Programming Language)",
  "Data Pipelines",
  "Software As A Service (SaaS)",
  "Extract Transform Load (ETL)",
  "Economics",
  "Artificial Intelligence",
  "Writing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (316, 69716);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (316, 316, 316, 316, '2024-09-10', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (317, 'ETF76C13F058BFE143', 'Full-time (> 32 hours)', 5, 
        NULL, 107000, 179000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (317, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (317, 'Oklahoma City, OK', 'Oklahoma', '40109');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (51785, '[
  "Gap Analysis",
  "Talent Management",
  "Business Process",
  "SAP SuccessFactors",
  "SAP Applications",
  "Business Requirements",
  "Contract Review",
  "Human Capital",
  "Public Service",
  "Talent Recruitment",
  "Employee Onboarding"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (317, 51785);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (317, 317, 317, 317, '2024-05-12', '2024-05-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (318, 'ET52396B2696131EFE', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (318, 'Smx Corporation Limited', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (318, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (92849, '[
  "Custom Software",
  "Project Management",
  "Software Engineering",
  "PL/SQL",
  "Supply Chain",
  "Java (Programming Language)",
  "Oracle E-Business Suite",
  "Technology Solutions",
  "Microsoft Office"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (318, 92849);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (318, 318, 318, 318, '2024-08-27', '2024-10-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (319, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 41600, 54080);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (319, 'Nelnet', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (319, 'Sioux Falls, SD', 'South Dakota', '46099');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (89991, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (319, 89991);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (319, 319, 319, 319, '2024-05-31', '2024-06-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (320, 'ET5F758027D5A9C1D1', 'Full-time (> 32 hours)', 6, 
        NULL, 106400, 200200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (320, 'FINRA', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (320, 'Rockville, MD', 'Maryland', '24031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79662, '[
  "Power BI",
  "Presentations",
  "Management",
  "Prioritization",
  "Investments",
  "Peer Review",
  "Pattern Recognition",
  "Planning",
  "Investigation",
  "Analytical Skills",
  "Data Science",
  "Brokerage",
  "Securities (Finance)",
  "Timelines",
  "Finance",
  "Fixed Income",
  "Financial Industry Regulatory Authorities",
  "Quantitative Research",
  "Market Analysis",
  "Algorithms",
  "Equities",
  "Python (Programming Language)",
  "Apache Spark",
  "Lawsuits",
  "Financial Regulations",
  "Data Analysis",
  "Statistics",
  "Predictive Modeling",
  "Operations",
  "SQL (Programming Language)",
  "Data Collection",
  "Dispute Resolution",
  "Outliers",
  "Data Abstraction",
  "Statistical Methods",
  "Quantitative Analysis",
  "Economics",
  "Accounting",
  "Risk Prioritization",
  "Risk Modeling",
  "Broker Dealers",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (320, 79662);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (320, 320, 320, 320, '2024-08-13', '2024-10-12');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (321, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (321, 'SAP', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (321, 'Naperville, IL', 'Illinois', '17043');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (57102, '[
  "Rapport Building",
  "Application Development",
  "Automation",
  "Communication",
  "Interpersonal Communications",
  "Business Process",
  "Strategic Roadmaps",
  "Governance",
  "Leadership",
  "Presentations",
  "Master Of Business Administration (MBA)",
  "Enterprise Architecture",
  "The Open Group Architecture Framework (TOGAF)",
  "SAP Applications",
  "Verbal Communication Skills",
  "Business Transformation",
  "Go-to-Market Strategy",
  "Enterprise Architecture Framework",
  "Negotiation",
  "Customer Success Management",
  "Consulting",
  "Value Chain",
  "Business Technologies",
  "Teamwork",
  "Business Process Modeling"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (321, 57102);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (321, 321, 321, 321, '2024-06-26', '2024-07-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (322, 'ETCBD54F6B90888F99', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (322, 'Global Enterprise Partners', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (322, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (39506, '[
  "Customer Service",
  "JavaScript (Programming Language)",
  "Planning",
  "Communication",
  "Supply Chain Planning",
  "IT Service Management",
  "SAP Applications",
  "Demand Planning",
  "Quick Learning",
  "Transaction Data",
  "WebSocket"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (322, 39506);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (322, 322, 322, 322, '2024-09-05', '2024-10-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (323, 'ETDEE71C11E304A852', 'Full-time (> 32 hours)', 4, 
        NULL, 40404, 40404);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (323, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (323, 'Virginia Beach, VA', 'Virginia', '51810');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (7635, '[
  "Microsoft Excel",
  "Secret Clearance",
  "Microsoft PowerPoint",
  "Systems Analysis",
  "Application Security",
  "Microsoft Office",
  "SQL (Programming Language)",
  "Visual Acuity",
  "Microsoft Access",
  "Fine Motor Skills",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (323, 7635);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (323, 323, 323, 323, '2024-07-24', '2024-08-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (324, 'ET10D8C3E4D00982AD', 'Full-time (> 32 hours)', 9, 
        NULL, 104458, 161262);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (324, 'Intermountain Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (324, 'Baton Rouge, LA', 'Louisiana', '22033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (5654, '[
  "Computer Displays",
  "Office Equipment",
  "Continuous Improvement Process",
  "Patient Safety",
  "Performance Appraisal",
  "Finance",
  "Leadership",
  "Talent Management",
  "Packaging And Labeling",
  "Operations",
  "Data Analysis",
  "Financial Modeling",
  "Healthcare Industry Knowledge",
  "Business Development",
  "Problem Solving",
  "Stakeholder Communications"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (324, 5654);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (324, 324, 324, 324, '2024-08-10', '2024-08-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (325, 'ETA6B4FD11D29435BC', 'Part-time / full-time', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (325, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (325, 'Clarion, PA', 'Pennsylvania', '42031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (44922, '[
  "Customer Service",
  "Information Technology",
  "Management",
  "Database Administration",
  "Systems Design",
  "Project Status Reports",
  "Application Development",
  "Business Analysis",
  "Software Development Life Cycle",
  "Systems Analysis",
  "Technical Support",
  "Leadership",
  "Information Systems",
  "Operations",
  "Writing",
  "Software Engineering",
  "Technical Documentation",
  "Project Implementation",
  "Backup Devices",
  "Programming Tools",
  "Software Development",
  "Data Integrity",
  "Task Management",
  "Application Performance Management",
  "Computer Science",
  "Version Control",
  "Data Security",
  "Hardware Support"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (325, 44922);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (325, 325, 325, 325, '2024-09-26', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (326, 'ET6BC82897A98848D4', 'Full-time (> 32 hours)', 6, 
        NULL, 113325, 188875);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (326, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (326, 'Denver, CO', 'Colorado', '8031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (33970, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (326, 33970);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (326, 326, 326, 326, '2024-07-16', '2024-09-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (327, 'ET8193351F10204080', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (327, 'Asarco', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (327, 'Sahuarita, AZ', 'Arizona', '4019');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (11470, '[
  "Management",
  "SAP NetWeaver Data Management",
  "Warehousing",
  "Mechanical Engineering",
  "Planning",
  "Supply Chain",
  "Logistics",
  "Process Improvement",
  "Operational Efficiency",
  "Analytical Skills",
  "Communication",
  "Business Process",
  "Developing Training Materials",
  "Material Requirements Planning",
  "SAP Applications",
  "Project Management",
  "Operations",
  "Reengineering",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (327, 11470);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (327, 327, 327, 327, '2024-06-01', '2024-08-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (328, 'ETBA9FC7622AC18AEE', 'Part-time (≤ 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (328, 'Medline Industries', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (328, 'Libertyville, IL', 'Illinois', '17097');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (21838, '[
  "Presentations",
  "Management",
  "Planning",
  "Project Management",
  "Timelines",
  "Communication",
  "Leadership",
  "Templates",
  "Supply Chain",
  "Data Analysis",
  "SAP Applications",
  "Demand Forecasting",
  "Operations",
  "Price Analysis",
  "Sales",
  "Wrike",
  "Sales Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (328, 21838);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (328, 328, 328, 328, '2024-07-05', '2024-08-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (329, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 6, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (329, 'Tecknomic', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (329, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90109, '[
  "Transmission",
  "Microsoft Word",
  "Research",
  "Management",
  "Master Data Management",
  "Data Element",
  "Data Classification",
  "Public Policies",
  "Safety Assurance",
  "Analytical Skills",
  "Data Warehousing",
  "Business Concepts",
  "Authorization (Computing)",
  "Data Management",
  "Data Architecture",
  "Microsoft Outlook",
  "Verbal Communication Skills",
  "Data Governance",
  "Internal Controls",
  "Data Integration",
  "Leadership",
  "Information Systems",
  "Data Quality",
  "Enterprise Architecture",
  "Statistics",
  "Human Services",
  "Security Requirements Analysis",
  "Project Management",
  "Accountability",
  "Business Intelligence",
  "Writing",
  "Data Analysis",
  "Data Structures",
  "Record Keeping",
  "Microsoft PowerPoint",
  "Regulatory Compliance",
  "Microsoft Excel",
  "Metadata",
  "Research Methodologies",
  "Vulnerability",
  "Problem Solving",
  "Document-Oriented Databases",
  "Data Strategy",
  "Data Access",
  "Data Curation",
  "Risk Management",
  "Information Privacy"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (329, 90109);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (329, 329, 329, 329, '2024-06-25', '2024-07-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (330, 'ETC2DFD4A841E535A1', 'Part-time (≤ 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (330, 'Marathon Petroleum', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (330, 'Long Beach, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (53206, '[
  "Detail Oriented",
  "Customer Service",
  "Power BI",
  "Presentations",
  "Inventory Monitoring",
  "Growth Strategies",
  "Management",
  "Administrative Functions",
  "Communication",
  "Business Analytics",
  "Competitive Analysis",
  "Supply Chain",
  "Logistics",
  "Lifecycle Management",
  "Analytical Skills",
  "Commercial Development",
  "Data Science",
  "User Experience (UX)",
  "Coordinating",
  "Intellectual Curiosity",
  "Microsoft Word",
  "Usability",
  "Finance",
  "Streamlining",
  "Scheduling",
  "Market Trend",
  "Sales Prospecting",
  "Oil and Gas",
  "Customer Demand Planning",
  "Dashboard",
  "Leadership",
  "Analytics",
  "Data Analysis",
  "Strategic Planning",
  "Multitasking",
  "Marketing",
  "Market Research",
  "Alteryx",
  "Data-Driven Decision Making",
  "Report Writing",
  "Troubleshooting (Problem Solving)",
  "Application Lifecycle Management",
  "Microsoft Excel",
  "Marketing Strategies",
  "Business Administration",
  "Business Development",
  "Problem Solving",
  "Consumer Behaviour",
  "Tableau (Business Intelligence Software)",
  "Working Capital",
  "Sales Forecasting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (330, 53206);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (330, 330, 330, 330, '2024-08-16', '2024-10-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (331, 'ET26FD5AC53160D4EB', 'Full-time (> 32 hours)', 1, 
        NULL, 59100, 81500);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (331, 'Humana', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (331, 'Augusta, ME', 'Maine', '23011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (74755, '[
  "Wireless Communications",
  "Power BI",
  "Internet Services",
  "Microsoft Access",
  "Data Warehousing",
  "Unstructured Data",
  "Microsoft PowerPoint",
  "Finance",
  "Scheduling",
  "Self Service Technologies",
  "Innovation",
  "Dashboard",
  "Performance Reporting",
  "Managed Care",
  "Digital Subscriber Line",
  "Data Analysis",
  "Multitasking",
  "Organizational Strategy",
  "Verbal Communication Skills",
  "Operations",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "SAS (Software)",
  "Pivot Tables And Charts",
  "Microsoft Office",
  "Problem Solving",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "User Information"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (331, 74755);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (331, 331, 331, 331, '2024-05-22', '2024-05-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (332, 'ET13840866612DDE83', 'Full-time (> 32 hours)', NULL, 
        NULL, 84000, 202000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (332, 'PricewaterhouseCoopers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (332, 'Little Rock, AR', 'Arkansas', '5119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (56116, '[
  "Power BI",
  "Databricks",
  "Research",
  "BigQuery",
  "Data Storage",
  "SQL Server Integration Services (SSIS)",
  "Management",
  "Apache Hadoop",
  "Coaching",
  "Online Transaction Processing",
  "Self-Awareness",
  "Data Strategy",
  "AWS CloudFormation",
  "Microsoft Azure",
  "SQL Server Reporting Services",
  "Google Cloud Platform (GCP)",
  "Automation",
  "Apache Kafka",
  "Data Warehousing",
  "Amazon Redshift",
  "Docker (Software)",
  "Data Architecture",
  "Azure Synapse Analytics",
  "Kubernetes",
  "Big Data",
  "Communication",
  "Python (Programming Language)",
  "Apache Spark",
  "Leadership",
  "Terraform",
  "Online Analytical Processing",
  "Data Integration",
  "Azure Data Factory",
  "Ethical Standards And Conduct",
  "Matillion",
  "Infrastructure as Code (IaC)",
  "Critical Thinking",
  "SnapLogic",
  "Key Performance Indicators (KPIs)",
  "Ab Initio (Software)",
  "Workflow Management",
  "Scalability",
  "Data Modeling",
  "Amazon Web Services",
  "Business Strategies",
  "AWS Glue",
  "Snowflake Schema",
  "DevOps",
  "Star Schema",
  "Extract Transform Load (ETL)",
  "Data Governance",
  "Artificial Intelligence",
  "Problem Solving",
  "Scala (Programming Language)",
  "Financial Services",
  "CI/CD",
  "Data Analysis",
  "Activities Of Daily Living (ADLs)",
  "Teradata SQL",
  "Amazon S3",
  "Tableau (Business Intelligence Software)",
  "Programming Tools"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (332, 56116);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (332, 332, 332, 332, '2024-09-06', '2024-10-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (333, 'ET64CDD30D1B143F51', 'Full-time (> 32 hours)', 6, 
        6, 104000, 156000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (333, 'cyberThink', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (333, 'Issaquah, WA', 'Washington', '53033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (88944, '[
  "API Testing",
  "SAP Applications",
  "Mobile Application Testing",
  "Hybris"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (333, 88944);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (333, 333, 333, 333, '2024-06-28', '2024-07-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (334, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 6, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (334, 'Sedgwick', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (334, 'Cincinnati, OH', 'Ohio', '39061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58780, '[
  "Management",
  "Coaching",
  "Report Writing",
  "Data Compilation",
  "Software Technical Review",
  "Security Clearance",
  "Interpersonal Communications",
  "Finance",
  "Ability To Meet Deadlines",
  "Presentations",
  "Writing",
  "Teamwork",
  "Data Analysis",
  "Organizational Skills",
  "Data Integrity",
  "Microsoft Office",
  "Economics",
  "Program Management",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (334, 58780);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (334, 334, 334, 334, '2024-05-29', '2024-06-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (335, 'ETB87919E9499BE27D', 'Full-time (> 32 hours)', 14, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (335, 'Peraton', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (335, 'Beltsville, MD', 'Maryland', '24033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72107, '[
  "Certified Information System Auditor (CISA)",
  "Cisco Certified Network Associate",
  "Management",
  "Cisco Certified Network Associate Security (CCNA Security)",
  "Data Modeling",
  "Data Architecture",
  "Continuous Improvement Process",
  "CompTIA Cloud+",
  "GIAC Global Industrial Cyber Security Professional",
  "GIAC Certifications",
  "Secret Clearance",
  "Data Management",
  "Certified Ethical Hacker",
  "CompTIA Cybersecurity Analyst (CySA+)",
  "Splunk",
  "Data Quality",
  "Code Of Federal Regulations",
  "GIAC Certified Incident Handler",
  "Certified Chief Information Security Officer",
  "CISCO Certified Network Professional - Security",
  "CompTIA CASP+ CE",
  "Information Systems Security Architecture Professional",
  "Cyber Security",
  "GIAC Certified Enterprise Defender (GCED)",
  "Information Systems Security Engineering Professional",
  "Certified Information Systems Security Professional",
  "Certified Information Security Manager",
  "Cisco Cybersecurity Specialist (SCYBER)",
  "GIAC Certified Intrusion Analyst",
  "Data Integrity",
  "Data Governance",
  "GIAC Security Leadership Certification",
  "Top Secret Clearance",
  "Data Retrieval",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (335, 72107);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (335, 335, 335, 335, '2024-05-01', '2024-08-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (336, 'ET21819B00A47DD514', 'Full-time (> 32 hours)', 6, 
        NULL, 145700, 174700);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (336, 'Bill International Co.,Ltd.', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (336, 'San Jose, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (65916, '[
  "Curiosity",
  "Forecasting",
  "Research",
  "Workflow Management",
  "Prioritization",
  "Time Series Analysis And Forecasting",
  "Business Continuity Planning",
  "Customer Lifecycle Management",
  "Data Science",
  "Communication",
  "Data Warehousing",
  "Finance",
  "Influencing Skills",
  "Accounts Receivable",
  "A/B Testing",
  "Accounts Payable",
  "Python (Programming Language)",
  "Customer Support",
  "Dashboard",
  "Consumer Behaviour",
  "Key Performance Indicators (KPIs)",
  "Leadership",
  "Analytics",
  "Master Of Business Administration (MBA)",
  "Strategic Partnership",
  "Mathematics",
  "Statistics",
  "Machine Learning",
  "Marketing",
  "Data Analysis",
  "Product Engineering",
  "SQL (Programming Language)",
  "Data Modeling",
  "Macroeconomics",
  "Data Pipelines",
  "Power BI",
  "Market Segmentation",
  "Sales",
  "Product Leadership",
  "Business Intelligence",
  "Expense Management",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (336, 65916);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (336, 336, 336, 336, '2024-07-19', '2024-08-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (337, 'ET2E1B678A376F9936', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (337, 'Fisher Investments', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (337, 'Rockwall, TX', 'Texas', '48397');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (67278, '[
  "Application Data",
  "Workflow Management",
  "Presentations",
  "Order Management",
  "Order Management Systems",
  "Investments",
  "Influencing Skills",
  "Mentorship",
  "Microsoft Azure",
  "Leadership",
  "Information Systems",
  "Decision Making",
  "Conflict Resolution",
  "Business Architecture",
  "Wealth Management",
  "Enterprise Architecture",
  "Asset Management",
  "Portfolio Management",
  "Operations",
  "Fidessa (Software)",
  "Technology Solutions",
  "Negotiation",
  "Salesforce",
  "Accounting",
  "Problem Solving",
  "Portfolio Optimization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (337, 67278);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (337, 337, 337, 337, '2024-09-20', '2024-10-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (338, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (338, 'Diverse Lynx', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (338, 'Dallas, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (40456, '[
  "Communication",
  "Application Data",
  "Mitigation",
  "Management",
  "Functional Requirement",
  "Quantification",
  "Digital Transformation",
  "Data Architecture",
  "Hyperautomation",
  "Application Programming Interface (API)",
  "Agile Methodology",
  "Microsoft Azure",
  "Agile Software Development",
  "Cloud Computing Architecture",
  "Database Architecture",
  "Collibra (Software)",
  "Data Warehousing",
  "Virtual Reality",
  "Augmented Reality",
  "Informatica",
  "Data Management",
  "React.js (Javascript Library)",
  "Technical Presentations",
  "Demonstration Skills",
  "Master Of Business Administration (MBA)",
  "Product Management",
  "Mathematics",
  "Enterprise Architecture",
  "Relational Databases",
  "Cost Reduction",
  "SnapLogic",
  "Data Lakes",
  "Presentations",
  "Verbal Communication Skills",
  "Market Requirements Documents",
  "Business Transformation",
  "Technology Solutions",
  "Solution Architecture",
  "Scalability Design",
  "Node.js (Javascript Library)",
  "Self-Motivation",
  "Amazon Web Services",
  "Business Strategies",
  "Performance Improvement",
  "DevOps",
  "Extract Transform Load (ETL)",
  "Artificial Intelligence",
  "CI/CD",
  "Influencing Skills",
  "PostgreSQL",
  "Data Strategy",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (338, 40456);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (338, 338, 338, 338, '2024-07-25', '2024-09-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (339, 'ET5F9DFCB7ABFB0DFE', 'Full-time (> 32 hours)', 4, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (339, 'Nixon Power Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (339, 'Brentwood, TN', 'Tennessee', '47187');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (49079, '[
  "Power BI",
  "Data Transmissions",
  "Milestones (Project Management)",
  "Microsoft SQL Servers",
  "Communication",
  "Microsoft Dynamics GP",
  "Vulnerability Management",
  "Sales Order",
  "Planning",
  "Transact-SQL",
  "Microsoft Visual Studio",
  "Netsuite",
  "Microsoft Dynamics 365 Business Central",
  "Project Management",
  "Microsoft Dynamics",
  "Timelines",
  "Creativity",
  "Technical Support",
  "Management Reporting",
  "Operations",
  "Writing",
  "Bill Of Materials",
  "SQL (Programming Language)",
  "Field Service Management",
  "Application Security",
  "Troubleshooting (Problem Solving)",
  "Econnect",
  "General Ledger",
  "Backup Devices",
  "Sales",
  "Data Integrity",
  "SQL Server Reporting Services",
  "Accounting",
  "Release Management",
  "Order Processing",
  "Process Improvement",
  "Project Management Software",
  "Project Accounting",
  "Microsoft Dynamics 365",
  "End-User Training And Support"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (339, 49079);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (339, 339, 339, 339, '2024-06-04', '2024-07-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (340, 'ETFDE2EC77DDCB5B2C', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (340, 'Data Meaning', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (340, 'Brentwood, TN', 'Tennessee', '47187');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (59846, '[
  "Programming Languages",
  "Research",
  "Management",
  "Prompt Engineering",
  "Prioritization",
  "SQL (Programming Language)",
  "Change Control",
  "Database Storage Structures",
  "Safety Assurance",
  "Performance Management",
  "Application Development",
  "Data Mining",
  "Business Intelligence Reporting",
  "Data Warehousing",
  "Data Architecture",
  "Big Data",
  "Business Objects Framework",
  "Business Process",
  "Software Development Life Cycle",
  "Communication",
  "Innovation",
  "Systems Development Life Cycle",
  "Technical Leadership",
  "Data Analysis",
  "Business Requirements",
  "Critical Thinking",
  "Business Intelligence",
  "Operations",
  "Data Modeling",
  "Personal Integrity",
  "Machine Learning",
  "Quality Assurance",
  "Business Strategies",
  "Generative Artificial Intelligence",
  "Problem Solving",
  "Team Leadership",
  "Systems Theories",
  "Information Privacy"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (340, 59846);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (340, 340, 340, 340, '2024-07-31', '2024-08-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (341, 'ET92B701CFCB94A5C1', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (341, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (341, 'Arlington, VA', 'Virginia', '51013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (48044, '[
  "Business Objectives",
  "Information Technology",
  "Management",
  "Influencing Skills",
  "Architectural Leadership",
  "Unix",
  "Communication",
  "Agile Methodology",
  "Leadership",
  "Product Management",
  "Advocacy",
  "Software Architecture",
  "Enterprise Architecture",
  "Java (Programming Language)",
  "Operations",
  "Sales",
  "Back End (Software Engineering)",
  "DevOps",
  "Software Development",
  "Scalability",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (341, 48044);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (341, 341, 341, 341, '2024-08-05', '2024-09-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (342, 'ET8E691039BE119320', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (342, 'Peoplevisor', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (342, 'Sunnyvale, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (36097, '[
  "Gap Analysis",
  "Procurement",
  "Order Management",
  "Order Management Systems",
  "Oracle Cloud",
  "Order To Cash Process",
  "Analytical Skills",
  "Communication",
  "Microsoft Word",
  "Authorization (Computing)",
  "Microsoft PowerPoint",
  "Supply Chain Management",
  "Business Process",
  "Software Development Life Cycle",
  "Innovation",
  "Systems Development Life Cycle",
  "Unit Testing",
  "Positivity",
  "Supply Chain",
  "User Acceptance Testing (UAT)",
  "Teamwork",
  "Business Requirements",
  "Oracle E-Business Suite",
  "Detail Oriented",
  "Project Implementation",
  "Microsoft Office",
  "System Lifecycle",
  "Microsoft Excel",
  "Product Software Implementation Method",
  "Business To Business",
  "Technical Documentation",
  "Enterprise Resource Planning",
  "Consulting",
  "Knowledge Transfer",
  "Capacity Requirements Planning",
  "Post-Production",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (342, 36097);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (342, 342, 342, 342, '2024-07-14', '2024-09-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (343, 'ET096C5C8E6F62A216', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (343, 'Crossfire Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (343, 'Pine Plains, NY', 'New York', '36027');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (22786, '[
  "Management",
  "Governance Risk Management And Compliance",
  "Microsoft Azure",
  "ServiceNow",
  "SAP Applications",
  "Finance",
  "Business Process",
  "Active Directory",
  "Communication",
  "SAP Basis",
  "SAP ERP",
  "IT Service Management",
  "Billing",
  "Technical Support",
  "Troubleshooting (Problem Solving)",
  "Enterprise Resource Planning",
  "SAP Security",
  "Change Management",
  "Problem Solving",
  "Middleware",
  "Identity And Access Management",
  "Auditing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (343, 22786);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (343, 343, 343, 343, '2024-09-25', '2024-10-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (344, 'ET68A6B95E3C0BDFED', 'Full-time (> 32 hours)', 3, 
        NULL, 45760, 52000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (344, 'Pacer Staffing', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (344, 'Highlands Ranch, CO', 'Colorado', '8035');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (54408, '[
  "Machine Operation",
  "Typing",
  "Clerical Works",
  "Word Processing",
  "Bookkeeping",
  "Filing",
  "Stenography",
  "Office Procedures"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (344, 54408);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (344, 344, 344, 344, '2024-08-22', '2024-09-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (345, 'ET99EC582519F1274E', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (345, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (345, 'Irvine, CA', 'California', '6059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (28068, '[
  "Oracle E-Business Suite",
  "Requirements Elicitation",
  "Usability",
  "Acceptance Testing",
  "User Acceptance Testing (UAT)",
  "Field Service Management",
  "Project Scoping",
  "Internal Communications",
  "Verbal Communication Skills"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (345, 28068);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (345, 345, 345, 345, '2024-07-15', '2024-07-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (346, 'ET60D617B83DCEBBE6', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (346, 'Harrington Starr', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (346, 'Reading, PA', 'Pennsylvania', '42011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41927, '[
  "Business Objectives",
  "Solution Delivery",
  "Functional Requirement",
  "Solution Architecture",
  "Agile Methodology",
  "Microsoft Azure",
  "Systems Development Life Cycle",
  "Project Management",
  "Development Testing",
  "Communication",
  "Technical Leadership",
  "Enterprise Architecture",
  "Business Requirements",
  "Cloud Technologies",
  "Scalability",
  "Software Development",
  "Scalability Design",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (346, 41927);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (346, 346, 346, 346, '2024-09-15', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (347, 'ETF9F94E84BA5B0704', 'Part-time (≤ 32 hours)', 3, 
        NULL, 70346, 105518);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (347, 'UCHealth', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (347, 'Aurora, CO', 'Colorado', '8005');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (30067, '[
  "Power BI",
  "Presentations",
  "Decisiveness",
  "Medical Records",
  "Data Reporting",
  "Automation",
  "Timelines",
  "Communication",
  "Dashboard",
  "Key Performance Indicators (KPIs)",
  "Decision Making",
  "Data Analysis",
  "Critical Thinking",
  "SQL (Programming Language)",
  "Ad Hoc Reporting",
  "Time Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (347, 30067);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (347, 347, 347, 347, '2024-06-13', '2024-06-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (348, 'ET8A9F101FDE5E1BB8', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (348, 'Kforce', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (348, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (83731, '[
  "Reliability",
  "Infrastructure As A Service (IaaS)",
  "Business Objectives",
  "Power BI",
  "Databricks",
  "Microsoft SharePoint",
  "Research",
  "Agile Methodology",
  "Desired State Configuration",
  "Functional Requirement",
  "Multi-Cloud",
  "Remote Access Systems",
  "Maintainability",
  "Platform As A Service (PaaS)",
  "On Prem",
  "Fault Tolerance",
  "Planning",
  "Microsoft Azure",
  "Cloud Computing Architecture",
  "Cloud-Native Computing",
  "Application Development",
  "Cloud Services",
  "Unix",
  "Automation",
  "Technical Management",
  "Linux",
  "Microsoft 365",
  "Governance",
  "Textiles",
  "Information Systems",
  "Multi-Tenant Cloud Environments",
  "Active Directory",
  "Privileged Access Management",
  "Cloud Security",
  "Hybrid Cloud Computing",
  "Observability",
  "RACI Matrix",
  "Application Security",
  "CyberArk",
  "Amazon Web Services",
  "Credential Manager",
  "Software As A Service (SaaS)",
  "Authentications",
  "Change Management",
  "Google Cloud Platform (GCP)",
  "DevOps",
  "OAuth",
  "Azure Cloud Services",
  "CI/CD",
  "Scalability",
  "Computer Science",
  "Disaster Recovery",
  "Security Assertion Markup Language (SAML)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (348, 83731);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (348, 348, 348, 348, '2024-09-06', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (349, 'ETFFE32F1EB65AA2FD', 'Full-time (> 32 hours)', NULL, 
        NULL, 130000, 140000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (349, 'Gebbs Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (349, 'French Camp, CA', 'California', '6077');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (6912, '[
  "Reliability",
  "SQL Server Integration Services (SSIS)",
  "Custom Software",
  "On Prem",
  "Continuous Improvement Process",
  "Adjudication",
  "Windows Servers",
  "Microsoft Azure",
  "Automation",
  "Continuous Integration",
  "Microsoft SQL Servers",
  "Job Scheduling (Inventory Management)",
  "Continuous Delivery",
  "SQL (Programming Language)",
  "Operations",
  "Consulting",
  "DevOps",
  "Software Development",
  "CI/CD",
  "CA Workload Automation Ae"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (349, 6912);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (349, 349, 349, 349, '2024-07-27', '2024-08-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (350, 'ET6D3ABF56E5BA3D9E', 'Full-time (> 32 hours)', 3, 
        NULL, 125800, 172900);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (350, 'Aulani Resort', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (350, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (56449, '[
  "Research",
  "Financial Analysis",
  "Management",
  "Key Performance Indicators (KPIs)",
  "Planning",
  "Analytical Skills",
  "Microsoft PowerPoint",
  "Finance",
  "Scheduling",
  "Investment Banking",
  "Communication",
  "Ad Hoc Analysis",
  "Leadership",
  "Strong Work Ethic",
  "Management Consulting",
  "Marketing",
  "Go-to-Market Strategy",
  "Microsoft Excel",
  "Forecasting",
  "Financial Modeling",
  "Data Analysis",
  "Direct-to-Consumer (DTC)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (350, 56449);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (350, 350, 350, 350, '2024-06-17', '2024-08-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (351, 'ET9980421203E5B9A3', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (351, 'Wells Fargo', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (351, 'Chandler, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79790, '[
  "Presentations",
  "Management",
  "Planning",
  "Complex Problem Solving",
  "Influencing Skills",
  "Executive Presentations",
  "Analytical Skills",
  "Microsoft PowerPoint",
  "Microsoft Outlook",
  "Professionalism",
  "Innovation",
  "Governance",
  "Leadership",
  "Decision Making",
  "Templates",
  "Strategic Planning",
  "Consumer Lending",
  "Project Management",
  "Microsoft Office",
  "Regulatory Compliance",
  "Microsoft Excel",
  "Risk Appetite"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (351, 79790);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (351, 351, 351, 351, '2024-06-29', '2024-07-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (352, 'ET0000000000000000', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (352, 'Hallmark Global Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (352, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41929, '[
  "Event Scheduling",
  "Business Objectives",
  "Project Coordination",
  "Discussion Facilitation",
  "Information Technology",
  "Software Development Life Cycle",
  "Agile Methodology",
  "Project Management Professional Certification",
  "Business Analysis",
  "Functional Specification",
  "Waterfall Methodology",
  "Project Management",
  "Leadership",
  "Business Requirements",
  "Workflow Management",
  "Project Management Institute (PMI) Methodology"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (352, 41929);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (352, 352, 352, 352, '2024-09-24', '2024-10-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (353, 'ET1C11D6D56AE79DB0', 'Full-time (> 32 hours)', 15, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (353, 'New York Technology Partners', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (353, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (78481, '[
  "SAP S/4HANA",
  "SAP HANA",
  "Microsoft Azure",
  "Performance Tuning",
  "Private Cloud",
  "Presentations",
  "Applications Architecture",
  "SAP Applications",
  "Business Requirements",
  "Functional Skills Qualification",
  "Product Roadmaps",
  "Troubleshooting (Problem Solving)",
  "Consulting",
  "Dell Boomi (Integration Platform)",
  "Integration Platforms",
  "Scalability",
  "Process Mapping"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (353, 78481);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (353, 353, 353, 353, '2024-08-12', '2024-09-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (354, 'ETD48B2FB40D9560A7', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (354, 'Beechwood Computing Limited', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (354, 'Raleigh, NC', 'North Carolina', '37183');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (96549, '[
  "SAP Fiori",
  "Governance Risk Management And Compliance",
  "Enterprise Portal",
  "Binary Space Partitioning",
  "Application Programming Interface (API)",
  "Open Data Protocol (OData)",
  "SAP HANA",
  "Android (Operating System)",
  "Mobile Application Development",
  "Extensible Markup Language (XML)",
  "Development Environment",
  "Git (Version Control System)",
  "Business Objects Framework",
  "Debugging",
  "Corporate Strategy",
  "Advanced Business Application Programming (ABAP)",
  "Eclipse (Software)",
  "Microsoft SQL Servers",
  "Experience Design",
  "Document Management",
  "SAP Applications",
  "Business Requirements",
  "RESTful API",
  "Operations",
  "Web Dynpro",
  "Coordinating",
  "Software Installation",
  "Design Thinking",
  "Java (Programming Language)",
  "Customer Relationship Management",
  "User Experience (UX)",
  "SAP NetWeaver Application Servers",
  "HTML5",
  "Cascading Style Sheets (CSS)",
  "Business Intelligence",
  "Apple IOS",
  "SAP Business Suite",
  "JSON",
  "JavaScript (Programming Language)",
  "Programming Tools",
  "SAP Configuration"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (354, 96549);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (354, 354, 354, 354, '2024-05-21', '2024-05-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (355, 'ETEDC56741E5205457', 'Full-time (> 32 hours)', 5, 
        NULL, 110419, 135108);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (355, 'Proit', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (355, 'Sunnyvale, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (71486, '[
  "SAP Sales And Distribution",
  "Debugging",
  "Business Strategies",
  "Invoicing",
  "Data Warehousing",
  "Informatica",
  "Advanced Business Application Programming (ABAP)",
  "Revenue Recognition",
  "Billing",
  "SAP Applications",
  "Business Requirements",
  "Project Management",
  "SQL (Programming Language)",
  "Verbal Communication Skills",
  "Sales"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (355, 71486);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (355, 355, 355, 355, '2024-09-26', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (356, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (356, 'Intone Networks', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (356, 'Austin, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25142, '[]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (356, 25142);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (356, 356, 356, 356, '2024-07-18', '2024-09-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (357, 'ET607BA62B20FCA3C8', 'Full-time (> 32 hours)', 3, 
        3, 74254, 85000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (357, 'Patriot Trinity', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (357, 'Dripping Springs, TX', 'Texas', '48209');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60184, '[
  "Customer Service",
  "Power BI",
  "Microsoft SharePoint",
  "Management",
  "Ethical Standards And Conduct",
  "Operational Efficiency",
  "Analytical Skills",
  "Auditing",
  "Data Management",
  "Finance",
  "Business Metrics",
  "Performance Metric",
  "Communication",
  "Dashboard",
  "Time Management",
  "Key Performance Indicators (KPIs)",
  "Decision Making",
  "Data Analysis",
  "Reporting Tools",
  "Operations",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Data Collection",
  "Production Process",
  "Operations Management",
  "Organizational Skills",
  "Quality Assurance",
  "Microsoft 365",
  "Process Development",
  "Process Improvement",
  "Data Integrity",
  "Structural Steel",
  "Project Management Software",
  "Business Administration",
  "Accounting",
  "Problem Solving",
  "Industry Standards",
  "Software Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (357, 60184);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (357, 357, 357, 357, '2024-09-23', '2024-10-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (358, 'ET10D8C3E4D00982AD', 'Full-time (> 32 hours)', 5, 
        NULL, 77200, 123400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (358, 'Blue Cross Blue Shield', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (358, '[Unknown City], FL', 'Florida', '12999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (88535, '[
  "Ingenuity",
  "Healthcare Industry Knowledge",
  "Proactivity",
  "Management",
  "Self-Motivation",
  "Timelines",
  "Advisory Work",
  "Management Consulting",
  "Storyboarding",
  "Consulting",
  "Verbal Communication Skills",
  "Resourcefulness",
  "Innovation",
  "Business Strategies"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (358, 88535);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (358, 358, 358, 358, '2024-06-12', '2024-07-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (359, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (359, 'PricewaterhouseCoopers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (359, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52806, '[
  "Presentations",
  "Management",
  "Coaching",
  "Oracle Cloud",
  "Planning",
  "Intelligent Automation",
  "Supply Chain Management",
  "Business Process",
  "Thought Leadership",
  "Mentorship",
  "Leadership",
  "Human Capital Management (HCM)",
  "Supply Chain",
  "Ethical Standards And Conduct",
  "Communication",
  "Operations",
  "Telecommunications",
  "Consulting",
  "Relationship Building",
  "Economics",
  "Artificial Intelligence"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (359, 52806);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (359, 359, 359, 359, '2024-06-07', '2024-06-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (360, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (360, 'Koch Industries', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (360, 'Wichita, KS', 'Kansas', '20173');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (30685, '[
  "Business Objectives",
  "Management",
  "Systems Development Life Cycle",
  "Finance",
  "Influencing Skills",
  "Innovation",
  "IT Service Management",
  "Leadership",
  "Economics",
  "Information Management",
  "Enterprise Architecture",
  "Business Process Analysis",
  "Communication",
  "Business Requirements",
  "Critical Thinking",
  "Operations",
  "Business Transformation",
  "Economic Analysis",
  "Business Software",
  "Problem Solving",
  "Systems Integration",
  "Data Analysis",
  "Business Technologies",
  "Architectural Design",
  "Information Technology Architecture"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (360, 30685);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (360, 360, 360, 360, '2024-09-23', '2024-10-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (361, 'ETD0CE669C3F7085EC', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (361, 'Infosys', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (361, 'Austin, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52955, '[
  "SAP Logistics",
  "Information Technology",
  "Management",
  "SAP EWM",
  "Analytical Skills",
  "Mobile Devices",
  "Business Process",
  "Proposal Development",
  "Advanced Business Application Programming (ABAP)",
  "Warehouse Operations",
  "Supply Chain",
  "Data Analysis",
  "SAP Applications",
  "Business Requirements",
  "SAP ERP",
  "Project Scoping",
  "Consulting",
  "Warehouse Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (361, 52955);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (361, 361, 361, 361, '2024-07-11', '2024-09-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (362, 'ETACC73E4CF77FB7C2', 'Full-time (> 32 hours)', NULL, 
        NULL, 31200, 40872);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (362, 'Hannaford Brothers Company', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (362, 'York, ME', 'Maine', '23031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25142, '[]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (362, 25142);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (362, 362, 362, 362, '2024-05-25', '2024-06-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (363, 'ET5EF2E9677A861605', 'Full-time (> 32 hours)', NULL, 
        NULL, 92118, 202730);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (363, 'Perficient', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (363, 'Saint Louis, MO', 'Missouri', '29189');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (24282, '[
  "Databricks",
  "Research",
  "Presentations",
  "Management",
  "Data Architecture",
  "C-Suite Experience",
  "Innovation",
  "Microsoft Azure",
  "Data Warehousing",
  "Technology Research",
  "Data Engineering",
  "Virtualization",
  "Data Quality",
  "Enterprise Architecture",
  "Generative Artificial Intelligence",
  "Request For Proposal",
  "Strategic Planning",
  "Proof Of Concept (POC) Development",
  "Cloud Technologies",
  "Technology Solutions",
  "Regulatory Compliance",
  "Solution Architecture",
  "Machine Learning",
  "Phased Implementation",
  "Project Implementation",
  "Amazon Web Services",
  "Data Ingestion",
  "Data Lineage",
  "Google Cloud Platform (GCP)",
  "Sales",
  "Data Governance",
  "Artificial Intelligence",
  "Scalability"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (363, 24282);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (363, 363, 363, 363, '2024-06-11', '2024-08-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (364, 'ET7B17E1B37C51FA8E', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (364, 'NorthShore University HealthSystem', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (364, 'Arlington Heights, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (23432, '[
  "Enterprise Resource Planning",
  "Detail Oriented",
  "Healthcare Industry Knowledge",
  "Workflow Management",
  "ServiceNow",
  "Information Technology",
  "Process Improvement",
  "Automation",
  "Workday (Software)",
  "Auditing",
  "Dataflow",
  "Microsoft Office",
  "Microsoft PowerPoint",
  "Finance",
  "Ability To Meet Deadlines",
  "Business Process",
  "Financial Accounting",
  "Professionalism",
  "Development Testing",
  "Creativity",
  "Patience",
  "Communication",
  "Standard Operating Procedure",
  "Time Management",
  "Technical Support",
  "Information Systems",
  "Supply Chain",
  "Business Requirements",
  "Reporting Tools",
  "Systems Integration",
  "Microsoft Excel",
  "Troubleshooting (Problem Solving)",
  "Change Management",
  "Data Integrity",
  "Business Administration",
  "Problem Solving",
  "Security Policies",
  "Information Privacy"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (364, 23432);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (364, 364, 364, 364, '2024-09-27', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (365, 'ET62DFC4EDAFF13631', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (365, 'Hubbell', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (365, 'Leeds, AL', 'Alabama', '1073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93469, '[
  "Communication",
  "Continuous Improvement Process",
  "Information Gathering",
  "Organizational Change Management",
  "Organizational Leadership",
  "Supply Chain Management",
  "Data Management",
  "Business Process",
  "Collaboration",
  "Supply Chain",
  "Database Analysis",
  "SAP Applications",
  "Project Management",
  "Operations",
  "Detail Oriented",
  "Auditing",
  "Teamwork"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (365, 93469);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (365, 365, 365, 365, '2024-05-16', '2024-08-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (366, 'ETE75ACDE9F95BD7CD', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (366, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (366, 'Houston, TX', 'Texas', '48201');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41953, '[
  "Change Orders",
  "Invoicing",
  "Project Management",
  "Billing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (366, 41953);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (366, 366, 366, 366, '2024-09-29', '2024-10-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (367, 'ET73A8DA8CB5B119B1', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (367, 'Tau Six', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (367, 'Arlington, VA', 'Virginia', '51013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (3448, '[
  "NoSQL",
  "Apache HBase",
  "Information Technology",
  "Management",
  "Apache Hadoop",
  "Data Modeling",
  "Agile Methodology",
  "Information Synthesis",
  "Apache Solr",
  "Automation",
  "Apache Kafka",
  "Communication",
  "Data Management",
  "Data Architecture",
  "Big Data",
  "Technology Strategy Development",
  "Policy Development",
  "Python (Programming Language)",
  "Apache Spark",
  "Machine Learning",
  "Online Analytical Processing",
  "Ontologies",
  "Leadership",
  "Process Analysis",
  "Data Quality",
  "SAP BusinessObjects",
  "Resilience",
  "Data Mapping",
  "SAP Applications",
  "Critical Thinking",
  "Microsoft Visio",
  "SQL (Programming Language)",
  "Cyber Security",
  "Requirements Analysis",
  "Logical Reasoning",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Consulting",
  "Metadata",
  "Artificial Intelligence",
  "Systems Integration",
  "Securities Market",
  "Apache Flume",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (367, 3448);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (367, 367, 367, 367, '2024-05-16', '2024-07-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (368, 'ET34C0F823C01CAEBA', 'Full-time (> 32 hours)', 10, 
        NULL, 124000, 208000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (368, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (368, 'Boca Raton, FL', 'Florida', '12099');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (79129, '[
  "SAP Functional",
  "Gap Analysis",
  "Management",
  "Business Process",
  "SAP ERP",
  "Business Requirements",
  "Remittance",
  "Contract Review",
  "Human Capital",
  "Public Service",
  "Consulting",
  "SAP Implementation",
  "SAP Knowledge Warehouse"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (368, 79129);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (368, 368, 368, 368, '2024-05-11', '2024-05-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (369, 'ETD3035E881C387D0D', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (369, 'Exiger', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (369, 'Newark, NJ', 'New Jersey', '34013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2707, '[
  "Reliability",
  "Business Objectives",
  "Cloud Computing",
  "JavaScript (Programming Language)",
  "Operations Research",
  "Business Analytics",
  "Continuous Improvement Process",
  "User Interface (UI)",
  "Microsoft Access",
  "Prioritization",
  "Web Development",
  "Strategic Leadership",
  "Automation",
  "Data Science",
  "Microsoft PowerPoint",
  "Usability",
  "Interpersonal Communications",
  "C (Programming Language)",
  "Python (Programming Language)",
  "Dashboard",
  "Leadership",
  "Mathematics",
  "Supply Chain",
  "Business Statistics",
  "SQL (Programming Language)",
  "Team Management",
  "Organizational Skills",
  "Microsoft Excel",
  "Customer Success Management",
  "Business Intelligence Architecture",
  "Stakeholder Communications",
  "Software As A Service (SaaS)",
  "User Experience (UX)",
  "Sisense",
  "Microsoft Office",
  "Data Governance",
  "User Experience (UX) Design",
  "User Interface (UI) Design",
  "Data Visualization",
  "Amazon S3",
  "Scalability"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (369, 2707);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (369, 369, 369, 369, '2024-09-24', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (370, 'ET3AFD38674C012AA8', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (370, 'PricewaterhouseCoopers', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (370, 'Tulsa, OK', 'Oklahoma', '40143');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (74168, '[
  "Procurement",
  "Management",
  "Order Management",
  "Order Management Systems",
  "Supply Chain Planning",
  "Planning",
  "Order To Cash Process",
  "Talent Management",
  "Coordinating",
  "Value Propositions",
  "Supply Chain Management",
  "Supply Chain Software",
  "Warehouse Management Systems",
  "Talent Recruitment",
  "Employee Onboarding",
  "Decision Making",
  "Teamwork",
  "Collections",
  "Ethical Standards And Conduct",
  "Technological Change",
  "Billing",
  "Communication",
  "Demand Planning",
  "Workflow Management",
  "Warehouse Management",
  "Peer-To-Peer"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (370, 74168);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (370, 370, 370, 370, '2024-07-17', '2024-09-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (371, 'ET4410C5882C33BFA2', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (371, 'Mst Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (371, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (89027, '[
  "Effective Communication",
  "Information Technology",
  "SQL (Programming Language)",
  "Business Analysis",
  "Interpersonal Communications",
  "Project Management Professional Certification",
  "Data Analysis",
  "Business Requirements",
  "Technical Analysis",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (371, 89027);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (371, 371, 371, 371, '2024-08-13', '2024-08-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (372, 'ET21DDA63780A7DC09', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (372, 'Stellent It Llc', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (372, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (55959, '[
  "American Society For Clinical Pathology (ASCP) Certification",
  "Technical Recruitment"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (372, 55959);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (372, 372, 372, 372, '2024-07-16', '2024-07-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (373, 'ETBFB052AE8B768E0B', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (373, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (373, 'Washington, DC', 'Washington, D.C. (District of Columbia)', '11001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (29924, '[
  "Communication",
  "Functional Requirement",
  "Application Programming Interface (API)",
  "Planning",
  "Information Technology Management",
  "International Standards",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "IT Service Management",
  "Electronic Engineering",
  "Information Systems",
  "Enterprise Architecture",
  "Project Management",
  "Operations",
  "Systems Architecture",
  "Computing Platforms",
  "Software Development",
  "Open Systems Interconnection",
  "Data Engineering",
  "System Requirements"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (373, 29924);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (373, 373, 373, 373, '2024-05-23', '2024-07-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (374, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 49920, 58240);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (374, 'Merit Personnel And Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (374, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (94292, '[
  "Customer Service",
  "Management",
  "Issue Tracking",
  "Colocation",
  "Verbal Communication Skills",
  "Marketing Materials",
  "Billing",
  "Data Analysis",
  "Data Entry"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (374, 94292);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (374, 374, 374, 374, '2024-07-17', '2024-10-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (375, 'ET93079B3900280AC7', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (375, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (375, 'Coralville, IA', 'Iowa', '19103');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72020, '[
  "Enterprise Resource Planning",
  "Customer Service",
  "Analytical Techniques",
  "Procurement",
  "Technical Services",
  "Management",
  "Business Analytics",
  "Advocacy",
  "IBM i",
  "Business Process Improvement",
  "Finance",
  "Business Process",
  "Organizational Leadership",
  "Leadership Studies",
  "Infor Software",
  "Business Requirements",
  "Stakeholder Management",
  "Reporting Tools",
  "Project Management",
  "Operations",
  "Consulting",
  "Application Lifecycle Management",
  "Sales",
  "Microsoft Office"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (375, 72020);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (375, 375, 375, 375, '2024-08-21', '2024-10-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (376, 'ETCF7F472562BFA854', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (376, 'Honda', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (376, 'Greensboro, NC', 'North Carolina', '37081');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (35356, '[
  "Flight Testing",
  "Information Technology",
  "Emotional Intelligence",
  "Planning",
  "Process Management",
  "Workforce Planning",
  "Project Management",
  "Process Integration",
  "Presentations",
  "Operations",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (376, 35356);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (376, 376, 376, 376, '2024-08-11', '2024-09-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (377, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 10, 
        10, 110000, 140000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (377, 'Larsen & Toubro', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (377, 'Scottsdale, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (84500, '[
  "Power BI",
  "Data Warehousing",
  "Data Synchronization",
  "Apache Hadoop",
  "Data Modeling",
  "Microsoft Azure",
  "Shell Script",
  "MongoDB",
  "Analytical Skills",
  "Data Mining",
  "Agile Methodology",
  "Data Administration",
  "Data Engineering",
  "Tooling",
  "Data Selection",
  "English Language",
  "Python (Programming Language)",
  "Data Integration",
  "Data Flow Diagram",
  "Data Analysis",
  "JIRA",
  "Data Mapping",
  "Problem Solving",
  "Root Cause Analysis",
  "Reporting Tools",
  "Business Intelligence",
  "Reconciliation",
  "Postpartum Care",
  "SQL (Programming Language)",
  "Scripting",
  "Amazon Web Services",
  "Metadata",
  "Verbal Communication Skills",
  "Extract Transform Load (ETL)",
  "Document-Oriented Databases",
  "PostgreSQL",
  "Tableau (Business Intelligence Software)",
  "Vertica"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (377, 84500);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (377, 377, 377, 377, '2024-08-07', '2024-09-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (378, 'ETE9DC51E310562538', 'Full-time (> 32 hours)', 5, 
        NULL, 59916, 91692);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (378, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (378, 'Salem, OR', 'Oregon', '41047');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60561, '[
  "Power BI",
  "Data Analysis Expressions (DAX)",
  "Forecasting",
  "Research",
  "ArcGIS (GIS Software)",
  "Public Speaking",
  "Report Writing",
  "Planning",
  "Public Administration",
  "Time Series Analysis And Forecasting",
  "Interpersonal Communications",
  "Finance",
  "Political Sciences",
  "Policy Analysis",
  "Dashboard",
  "Powerpivot",
  "Leadership",
  "Research Reports",
  "Social Sciences",
  "Project Management",
  "Operations",
  "Construction Surveying",
  "Fire Service",
  "Powerquery",
  "Tableau (Business Intelligence Software)",
  "Program Evaluation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (378, 60561);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (378, 378, 378, 378, '2024-07-22', '2024-08-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (379, 'ETA6FC550E388A1B7C', 'Full-time (> 32 hours)', 3, 
        3, 59571, 74880);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (379, 'Advantage Credit Union Staffing', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (379, 'Brea, CA', 'California', '6059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41503, '[
  "Relational Databases",
  "SAP BusinessObjects",
  "SQL Server Integration Services (SSIS)",
  "Management",
  "Data Modeling",
  "USA Patriot Act",
  "Data Collection",
  "Analytical Skills",
  "Business Intelligence Reporting",
  "Data Warehousing",
  "Customer Identification Program",
  "Interpersonal Communications",
  "Finance",
  "Information Design",
  "Dashboard",
  "Pentaho Data Integration",
  "Information Systems",
  "Business Intelligence",
  "Data Analysis",
  "Transact-SQL",
  "SQL (Programming Language)",
  "Bank Secrecy Act",
  "Office Of Foreign Assets Controls",
  "SQL Server Reporting Services",
  "Economics",
  "Financial Services"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (379, 41503);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (379, 379, 379, 379, '2024-08-13', '2024-08-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (380, 'ET60DAE4A9AF8125FE', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (380, 'Integrated Talent Strategies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (380, 'Cleveland, OH', 'Ohio', '39035');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (31988, '[
  "Reliability",
  "Infrastructure As A Service (IaaS)",
  "Salesforce",
  "Enterprise Resource Planning",
  "Workflow Management",
  "Computing Platforms",
  "Digital Integration",
  "Ethical Standards And Conduct",
  "Information Technology",
  "Management",
  "Oracle Cloud",
  "Digital Transformation",
  "Team Building",
  "Platform As A Service (PaaS)",
  "Solution Architecture",
  "Agile Product Development",
  "Continuous Improvement Process",
  "Rapport Building",
  "Cyber Security Strategy",
  "Agile Methodology",
  "Self-Motivation",
  "Planning",
  "Microsoft Azure",
  "Microservices",
  "Computer Systems",
  "Talent Management",
  "Business Concepts",
  "Data Management",
  "Docker (Software)",
  "Kubernetes",
  "Influencing Skills",
  "Process Flow Diagrams",
  "Verbal Communication Skills",
  "Scrum (Software Development)",
  "Engineering Design Process",
  "Standard Operating Procedure",
  "Leadership",
  "Coupa (Spend Management Software)",
  "Information Systems",
  "Technical Leadership",
  "Powerapps",
  "Enterprise Application Software",
  "Mathematics",
  "Architectural Patterns",
  "Enterprise Architecture",
  "Strategic Decision Making",
  "React.js (Javascript Library)",
  "Service-Level Agreement",
  "Multitasking",
  "Total Cost Of Ownership",
  "Hybrid Cloud Computing",
  "Oracle E-Business Suite",
  "Business Operations",
  "Scalability",
  "Business Transformation",
  "Regulatory Compliance",
  "Technology Solutions",
  "Formal Learning",
  "Data Modeling",
  "Technology Strategies",
  "Customer Service",
  "Domain Driven Design",
  "Technical Documentation",
  "Amazon Web Services",
  "Software As A Service (SaaS)",
  "Consensus Decision Making",
  "Network Routing",
  "User Experience (UX)",
  "DevOps",
  "Relationship Building",
  "Problem Solving",
  "Kanban Principles",
  "Spring Framework",
  "Middleware",
  "Product Family Engineering",
  "Computer Engineering",
  "New Product Development",
  "Process Improvement",
  "Computer Science",
  "Database Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (380, 31988);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (380, 380, 380, 380, '2024-05-04', '2024-05-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (381, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (381, 'Lafcu', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (381, 'Lansing, MI', 'Michigan', '26065');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (18023, '[
  "Power BI",
  "Growth Strategies",
  "Management",
  "Data Management",
  "Dashboard",
  "Leadership",
  "Decision Making",
  "Data Analysis",
  "Marketing",
  "Predictive Modeling",
  "SQL (Programming Language)",
  "Metadata",
  "Customer Relationship Management",
  "Data Visualization",
  "New Product Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (381, 18023);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (381, 381, 381, 381, '2024-09-11', '2024-09-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (382, 'ET8A9F101FDE5E1BB8', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (382, 'Chandra Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (382, 'Durham, NC', 'North Carolina', '37063');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (31778, '[
  "Performance Analysis",
  "Cloud Computing",
  "Presentation Training",
  "NoSQL",
  "Research",
  "Amazon Elastic Compute Cloud",
  "AWS Networking",
  "Bash (Scripting Language)",
  "Information Technology",
  "DevSecOps",
  "Windows Servers",
  "API Gateway",
  "Microsoft Azure",
  "Cloud Strategy",
  "Microservices",
  "Amazon DynamoDB",
  "Cloud Computing Architecture",
  "Automation",
  "Cloud Services",
  "Unix",
  "Amazon Redshift",
  "Project Management",
  "Linux",
  "Low-Code Development Platform (LCDP)",
  "Aurora (Operating System)",
  "Governance",
  "Robotic Process Automation",
  "Communication",
  "Software As A Service (SaaS)",
  "Python (Programming Language)",
  "Reliability",
  "Internal Controls",
  "Time Management",
  "Brainstorming",
  "Cloud-Native Architecture",
  "Leadership",
  "Information Systems",
  "Management",
  "Continuous Integration",
  "Decision Making",
  "Enterprise Architecture",
  "The Open Group Architecture Framework (TOGAF)",
  "Amazon ElastiCache",
  "Cloud Management",
  "Cloud Technologies",
  "Writing",
  "Cloud Identity and Access Management (IAM)",
  "Product Engineering",
  "AWS Certified Solutions Architect",
  "TOGAF Certification",
  "Relationship Management",
  "Project Evaluation",
  "Containerization",
  "Scripting",
  "Amazon Web Services",
  "Amazon CloudWatch",
  "Google Cloud Platform (GCP)",
  "Cloud Migration",
  "Data Store",
  "Amazon Cloudfront",
  "Systems Design",
  "Cloud Governance",
  "Solution Architecture",
  "Innovation",
  "Infrastructure Automation",
  "Continuous Deployment",
  "CI/CD",
  "Amazon S3",
  "Computer Science",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (382, 31778);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (382, 382, 382, 382, '2024-07-09', '2024-07-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (383, 'ET225F42CAC4F13FF4', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (383, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (383, 'Weslaco, TX', 'Texas', '48215');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58647, '[
  "Pivot Tables And Charts",
  "Good Driving Record",
  "Power BI",
  "Microsoft SharePoint",
  "Database Queries",
  "Management",
  "Microsoft Excel",
  "Agile Methodology",
  "Planning",
  "Data Extraction",
  "Data Mining",
  "Self-Motivation",
  "Data Management",
  "Python (Programming Language)",
  "Valid Driver's License",
  "Dashboard",
  "Leadership",
  "Statistics",
  "Data Capture",
  "Visual Basic For Applications",
  "Project Management",
  "Operations",
  "Writing",
  "SQL (Programming Language)",
  "Excel Macros",
  "Operational Data Store",
  "Multitasking",
  "Ad Hoc Reporting",
  "Complex Problem Solving",
  "Visual Acuity",
  "Business Administration",
  "Service Improvement",
  "Service Improvement Planning",
  "Tableau (Business Intelligence Software)",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (383, 58647);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (383, 383, 383, 383, '2024-08-20', '2024-09-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (384, 'ETFED79B44094ACC71', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (384, 'Cbts', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (384, 'Ludington, MI', 'Michigan', '26105');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (63160, '[
  "Enterprise Resource Planning",
  "Research",
  "Information Technology",
  "Continuous Improvement Process",
  "Automation",
  "Manufacturing Execution System (MES)",
  "Business Process",
  "Strong Work Ethic",
  "End-User Training And Support",
  "Change Requests",
  "Electronic Data Interchange",
  "Problem Solving",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (384, 63160);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (384, 384, 384, 384, '2024-05-21', '2024-08-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (385, 'ET68FDE33DD86CCCC9', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (385, 'Lumen Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (385, 'Lincoln, NE', 'Nebraska', '31109');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (7070, '[
  "MySQL",
  "SQL Server Integration Services (SSIS)",
  "Performance Management",
  "Unix",
  "Requirements Elicitation",
  "Informatica",
  "Business Objects Framework",
  "Extract Transform Load (ETL)",
  "Development Testing",
  "Korn Shell",
  "KornShell",
  "Microsoft SQL Servers",
  "Strategic Planning",
  "Database Management Systems",
  "Netezza",
  "Forecasting",
  "Business Intelligence",
  "Operations",
  "Business Operations",
  "Transact-SQL",
  "MicroStrategy",
  "SAS (Software)",
  "Salesforce",
  "QlikView (Data Analytics Software)",
  "PL/SQL",
  "Teradata SQL"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (385, 7070);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (385, 385, 385, 385, '2024-07-18', '2024-08-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (386, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, 35360, 39520);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (386, 'Quantum Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (386, 'Albuquerque, NM', 'New Mexico', '35001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (838, '[
  "Inventory Control",
  "Lifting Ability",
  "Valid Driver's License",
  "Keys And Locks",
  "Problem Solving",
  "Financial Auditing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (386, 838);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (386, 386, 386, 386, '2024-06-10', '2024-08-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (387, 'ET7CBE443A2E62F953', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (387, 'The Denzel Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (387, 'Reading, PA', 'Pennsylvania', '42011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12587, '[
  "Data Modeling",
  "Business Intelligence",
  "SQL (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (387, 12587);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (387, 387, 387, 387, '2024-08-25', '2024-08-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (388, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 5, 
        NULL, 90000, 130000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (388, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (388, 'San Diego, CA', 'California', '6073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26322, '[
  "C (Programming Language)",
  "C++ (Programming Language)",
  "Power BI",
  "Databricks",
  "Object-Oriented Programming (OOP)",
  "Microsoft SharePoint",
  "Information Technology",
  "Management",
  "Grammar",
  "NumPy (Python Package)",
  "Zoom (Video Conferencing Tool)",
  "Microsoft Excel",
  "Pandas (Python Package)",
  "Security Clearance",
  "Apigee",
  "Data Science",
  "Collibra (Software)",
  "Microsoft Teams",
  "Big Data",
  "Top Secret-Sensitive Compartmented Information (TS/SCI Clearance)",
  "Python (Programming Language)",
  "Information Systems",
  "Data Analysis",
  "Database Application",
  "Machine Learning",
  "Java (Programming Language)",
  "TensorFlow",
  "Software Engineering",
  "SQL (Programming Language)",
  "SAS (Software)",
  "Scripting",
  "Sparse",
  "PyTorch (Machine Learning Library)",
  "MATLAB",
  "Query Languages",
  "Julia (Programming Language)",
  "Problem Solving",
  "Microsoft Access",
  "Writing",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "Grafana",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (388, 26322);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (388, 388, 388, 388, '2024-09-06', '2024-10-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (389, 'ET9DD7359458251254', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (389, 'KPMG', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (389, 'Kansas City, KS', 'Kansas', '20209');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41904, '[
  "Business Objectives",
  "Salesforce",
  "Customer Service",
  "Research",
  "Presentations",
  "ServiceNow",
  "Management",
  "Governance Risk Management And Compliance",
  "Microservices",
  "Organizational Change Management",
  "Organizational Leadership",
  "Goal Setting",
  "Technical Design",
  "Influencing Skills",
  "Business Valuation",
  "Reference Architecture",
  "Mobile Architecture",
  "Operations",
  "Writing",
  "Service-Oriented Architecture",
  "Technology Strategies",
  "Architectural Leadership",
  "Single Sign-On (SSO)",
  "Data Encryption",
  "Software As A Service (SaaS)",
  "Authentications",
  "Systems Integration",
  "Teamwork",
  "Enterprise Service Bus",
  "Information Technology Architecture"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (389, 41904);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (389, 389, 389, 389, '2024-06-28', '2024-08-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (390, 'ET85BAEA823E31037A', 'Full-time (> 32 hours)', 12, 
        NULL, 63200, 169800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (390, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (390, 'Nashville, TN', 'Tennessee', '47037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (49843, '[
  "Digitization",
  "Agile Methodology",
  "Communication",
  "Authorization (Computing)",
  "Interpersonal Communications",
  "Meter Data Management",
  "Business Process",
  "Apache Maven",
  "Technological Change",
  "Billing",
  "Business Requirements",
  "Customer Service",
  "Business Development",
  "Artificial Intelligence",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (390, 49843);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (390, 390, 390, 390, '2024-08-13', '2024-09-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (391, 'ETF646EFB0F4C95B50', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (391, 'Emerson Electric', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (391, 'Saint Louis, MO', 'Missouri', '29189');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (77729, '[
  "Human Resources Information System (HRIS)",
  "Coaching",
  "Oracle Cloud",
  "Cloud Computing Architecture",
  "Automation",
  "Coordinating",
  "Technical Design",
  "Acceptance Testing",
  "Mentorship",
  "Hardware Description Language (HDL)",
  "Time Management",
  "Leadership",
  "CPT Coding",
  "Project Management",
  "Verbal Communication Skills",
  "Oracle E-Business Suite",
  "Oracle Human Capital Management (HCM)",
  "Organizational Skills",
  "Decisiveness",
  "Consulting",
  "Data Conversion",
  "Business Intelligence",
  "Virtual Training",
  "Unit Testing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (391, 77729);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (391, 391, 391, 391, '2024-05-24', '2024-08-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (392, 'ETB5510BBDB8D14FB2', 'Part-time / full-time', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (392, 'Compass Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (392, 'Memphis, TN', 'Tennessee', '47157');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25142, '[]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (392, 25142);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (392, 392, 392, 392, '2024-09-16', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (393, 'ETB85A6A9082153D58', 'Full-time (> 32 hours)', NULL, 
        NULL, 58240, 66560);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (393, 'Richmond and Henrico Health Districts', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (393, 'Richmond, VA', 'Virginia', '51760');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (78318, '[
  "Curiosity",
  "Management",
  "Administrative Functions",
  "GIS Mapping",
  "Project Documentation",
  "Microsoft Access",
  "Epidemiology",
  "Safety Assurance",
  "Data Management",
  "Public Health",
  "Microsoft Teams",
  "R (Programming Language)",
  "Python (Programming Language)",
  "Dashboard",
  "Mathematics",
  "Data Analysis",
  "Statistics",
  "Data Privacy Laws",
  "Social Sciences",
  "Communication",
  "Investigation",
  "Critical Thinking",
  "RStudio",
  "Operations",
  "Research Electronic Data Capture (REDCap)",
  "SQL (Programming Language)",
  "Workflow Management",
  "Health Equity",
  "Public Health Informatics",
  "Data Collection",
  "SAS (Software)",
  "Primary Source Information",
  "Secondary Source Information",
  "Health Insurance Portability And Accountability Act (HIPAA) Compliance",
  "Microsoft Office",
  "Problem Solving",
  "Writing",
  "Statistical Programming",
  "Data Visualization",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (393, 78318);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (393, 393, 393, 393, '2024-09-27', '2024-10-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (394, 'ET0000000000000000', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (394, 'CSI Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (394, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2453, '[
  "Gap Analysis",
  "Oracle Cloud",
  "Requirements Analysis",
  "Finance",
  "Data Migration",
  "Expense Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (394, 2453);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (394, 394, 394, 394, '2024-08-02', '2024-08-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (395, 'ET54C1C151F3D17B20', 'Full-time (> 32 hours)', 5, 
        NULL, 141200, 258900);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (395, 'Ernst & Young', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (395, 'Atlanta, GA', 'Georgia', '13089');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12941, '[
  "Procurement",
  "Management",
  "Development Testing",
  "Technical Writing",
  "Oracle Cloud",
  "System Testing",
  "Software Configuration Management",
  "Project Management",
  "Functional Design",
  "Planning",
  "Cash Management",
  "Systems Development Life Cycle",
  "Requirements Elicitation",
  "Finance",
  "Business Process",
  "Accounts Receivable",
  "System Configuration",
  "Communication",
  "Accounts Payable",
  "Governance",
  "Master Of Business Administration (MBA)",
  "Business Architecture",
  "Collections",
  "Enterprise Resource Planning",
  "Billing",
  "Verbal Communication Skills",
  "Cloud Applications",
  "Middle Management",
  "Project Portfolio Management",
  "Fixed Asset",
  "General Ledger",
  "Consulting",
  "Listening Skills",
  "Revenue Management",
  "Business Development",
  "Accounting",
  "System Implementation",
  "Application Performance Management",
  "Primavera (Software)",
  "Post-Production"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (395, 12941);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (395, 395, 395, 395, '2024-09-11', '2024-09-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (396, 'ETFB496020F30C22AB', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (396, 'Ca-One Tech Cloud', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (396, 'Austin, TX', 'Texas', '48453');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (89312, '[
  "SAP Functional",
  "Procurement",
  "System Testing",
  "SAP Applications",
  "Business Requirements",
  "Writing",
  "Communication",
  "Third-Party Logistics",
  "Problem Solving",
  "Systems Integration",
  "SAP Material Management",
  "Subcontracting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (396, 89312);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (396, 396, 396, 396, '2024-08-14', '2024-08-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (397, 'ET5EF2E9677A861605', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (397, 'Tanisha Systems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (397, 'Alpharetta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (71537, '[
  "Relationship Building",
  "BigQuery",
  "Blueprinting",
  "Information Technology",
  "Data Modeling",
  "Data Architecture",
  "Business Analytics",
  "Solution Architecture",
  "Data Processing",
  "Data Science",
  "Communication",
  "Data Management",
  "Mentorship",
  "Python (Programming Language)",
  "Go (Programming Language)",
  "Collaboration",
  "Adaptability",
  "Statistics",
  "Machine Learning",
  "Java (Programming Language)",
  "Operations",
  "Data Migration",
  "Telecommunications",
  "Google Cloud Platform (GCP)",
  "Artificial Intelligence",
  "Advanced Analytics",
  "Computer Science",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (397, 71537);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (397, 397, 397, 397, '2024-08-14', '2024-08-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (398, 'ET6370B96E9016645B', 'Full-time (> 32 hours)', 2, 
        NULL, 95928, 158232);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (398, 'Idaho National Laboratory', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (398, 'Idaho Falls, ID', 'Idaho', '16019');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (71072, '[
  "Research",
  "Application Programming Interface (API)",
  "Database Administration",
  "Data Science",
  "Data Administration",
  "Annual Reports",
  "Business Process",
  "Mentorship",
  "Information Systems",
  "Accountability",
  "Data Analysis",
  "Coordinating",
  "Software Analysis",
  "Business Planning",
  "Writing",
  "Data Visualization",
  "Computer Science",
  "Surveys"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (398, 71072);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (398, 398, 398, 398, '2024-06-08', '2024-08-07');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (399, 'ET6A41A608AC27E8E0', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (399, 'Chewy', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (399, 'Coppell, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93378, '[
  "Pivot Tables And Charts",
  "Business Objectives",
  "Customer Service",
  "Presentations",
  "Forecasting",
  "Communication",
  "Empathy",
  "Continuous Improvement Process",
  "Planning",
  "Performance Management",
  "Utilization Management",
  "Data Management",
  "Data Architecture",
  "Finance",
  "Ability To Meet Deadlines",
  "Data Manipulation",
  "Patience",
  "Python (Programming Language)",
  "Time Management",
  "Leadership",
  "Statistics",
  "Call Center Experience",
  "Visual Basic For Applications",
  "Operations",
  "SQL (Programming Language)",
  "Excel Macros",
  "Service Level",
  "Workforce Management",
  "Business Administration",
  "Kronos (Timekeeping Software)",
  "Innovation",
  "Team Performance Management",
  "Descriptive Analytics",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (399, 93378);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (399, 399, 399, 399, '2024-06-14', '2024-08-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (400, 'ETFB496020F30C22AB', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (400, 'Atlantis It', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (400, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26535, '[
  "SAP Functional",
  "Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (400, 26535);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (400, 400, 400, 400, '2024-06-18', '2024-07-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (401, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 8, 
        8, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (401, 'The Judge Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (401, 'Alpharetta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (48424, '[
  "Mathematics",
  "Statistics",
  "Presentations",
  "Management",
  "Marketing Effectiveness",
  "Digital Marketing",
  "Operational Efficiency",
  "Data Mining",
  "Data Science",
  "Data Management",
  "Business Events",
  "Statistical Modeling",
  "Finance",
  "Boosting",
  "PySpark",
  "Business Valuation",
  "Time Series",
  "Algorithms",
  "Ad Hoc Analysis",
  "Apache Spark",
  "Consumer Behaviour",
  "Machine Learning Algorithms",
  "Data Analysis",
  "Machine Learning",
  "Descriptive Statistics",
  "Business Requirements",
  "Deep Learning",
  "MapReduce",
  "Physics",
  "Profitable Growth",
  "Customer Service",
  "Economics",
  "Artificial Intelligence",
  "Scala (Programming Language)",
  "Apache Hive",
  "Software Development",
  "Service Innovation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (401, 48424);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (401, 401, 401, 401, '2024-08-04', '2024-09-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (402, 'ETE944F8A1CC7C90B2', 'Full-time (> 32 hours)', 2, 
        NULL, 37000, 82000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (402, 'Broadway National Bank', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (402, 'San Antonio, TX', 'Texas', '48029');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (58513, '[
  "Research",
  "Prescriptive Analytics",
  "Management",
  "Business Analytics",
  "Data Import/Export",
  "Financial Institution",
  "Customer Insights",
  "Regression Analysis",
  "Data Science",
  "User Experience (UX)",
  "Microsoft PowerPoint",
  "Time Series Analysis And Forecasting",
  "Usability",
  "Finance",
  "Extract Transform Load (ETL)",
  "Customer Service",
  "Innovation",
  "Emerging Technologies",
  "Dashboard",
  "Leadership",
  "Presentations",
  "Consumer Behaviour",
  "Time Management",
  "Analytics",
  "Banking",
  "Mathematics",
  "Strong Work Ethic",
  "Statistics",
  "Customer Data Management",
  "Actuarial Science",
  "Cluster Analysis",
  "Prototyping",
  "Marketing",
  "Market Research",
  "Business Intelligence",
  "Writing",
  "Deep Learning",
  "SQL (Programming Language)",
  "Operational Data Store",
  "MicroStrategy",
  "Data Modeling",
  "Master Of Business Administration (MBA)",
  "Self-Motivation",
  "Microsoft Excel",
  "Certified Business Intelligence Professional (CBIP)",
  "Quantitative Analysis",
  "Economics",
  "Business Science",
  "Database Systems",
  "Advanced Analytics",
  "Data Analysis",
  "Data Visualization",
  "Collaboration",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (402, 58513);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (402, 402, 402, 402, '2024-08-22', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (403, 'ETF53395E2A7277822', 'Full-time (> 32 hours)', 3, 
        NULL, 104000, 114400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (403, 'Gnrsystems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (403, 'Santa Clara, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (17299, '[
  "Knockout.js (Javascript Library)",
  "Github",
  "Software Deployment",
  "Python (Programming Language)",
  "Certified Power Quality Professional",
  "Application Programming Interface (API)",
  "Bitbucket",
  "SAP Applications",
  "SAP ERP",
  "SQL (Programming Language)",
  "Workflow Management",
  "Node.js (Javascript Library)",
  "Scripting",
  "Customer Relationship Management",
  "HyperText Markup Language (HTML)",
  "Cascading Style Sheets (CSS)",
  "SAP Business Suite",
  "JavaScript (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (403, 17299);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (403, 403, 403, 403, '2024-07-30', '2024-09-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (404, 'ET607BA62B20FCA3C8', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (404, 'Intercontinental Exchange', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (404, 'Jacksonville, FL', 'Florida', '12031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (13424, '[
  "Microsoft Office",
  "Interpersonal Communications",
  "Contract Management",
  "Billing",
  "Operations",
  "Verbal Communication Skills"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (404, 13424);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (404, 404, 404, 404, '2024-07-11', '2024-07-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (405, 'ETFED79B44094ACC71', 'Full-time (> 32 hours)', 6, 
        NULL, 73027, 73027);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (405, 'University of South Florida', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (405, 'Saint Petersburg, FL', 'Florida', '12103');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72574, '[
  "Project Communications",
  "External Reporting",
  "Student Information Systems",
  "Information Technology",
  "Prioritization",
  "Agile Methodology",
  "Planning",
  "Coordinating",
  "Business Analysis",
  "Academic Affairs",
  "Business Process",
  "Communication",
  "Governance",
  "Leadership",
  "Decision Making",
  "Decision Support Systems",
  "Project Management",
  "Data Analysis",
  "Technological Change",
  "Policy Analysis",
  "Strategic Planning",
  "Accountability",
  "Business Intelligence",
  "Refining",
  "Process Flow Diagrams",
  "Enterprise Resource Planning",
  "Information Technology Operations",
  "Enterprise Application Software",
  "Reengineering",
  "Functional Testing",
  "Teaching",
  "Operational Data Store",
  "Quality Improvement",
  "Data Visualization",
  "Risk Management",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (405, 72574);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (405, 405, 405, 405, '2024-06-27', '2024-08-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (406, 'ET7B17E1B37C51FA8E', 'Full-time (> 32 hours)', 5, 
        5, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (406, 'Clean Harbors', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (406, 'Marshfield Hills, MA', 'Massachusetts', '25023');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32683, '[
  "Enterprise Resource Planning",
  "User Story",
  "Gap Analysis",
  "Relationship Building",
  "Technical Writing",
  "Functional Requirement",
  "Oracle Cloud",
  "Inventory Management",
  "Agile Methodology",
  "Open Mindset",
  "Communication",
  "Supply Chain Management",
  "Functional Specification",
  "Waterfall Methodology",
  "System Configuration",
  "Problem Solving",
  "Training Documentation",
  "Presentations",
  "Test Planning",
  "Business Requirements",
  "Troubleshooting (Problem Solving)",
  "Process Flow Diagrams",
  "Knowledge Transfer",
  "Accounting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (406, 32683);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (406, 406, 406, 406, '2024-05-01', '2024-06-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (407, 'ETD0BBD8B7F02FC5BB', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (407, 'Tenthpin Management Consultants', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (407, 'Sandy Springs, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (62962, '[
  "Animal Health",
  "SAP FI/CO",
  "Standard Accounting Practices",
  "Generally Accepted Accounting Principles",
  "Forecasting",
  "Governance Risk Management And Compliance",
  "Credit Management",
  "Clinical Trials",
  "Planning",
  "Cash Management",
  "Pharmaceuticals",
  "Communication",
  "Functional Specification",
  "Finance",
  "International Financial Reporting Standards",
  "Business Process",
  "Process Analysis",
  "Biotechnology",
  "SAP Applications",
  "Medical Devices",
  "Management Consulting",
  "Business Strategies",
  "Sales",
  "SAP Implementation",
  "Accounting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (407, 62962);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (407, 407, 407, 407, '2024-06-26', '2024-08-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (408, 'ET1E97C7F36BE279D1', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (408, 'Ensono', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (408, 'Augusta, ME', 'Maine', '23011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (44205, '[
  "IBM System Z",
  "Microsoft SharePoint",
  "Data Center Operations",
  "Midrange Computer",
  "VSE (Operating System)",
  "Microsoft Outlook",
  "Professionalism",
  "System Monitoring",
  "System Display And Search Facility (SDSF)",
  "z/OS",
  "Critical Thinking",
  "Operations",
  "Operations Management",
  "Checklists",
  "Microsoft Excel",
  "MVS (OS)",
  "Verbal Communication Skills",
  "Change Management",
  "Incident Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (408, 44205);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (408, 408, 408, 408, '2024-08-27', '2024-10-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (409, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (409, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (409, 'Fort Lauderdale, FL', 'Florida', '12011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (18709, '[
  "Landscaping"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (409, 18709);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (409, 409, 409, 409, '2024-05-10', '2024-07-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (410, 'ET36323C71A36AB5BD', 'Full-time (> 32 hours)', 6, 
        NULL, 83200, 83200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (410, 'Global Channel Management', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (410, 'Columbus, IN', 'Indiana', '18005');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (61765, '[
  "Human Resources Information System (HRIS)",
  "Requirements Analysis",
  "Technical Design",
  "RESTful API",
  "Acceptance Testing",
  "Hardware Description Language (HDL)",
  "Templates",
  "User Acceptance Testing (UAT)",
  "Channel Management",
  "Oracle Human Capital Management (HCM)",
  "SQL (Programming Language)",
  "Oracle Fusion Middleware",
  "Verbal Communication Skills",
  "Business Intelligence"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (410, 61765);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (410, 410, 410, 410, '2024-08-29', '2024-10-28');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (411, 'ET7767EEDBF263F7B7', 'Full-time (> 32 hours)', 12, 
        NULL, 171800, 286400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (411, 'Cox Automotive', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (411, 'Atlanta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (54993, '[
  "Business Objectives",
  "Infrastructure Architecture",
  "Management",
  "Communication",
  "Presentations",
  "Digital Transformation",
  "Internet Of Things (IoT)",
  "Planning",
  "Microservices",
  "Business Process Reengineering",
  "Strategic Leadership",
  "Data Architecture",
  "Innovation",
  "Business Process",
  "Business Valuation",
  "Emerging Technologies",
  "Leadership",
  "Applications Architecture",
  "Business Architecture",
  "Application Programming Interface (API)",
  "Enterprise Architecture",
  "Strategic Planning",
  "Solution Architecture",
  "Value Stream Mapping",
  "DevOps",
  "IT Security Architecture",
  "Research And Development",
  "Artificial Intelligence",
  "Machine Learning",
  "New Product Development",
  "Cloud-Native Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (411, 54993);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (411, 411, 411, 411, '2024-05-12', '2024-07-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (412, 'ETFB496020F30C22AB', 'Full-time (> 32 hours)', 5, 
        NULL, 120000, 130000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (412, 'Ztek Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (412, 'Cincinnati, OH', 'Ohio', '39061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (41926, '[
  "ONESOURCE Indirect Tax (Software)",
  "Debugging",
  "Invoicing",
  "Log Analysis",
  "Azure DevOps",
  "Gap Analysis",
  "Procurement",
  "ServiceNow",
  "Administrative Functions",
  "Business Systems",
  "Planning",
  "IBM Maximo",
  "Acceptance Testing",
  "Informatica",
  "Business Process",
  "Service-Oriented Architecture",
  "Coupa (Spend Management Software)",
  "Agile Methodology",
  "Application Programming Interface (API)",
  "Tax Laws",
  "SAP ERP",
  "Data Mapping",
  "SAP Applications",
  "Data Migration",
  "Workflow Management",
  "Information Technology",
  "Substrings",
  "Extract Transform Load (ETL)",
  "Accounting",
  "Middleware",
  "PeopleSoft Applications",
  "Procure-To-Pay (PTP)",
  "Auditing",
  "Peer-To-Peer"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (412, 41926);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (412, 412, 412, 412, '2024-06-17', '2024-06-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (413, 'ET0000000000000000', 'Full-time (> 32 hours)', 5, 
        NULL, 104000, 114400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (413, 'Ramsoft Systems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (413, 'Sunnyvale, CA', 'California', '6085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (17225, '[
  "Business Objectives",
  "Information Technology",
  "Continuous Improvement Process",
  "Business Acumen",
  "Interpersonal Communications",
  "Timelines",
  "Influencing Skills",
  "Business Process",
  "Thought Leadership",
  "Mentorship",
  "Expectation Management",
  "Leadership",
  "Transportation Management",
  "Communication",
  "SAP Applications",
  "Business Requirements",
  "Project Management",
  "Scalability",
  "Business Administration",
  "Presentations",
  "Workshop Facilitation",
  "SAP Transportation Management (TM)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (413, 17225);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (413, 413, 413, 413, '2024-05-12', '2024-05-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (414, 'ET5AA72D0E18D0EFE5', 'Full-time (> 32 hours)', 8, 
        NULL, 146827, 156021);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (414, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (414, 'Dallas, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (73183, '[
  "Business Objectives",
  "Salesforce",
  "Information Technology",
  "Lightning Web Components",
  "Salesforce Certification",
  "Automation",
  "Salesforce Development",
  "Business Process",
  "Mentorship",
  "Architectural Design",
  "Business Requirements",
  "Operations",
  "Field Service Management",
  "Scalability",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (414, 73183);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (414, 414, 414, 414, '2024-07-08', '2024-08-09');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (415, 'ETCDB614B9159D72EC', 'Full-time (> 32 hours)', 10, 
        NULL, 104000, 135200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (415, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (415, 'Blair, NE', 'Nebraska', '31177');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (60389, '[
  "Product Data Hub",
  "Business Reporting",
  "Workflow Management",
  "Gap Analysis",
  "Procurement",
  "Oracle Cloud",
  "System Testing",
  "Plesiochronous Digital Hierarchy",
  "Solution Design",
  "Functional Design",
  "Functional Specification",
  "Business Process",
  "Self Service Technologies",
  "Contract Management",
  "Supply Chain",
  "Test Case",
  "Business Requirements",
  "Web Services",
  "Operational Databases",
  "Verification And Validation",
  "Data Migration",
  "Purchasing",
  "Oracle Fusion Middleware",
  "Prototyping",
  "Enterprise Resource Planning",
  "Test Planning",
  "Custom Attributes",
  "Workflow Automation",
  "Product Lifecycle Management",
  "Document-Oriented Databases",
  "New Product Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (415, 60389);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (415, 415, 415, 415, '2024-08-13', '2024-08-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (416, 'ET9C7D6145FCF4FB8C', 'Full-time (> 32 hours)', 12, 
        NULL, 63200, 188600);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (416, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (416, 'Detroit, MI', 'Michigan', '26163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (92732, '[
  "BRFplus",
  "SAP S/4HANA",
  "Generally Accepted Accounting Principles",
  "Digitization",
  "Agile Methodology",
  "Cash Management",
  "Automation",
  "Communication",
  "Requirements Elicitation",
  "Authorization (Computing)",
  "Finance",
  "Invoicing",
  "International Financial Reporting Standards",
  "Revenue Recognition",
  "Apache Maven",
  "Accounts Payable",
  "Accounts Receivable",
  "Supply Chain",
  "SAP ERP",
  "Technological Change",
  "SAP Applications",
  "Business Requirements",
  "Technology Solutions",
  "Fixed Asset",
  "Design Thinking",
  "General Ledger",
  "Consulting",
  "SAP Supply Chain Management (SCM)",
  "Accounting",
  "Artificial Intelligence",
  "Revenue Accounting",
  "Hybris",
  "Value Propositions",
  "Peer-To-Peer"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (416, 92732);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (416, 416, 416, 416, '2024-06-01', '2024-08-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (417, 'ET95D1F73C7175DC2F', 'Full-time (> 32 hours)', 7, 
        NULL, 95680, 104000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (417, 'The Judge Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (417, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (27589, '[
  "Planning",
  "Data Warehousing",
  "Business Systems Analysis",
  "Linux",
  "Banking",
  "JIRA",
  "Interpersonal Communications",
  "Data Mapping",
  "Project Management",
  "SQL (Programming Language)",
  "Workflow Management",
  "SAS (Software)",
  "Consulting",
  "Agile Projects",
  "Metadata"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (417, 27589);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (417, 417, 417, 417, '2024-07-30', '2024-10-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (418, 'ETEB8942CF5D1A49DF', 'Full-time (> 32 hours)', 2, 
        2, 65000, 70000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (418, 'Pearson Education', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (418, 'Indianapolis, IN', 'Indiana', '18097');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (75753, '[
  "Workflow Management",
  "Information Technology",
  "Management",
  "Learning Management Systems",
  "Application Programming Interface (API)",
  "Excel Formulas",
  "Customer Engagement",
  "Operational Efficiency",
  "Extensible Markup Language (XML)",
  "Analytical Skills",
  "Automation",
  "Dataflow",
  "WordPress",
  "Business Process",
  "English Language",
  "Python (Programming Language)",
  "Customer Support",
  "Dashboard",
  "Technical Support",
  "Leadership",
  "Decision Making",
  "Positivity",
  "Data Analysis",
  "JIRA",
  "Business Requirements",
  "Web Development",
  "Project Management",
  "Collaborative Software",
  "Business Operations",
  "Drupal",
  "Microsoft Excel",
  "Quality Management",
  "Troubleshooting (Problem Solving)",
  "Single Sign-On (SSO)",
  "Quality Assurance",
  "Information Technology Operations",
  "Problem Solving",
  "Workflow Automation",
  "Program Management",
  "JavaScript (Programming Language)",
  "Computer Science",
  "Curiosity"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (418, 75753);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (418, 418, 418, 418, '2024-08-30', '2024-09-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (419, 'ETB717621332DFB3A4', 'Full-time (> 32 hours)', 8, 
        NULL, 131175, 131175);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (419, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (419, 'San Diego, CA', 'California', '6073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (991, '[
  "SAP S/4HANA",
  "Sales Proposals",
  "Request For Proposal",
  "Invoicing",
  "Agile Methodology",
  "Continuous Integration",
  "Agile Leadership",
  "SAP Applications",
  "Consulting",
  "Customer Relationship Management",
  "Sales"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (419, 991);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (419, 419, 419, 419, '2024-06-05', '2024-06-29');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (420, 'ET62AFD30E16B95621', 'Part-time (≤ 32 hours)', 4, 
        4, 66700, 145000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (420, 'Oracle', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (420, 'Albany, NY', 'New York', '36001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (11039, '[
  "Functional Requirement",
  "Analytical Skills",
  "Innovation",
  "Communication",
  "Software Design Documents",
  "Cloud Security",
  "Internet And Computing Core Certification",
  "Writing",
  "Data Analysis",
  "New Product Development"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (420, 11039);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (420, 420, 420, 420, '2024-09-11', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (421, 'ET5F9E959F7DBBAEA7', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (421, 'Nfp', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (421, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (96412, '[
  "Milestones (Project Management)",
  "Project Planning",
  "Tooling",
  "Data Quality",
  "Data Analysis",
  "Alteryx",
  "Microsoft SQL Servers",
  "Microsoft Excel",
  "Operating Systems"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (421, 96412);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (421, 421, 421, 421, '2024-08-27', '2024-10-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (422, 'ET1C2068AF1B1394F9', 'Full-time (> 32 hours)', NULL, 
        NULL, 41600, 62400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (422, 'Kennedy/Jenks Consultants', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (422, 'Tampa, FL', 'Florida', '12057');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (88861, '[
  "Water Treatment",
  "Power BI",
  "Research",
  "Planning",
  "Microsoft Azure",
  "Customer Information Systems",
  "Process Improvement",
  "Self-Motivation",
  "Data Science",
  "Data Management",
  "Wastewater",
  "Mentorship",
  "Time Management",
  "Information Management",
  "Asset Management",
  "Machine Learning",
  "Detail Oriented",
  "Microsoft 365",
  "Artificial Intelligence",
  "Engineering Management",
  "Team Oriented",
  "Data Analysis",
  "Tableau (Business Intelligence Software)",
  "Supervisory Control And Data Acquisition (SCADA)",
  "Water Resources"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (422, 88861);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (422, 422, 422, 422, '2024-08-29', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (423, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (423, 'Renown Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (423, 'Reno, NV', 'Nevada', '32031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (78661, '[
  "Reliability",
  "Power BI",
  "Data Analysis Expressions (DAX)",
  "Statistics",
  "Curiosity",
  "Research",
  "Presentations",
  "Clinical Trials",
  "Data Validation",
  "Statistical Software",
  "Data Modeling",
  "Continuous Improvement Process",
  "Target Audience",
  "Microsoft Azure",
  "Microsoft Access",
  "Exploratory Data Analysis",
  "Analytical Skills",
  "Statistical Analysis",
  "Data Mining",
  "Communication",
  "Algorithm Design",
  "Microsoft Office",
  "Microsoft PowerPoint",
  "Data Management",
  "Microsoft Outlook",
  "English Language",
  "Creativity",
  "Governance",
  "Typing",
  "Python (Programming Language)",
  "Emerging Technologies",
  "Dashboard",
  "Ethical Standards And Conduct",
  "Electronic Medical Record",
  "Data Analysis",
  "Performance Measurement",
  "Machine Learning",
  "Data Mapping",
  "Basic Research",
  "Scientific Literature",
  "Predictive Modeling",
  "Detail Oriented",
  "Biology",
  "Deep Learning",
  "Alteryx",
  "SQL (Programming Language)",
  "Programming Environments",
  "Data Collection",
  "Microsoft Excel",
  "SAS (Software)",
  "Health Insurance Portability And Accountability Act (HIPAA) Compliance",
  "Quality Assurance",
  "Benefits Enrollment Processes",
  "SPSS (Statistical Software)",
  "Business Intelligence",
  "Problem Solving",
  "Clinical Study Design",
  "Writing",
  "Data Visualization",
  "Tableau (Business Intelligence Software)",
  "Information Privacy",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (423, 78661);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (423, 423, 423, 423, '2024-07-14', '2024-10-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (424, 'ETE3CC2FB59D9F934F', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (424, 'Hilltop Holdings', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (424, 'Irving, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80110, '[
  "Relational Databases",
  "Data Storage",
  "Data Validation",
  "Metadata Standards",
  "Prioritization",
  "Data Mining",
  "Data Warehousing",
  "Strategic Decision Making",
  "Dashboard",
  "Data Quality",
  "Data Analysis",
  "Data Cleansing",
  "Business Requirements",
  "Troubleshooting (Problem Solving)",
  "Metadata",
  "Verbal Communication Skills",
  "Data Integrity",
  "Data Governance",
  "Computer Science",
  "User Roles"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (424, 80110);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (424, 424, 424, 424, '2024-09-20', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (425, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (425, 'Pharmco', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (425, 'Hallandale Beach, FL', 'Florida', '12011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (42509, '[
  "Power BI",
  "Management",
  "Statistical Analysis",
  "Communication",
  "Data Analysis",
  "Dashboard",
  "Data Quality",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Data Integrity",
  "Problem Solving",
  "Data Visualization",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (425, 42509);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (425, 425, 425, 425, '2024-06-07', '2024-07-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (426, 'ETD6586B9491FD97BC', 'Part-time (≤ 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (426, 'Lifesteps', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (426, 'Bethel Park, PA', 'Pennsylvania', '42003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (97568, '[
  "Home Health Care",
  "Medication Administration",
  "Valid Driver's License",
  "Personal Care",
  "Cooking",
  "Lifting Ability"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (426, 97568);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (426, 426, 426, 426, '2024-09-19', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (427, 'ET5C1C71DED5E4D0BF', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (427, '84.51°', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (427, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (16102, '[
  "Databricks",
  "BigQuery",
  "Apache Hadoop",
  "Communication",
  "Application Programming Interface (API)",
  "Data Dictionary",
  "Microsoft Azure",
  "Cloud Computing Architecture",
  "Safety Assurance",
  "Advanced Mathematics",
  "Data Science",
  "Algorithm Design",
  "Usability",
  "PySpark",
  "Creative Problem Solving",
  "Algorithms",
  "Python (Programming Language)",
  "Apache Spark",
  "Data Quality",
  "Decision Making",
  "Machine Learning Algorithms",
  "Statistics",
  "JIRA",
  "Data Mapping",
  "Data Analysis",
  "SQL (Programming Language)",
  "Machine Learning",
  "Technical Documentation",
  "Data Discovery",
  "Data Ingestion",
  "Consulting",
  "Power BI",
  "Statistical Methods",
  "Data Domain",
  "Extract Transform Load (ETL)",
  "Data Governance",
  "Artificial Intelligence",
  "Problem Solving",
  "Document-Oriented Databases",
  "Tableau (Business Intelligence Software)",
  "Grafana"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (427, 16102);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (427, 427, 427, 427, '2024-06-28', '2024-08-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (428, 'ET21819B00A47DD514', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (428, 'Upwork', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (428, 'Jacksonville, FL', 'Florida', '12031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (12896, '[
  "Application Data",
  "Data Validation",
  "Guidewire Core",
  "IBM DB2",
  "Data Warehouse Architectures",
  "Data Warehousing",
  "Extract Transform Load (ETL)",
  "Data Definition Language",
  "Data Analysis",
  "SQL (Programming Language)",
  "Data Discovery",
  "Business Intelligence Architecture",
  "Relational Database Management Systems"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (428, 12896);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (428, 428, 428, 428, '2024-06-06', '2024-08-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (429, 'ETCCB44922EF63F9C2', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (429, 'Innovit USA', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (429, 'Nashville, TN', 'Tennessee', '47037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (13424, '[
  "Inventory Staging",
  "Mathematics",
  "Research",
  "Data Storage",
  "SQL Server Integration Services (SSIS)",
  "Business Systems",
  "Data Modeling",
  "Data Mart",
  "Technology Solutions",
  "Business Intelligence Development",
  "Analytical Thinking",
  "Transact-SQL",
  "Complex Problem Solving",
  "Data Mining",
  "Post Processing",
  "Data Administration",
  "Data Warehousing",
  "Trend Analysis",
  "Data Management",
  "Business Process",
  "User Requirements Documents",
  "Dashboard",
  "Resource Utilization",
  "Online Analytical Processing",
  "SQL Server Analysis Services",
  "Data Analysis",
  "SQL Server Management Studio",
  "Extract Transform Load (ETL)",
  "Critical Thinking",
  "Business Intelligence",
  "Systems Analysis",
  "Microsoft Visual SourceSafe",
  "Troubleshooting (Problem Solving)",
  "Team Foundation Server",
  "Power BI",
  "Query Languages",
  "Version Control",
  "Writing",
  "Tableau (Business Intelligence Software)",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (429, 13424);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (429, 429, 429, 429, '2024-09-09', '2024-10-24');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (430, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 3, 
        NULL, 66560, 66560);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (430, 'Wastequip', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (430, 'Jurupa Valley, CA', 'California', '6065');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (87111, '[
  "Business Objectives",
  "Hoisting",
  "Management",
  "Business Systems",
  "Key Performance Indicators (KPIs)",
  "Communication",
  "Proactivity",
  "Data Management",
  "Resourcefulness",
  "Invoicing",
  "Contract Management",
  "Composure",
  "Standard Operating Procedure",
  "Dashboard",
  "Resilience",
  "Microsoft SharePoint",
  "Data Analysis",
  "Microsoft Excel",
  "Corporate Data Management",
  "Self-Motivation",
  "Willingness To Learn",
  "Change Management",
  "Data Governance"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (430, 87111);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (430, 430, 430, 430, '2024-08-23', '2024-10-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (431, 'ET8AF2E293074DDA9B', 'Full-time (> 32 hours)', NULL, 
        NULL, 150000, 165000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (431, 'Amtex System', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (431, '[Unknown City], NY', 'New York', '36999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (45655, '[
  "Procurement",
  "Management",
  "Order Management",
  "Order Management Systems",
  "Project Management",
  "Solution Design",
  "Supply Chain Management",
  "System Configuration",
  "Service-Oriented Architecture",
  "Mentorship",
  "Information Systems",
  "Technical Leadership",
  "Accounts Payable",
  "PL/SQL",
  "Accounts Receivable",
  "Business Requirements",
  "Oracle Forms",
  "SQL (Programming Language)",
  "Project Scoping",
  "Fixed Asset",
  "Oracle Fusion Middleware",
  "Troubleshooting (Problem Solving)",
  "General Ledger",
  "Enterprise Resource Planning",
  "Data Consistency",
  "Oracle Certified Specialist (OCS)",
  "Oracle E-Business Suite",
  "Enterprise Application Software",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (431, 45655);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (431, 431, 431, 431, '2024-09-19', '2024-09-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (432, 'ET34E10CEDF11BB17C', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (432, 'First American Financial', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (432, 'Irvine, CA', 'California', '6059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (6523, '[
  "Supplier Relationship Management",
  "Key Performance Indicators (KPIs)",
  "Influencing Skills",
  "Leadership",
  "Supply Chain",
  "Real Estate",
  "Root Cause Analysis",
  "Accountability",
  "Data Analysis",
  "Data Acquisition",
  "Relationship Management",
  "Coordinating",
  "Business Administration",
  "Innovation",
  "Meeting Facilitation",
  "Critical Thinking",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (432, 6523);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (432, 432, 432, 432, '2024-09-10', '2024-10-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (433, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (433, 'MSYS', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (433, 'Baton Rouge, LA', 'Louisiana', '22033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (22111, '[
  "Management",
  "Timelines",
  "Resource Allocation",
  "SAP Material Management",
  "SAP Applications",
  "Technical Support",
  "Program Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (433, 22111);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (433, 433, 433, 433, '2024-09-27', '2024-10-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (434, 'ET0000000000000000', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (434, 'Mckinsol Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (434, 'Dallas, TX', 'Texas', '48085');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (78148, '[
  "Planning",
  "SAP APO",
  "Business Process",
  "Information Systems",
  "Supply Network Planning",
  "SAP Applications",
  "Business Requirements",
  "Demand Planning",
  "Consulting",
  "Sales",
  "Order Processing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (434, 78148);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (434, 434, 434, 434, '2024-07-10', '2024-07-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (435, 'ET3B0942065398CAB0', 'Full-time (> 32 hours)', 4, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (435, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (435, 'Dallas, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26823, '[
  "Communication",
  "Information Technology",
  "Planning",
  "Microsoft PowerPoint",
  "Computer Science",
  "SAP SuccessFactors",
  "SAP Applications",
  "Microsoft Visio",
  "Human Capital",
  "Microsoft Excel",
  "Customer Success Management",
  "Microsoft Office",
  "Computer Engineering"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (435, 26823);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (435, 435, 435, 435, '2024-06-14', '2024-07-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (436, 'ET7935BB065D373495', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (436, 'Western Digital', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (436, 'Irvine, CA', 'California', '6059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (77899, '[
  "Lifecycle Management",
  "Business Objectives",
  "Active Directory Federation Services",
  "Management",
  "Identity And Access Management",
  "Visual Basic (Programming Language)",
  "Planning",
  "Systems Design",
  "Microsoft Azure",
  "Active Server Pages (ASP)",
  "Systems Engineering",
  "Role-Based Access Control (RBAC)",
  "Authorization (Computing)",
  "Interpersonal Communications",
  "JavaScript (Programming Language)",
  "English Language",
  "Service-Oriented Architecture",
  "Governance",
  "Time Management",
  "IT Security",
  "Business-To-Consumer",
  "Leadership",
  "Application Programming Interface (API)",
  "Enterprise Application Integration",
  "Enterprise Architecture",
  "Active Directory",
  "Multitasking",
  "Communication",
  "SAP Applications",
  "Java (Programming Language)",
  "Cloud Applications",
  "SQL (Programming Language)",
  "Workflow Management",
  "Access Controls",
  "Systems Architecture",
  "C# (Programming Language)",
  "Sarbanes-Oxley Act (SOX) Compliance",
  "Business To Business",
  "Account Management",
  "Single Sign-On (SSO)",
  "Enterprise Resource Planning",
  "Shell Script",
  "Authentications",
  "Language Experience Approach",
  "Problem Solving",
  "OAuth",
  "Writing",
  "Auditing",
  "Architectural Design",
  "Security Policies",
  "Security Assertion Markup Language (SAML)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (436, 77899);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (436, 436, 436, 436, '2024-05-11', '2024-07-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (437, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 41600, 54080);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (437, 'Nelnet', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (437, 'Columbus, NE', 'Nebraska', '31141');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (89991, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (437, 89991);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (437, 437, 437, 437, '2024-06-01', '2024-07-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (438, 'ET0000000000000000', 'Full-time (> 32 hours)', 4, 
        4, 145600, 166400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (438, 'Pure Talent Agency', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (438, 'Dearborn, MI', 'Michigan', '26163');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90065, '[
  "Finance",
  "Advanced Business Application Programming (ABAP)",
  "SAP Applications",
  "SAP FI/CO",
  "SAP NetWeaver Business Warehouse",
  "Accounting",
  "SAP BI Accelerator"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (438, 90065);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (438, 438, 438, 438, '2024-05-18', '2024-05-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (439, 'ET5C1C71DED5E4D0BF', 'Full-time (> 32 hours)', NULL, 
        NULL, 87135, 105435);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (439, 'Careoregon', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (439, 'Salt Lake City, UT', 'Utah', '49035');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90551, '[
  "Business Continuity Planning",
  "Auditing",
  "Data Profiling",
  "Data Warehousing",
  "Influencing Skills",
  "Business Process",
  "Dashboard",
  "Data Integration",
  "Leadership",
  "Data Quality",
  "Business Intelligence",
  "Data Governance",
  "Design Reviews"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (439, 90551);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (439, 439, 439, 439, '2024-06-08', '2024-09-26');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (440, 'ETA15B094BA4D13C00', 'Full-time (> 32 hours)', 12, 
        NULL, 93400, 258500);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (440, 'Accenture', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (440, 'Minneapolis, MN', 'Minnesota', '27053');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (75473, '[
  "SAP S/4HANA",
  "Management",
  "Digitization",
  "Technology Solutions",
  "Order To Cash Process",
  "Agile Methodology",
  "SAP Sales And Distribution",
  "Automation",
  "Communication",
  "Authorization (Computing)",
  "Apache Maven",
  "Leadership",
  "Technological Change",
  "SAP Applications",
  "Design Thinking",
  "Business Case",
  "Consulting",
  "Sales",
  "Artificial Intelligence",
  "Hybris"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (440, 75473);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (440, 440, 440, 440, '2024-09-03', '2024-10-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (441, 'ET2F67276D13771FA4', 'Part-time / full-time', 5, 
        NULL, 51000, 95000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (441, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (441, 'Remote, OR', 'Oregon', '41011');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (31356, '[
  "Application Data",
  "Research",
  "Management",
  "Data Element",
  "Payroll Systems",
  "Benchmarking",
  "Cost Management",
  "Workflow Management",
  "Process Management",
  "Data Management",
  "Ability To Meet Deadlines",
  "Change Requests",
  "Communication",
  "Statistics",
  "User Acceptance Testing (UAT)",
  "ADO.NET (Programming Language)",
  "Operations",
  "Writing",
  "Detail Oriented",
  "SQL (Programming Language)",
  "Operational Data Store",
  "Reference Cards",
  "Troubleshooting (Problem Solving)",
  "General Ledger",
  "Workforce Management",
  "Product Support",
  "Data Auditing",
  "Process Improvement",
  "Data Integrity",
  "Issue Tracking",
  "Database Engines"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (441, 31356);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (441, 441, 441, 441, '2024-07-01', '2024-08-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (442, 'ET54C1C151F3D17B20', 'Full-time (> 32 hours)', 5, 
        NULL, 88500, 199500);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (442, 'Oracle', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (442, 'Boston, MA', 'Massachusetts', '25025');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (26354, '[
  "Oracle E-Business Suite",
  "Management",
  "Oracle Cloud",
  "Solution Design",
  "Cash Management",
  "Rapport Building",
  "Business Process",
  "Accounts Receivable",
  "Mentorship",
  "Accounts Payable",
  "Innovation",
  "Communication",
  "Leadership",
  "Team Leadership",
  "Product Knowledge",
  "Negotiation",
  "General Ledger",
  "Enterprise Resource Planning",
  "Consulting",
  "Sales",
  "Influencing Skills",
  "Business Development",
  "Accounting",
  "Financial Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (442, 26354);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (442, 442, 442, 442, '2024-09-26', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (443, 'ET98B9ACF22F14AC0A', 'Full-time (> 32 hours)', NULL, 
        NULL, 89700, 161500);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (443, 'Target', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (443, 'Minneapolis, MN', 'Minnesota', '27053');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (44003, '[
  "Effective Communication",
  "Microsoft SharePoint",
  "Retail Operations",
  "Slack (Software)",
  "Management",
  "Communication",
  "Skype For Business",
  "Quality Control",
  "Construction Estimating",
  "Coordinating",
  "Interpersonal Communications",
  "Microsoft Outlook",
  "Construction Management",
  "Innovation",
  "Project Management",
  "Leadership",
  "Conflict Resolution",
  "Property Management",
  "Microsoft Teams",
  "Writing",
  "Procore",
  "Trello",
  "Microsoft PowerPoint",
  "Microsoft Excel",
  "Quality Management",
  "Smartsheet",
  "Construction",
  "Microsoft Office",
  "Project Management Software",
  "Microsoft Office 365"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (443, 44003);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (443, 443, 443, 443, '2024-06-28', '2024-08-27');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (444, 'ET93079B3900280AC7', 'Full-time (> 32 hours)', 8, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (444, 'Sunrun', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (444, 'Cheyenne, WY', 'Wyoming', '56021');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (43823, '[
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
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (444, 43823);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (444, 444, 444, 444, '2024-09-19', '2024-10-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (445, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (445, 'Merit America', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (445, 'Bellevue, WA', 'Washington', '53033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80912, '[
  "User Experience (UX) Design",
  "Project Management",
  "Cyber Security",
  "Technical Support",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (445, 80912);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (445, 445, 445, 445, '2024-05-28', '2024-06-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (446, 'ET140F347FA1BEA94E', 'Full-time (> 32 hours)', NULL, 
        NULL, 176800, 187200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (446, 'CodeForce 360', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (446, 'Atlanta, GA', 'Georgia', '13121');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (83363, '[
  "Detail Oriented",
  "Gap Analysis",
  "Cutover Planning And Management",
  "Process Design",
  "Scheduling",
  "Business Process",
  "Knowledge Transfer",
  "Presentations",
  "Time Management",
  "Leadership",
  "SAP Applications",
  "Production Planning",
  "Distributed Temperature Sensing (DTS)",
  "Consulting",
  "SAP Production Planning",
  "Quality Management",
  "Problem Solving",
  "Executive Presence",
  "Self-Discipline",
  "Teamwork"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (446, 83363);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (446, 446, 446, 446, '2024-05-25', '2024-06-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (447, 'ETA4FCBAAC5850078C', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (447, 'Estes Express Lines', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (447, '[Unknown City], VA', 'Virginia', '51999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (123, '[
  "Cryptography",
  "Cyber Threat Intelligence",
  "Research",
  "Office Equipment",
  "Multi-Factor Authentication",
  "Management",
  "General Data Protection Regulation (GDPR)",
  "Coaching",
  "DevSecOps",
  "Access Network",
  "Microsoft Azure",
  "AWS Certified Security Specialty",
  "Android (Operating System)",
  "Application Development",
  "Auditing",
  "Virtual Private Networks (VPN)",
  "Unix",
  "Incident Response",
  "Security Awareness",
  "Cyber Security",
  "Collaboration",
  "Certified Ethical Hacker",
  "Ability To Meet Deadlines",
  "Influencing Skills",
  "Linux",
  "Mentorship",
  "Communication",
  "Time Management",
  "Encryption",
  "Leadership",
  "Security Controls",
  "Risk Analysis",
  "Application Programming Interface (API)",
  "Enterprise Security",
  "Certified In Risk And Information Systems Control",
  "Network Infrastructure",
  "Strategic Thinking",
  "Risk Mitigation",
  "Critical Thinking",
  "Security Requirements Analysis",
  "Hybrid Cloud Computing",
  "Operations",
  "Information Systems Security Architecture Professional",
  "Certified Information Systems Security Professional",
  "Network Routing",
  "Health Insurance Portability And Accountability Act (HIPAA) Compliance",
  "Certified Information Security Manager",
  "Amazon Web Services",
  "Consensus Decision Making",
  "Firewall",
  "Authentications",
  "Microsoft Certified: Azure Security Engineer Associate",
  "Software Development",
  "Network Segmentation",
  "IT Security Architecture",
  "ISO/IEC 27001",
  "Vulnerability",
  "Apple IOS",
  "Digital Signature",
  "Industry Standards",
  "Risk Management",
  "Teamwork",
  "Security Policies",
  "Computer Science",
  "Microsoft Certified Professional",
  "Security Assertion Markup Language (SAML)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (447, 123);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (447, 447, 447, 447, '2024-06-06', '2024-08-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (448, 'ET234CB498A8801821', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (448, 'Bank of America', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (448, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (3237, '[
  "Relational Databases",
  "Programming Languages",
  "Research",
  "Anti Money Laundering",
  "Management",
  "Communication",
  "Data Modeling",
  "Data Element",
  "Business Analytics",
  "Continuous Improvement Process",
  "Inventory Management",
  "Analytical Thinking",
  "Information Gathering",
  "Business Acumen",
  "Application Development",
  "Data Mining",
  "Collibra (Software)",
  "Trend Analysis",
  "Data Management",
  "Data Architecture",
  "Operational Excellence",
  "Business Process",
  "Governance",
  "Engagement Skills",
  "Python (Programming Language)",
  "Apache Spark",
  "Leadership",
  "Data Quality",
  "Templates",
  "Supply Chain",
  "Bank Secrecy Act",
  "Business Continuity",
  "Data Mapping",
  "Business Requirements",
  "File Systems",
  "Business Intelligence",
  "Data Dictionary",
  "Advertisement",
  "SQL (Programming Language)",
  "Workflow Management",
  "Microsoft PowerPoint",
  "Microsoft Excel",
  "SAS (Software)",
  "Quality Assurance",
  "Metadata",
  "Data Lineage",
  "Data Governance",
  "Microsoft Office",
  "Extract Transform Load (ETL)",
  "Scala (Programming Language)",
  "Resilience",
  "Writing",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (448, 3237);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (448, 448, 448, 448, '2024-08-18', '2024-10-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (449, 'ET746FCADD27BFF080', 'Part-time (≤ 32 hours)', 1, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (449, 'Cal State La University Auxiliary Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (449, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (39132, '[
  "Cleanliness",
  "Kinesiology",
  "Machine Operation",
  "Scheduling",
  "Exercise Therapy",
  "Multilingualism",
  "Physical Therapy",
  "Occupational Therapy",
  "Strength Training And Conditioning"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (449, 39132);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (449, 449, 449, 449, '2024-07-11', '2024-10-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (450, 'ET3037E0C947A02404', 'Part-time (≤ 32 hours)', 1, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (450, 'Pequity', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (450, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (6619, '[
  "Presentations",
  "Google Sheets",
  "Communication",
  "Data Quality",
  "Report Writing",
  "Data Analysis",
  "Detail Oriented",
  "Compensation Analysis",
  "Statistical Methods",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (450, 6619);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (450, 450, 450, 450, '2024-06-12', '2024-08-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (451, 'ETA691C18908A31A3A', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (451, 'Hyrup', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (451, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (15706, '[
  "Enterprise Resource Planning",
  "System Integrity",
  "Business Process",
  "Customer Support",
  "Troubleshooting (Problem Solving)",
  "Quality Assurance"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (451, 15706);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (451, 451, 451, 451, '2024-09-03', '2024-09-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (452, 'ETB253E1D0958F4F6F', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (452, 'Prodware Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (452, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (32551, '[
  "SAP Transportation Management (TM)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (452, 32551);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (452, 452, 452, 452, '2024-07-08', '2024-07-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (453, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 83200, 83200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (453, 'Toll International ', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (453, 'Newark, NJ', 'New Jersey', '34013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (95763, '[
  "Presentations",
  "Data Validation",
  "Management",
  "ArcGIS (GIS Software)",
  "Project Management",
  "IBM Maximo",
  "Communication",
  "Microsoft PowerPoint",
  "Data Management",
  "Predictive Analytics",
  "AssetWorks (Software)",
  "Valid Driver's License",
  "Business Process Improvement",
  "Asset Management",
  "SAP Applications",
  "Business Requirements",
  "Microsoft Project",
  "Data Analysis",
  "Infrastructure Management",
  "Microsoft Excel",
  "Data-Driven Decision Making",
  "Geographic Information Systems",
  "Data Integrity",
  "Microsoft Office",
  "Business Administration",
  "Problem Solving",
  "Computer Science",
  "Oracle Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (453, 95763);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (453, 453, 453, 453, '2024-05-20', '2024-07-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (454, 'ETED98B3FF91E158FC', 'Full-time (> 32 hours)', 2, 
        2, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (454, 'The Judge Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (454, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (84992, '[
  "Debugging",
  "Power BI",
  "Analytic Applications",
  "Enhanced Prudential Standards",
  "Database Storage Structures",
  "Extensible Markup Language (XML)",
  "Communication",
  "Data Management",
  "Finance",
  "Engineering Design Process",
  "Data Integration",
  "Unit Testing",
  "PL/SQL",
  "Business Requirements",
  "SQL (Programming Language)",
  "Solution Architecture",
  "Erwin (Data Modeling Software)",
  "Product Support",
  "Data Governance",
  "Accounting",
  "Business Intelligence",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (454, 84992);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (454, 454, 454, 454, '2024-09-11', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (455, 'ET552F8528698059C3', 'Full-time (> 32 hours)', NULL, 
        NULL, 130000, 145000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (455, 'Jackson Hewitt', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (455, 'Sarasota, FL', 'Florida', '12115');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (74875, '[
  "Learning Agility",
  "Prioritization",
  "Cross-Functional Collaboration",
  "Business Acumen",
  "Communication",
  "Finance",
  "Decision Making",
  "Teamwork",
  "Marketing",
  "Critical Thinking",
  "Business Intelligence",
  "Operational Data Store",
  "Persuasive Communication",
  "Data Governance",
  "Dynamic Business Process Management",
  "Information Privacy"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (455, 74875);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (455, 455, 455, 455, '2024-06-17', '2024-07-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (456, 'ETC8A11EF058B8166F', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (456, 'Dhanani Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (456, 'Sugar Land, TX', 'Texas', '48157');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (10917, '[
  "Regression Testing",
  "Functional Testing",
  "Functional Requirement",
  "System Testing",
  "Change Control",
  "Reengineering",
  "Business Process Improvement",
  "Self-Motivation",
  "Interpersonal Communications",
  "Communication",
  "Business Requirements",
  "Organizational Skills",
  "Fixed Asset",
  "Customer Success Management",
  "Oracle Fusion Middleware",
  "Troubleshooting (Problem Solving)",
  "Accounting",
  "Service Industries"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (456, 10917);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (456, 456, 456, 456, '2024-09-26', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (457, 'ET925FA0D973BCBFCF', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (457, 'Solgenie Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (457, 'Newark, CA', 'California', '6001');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (40789, '[
  "SAP FI/CO",
  "Gap Analysis",
  "Functional Testing",
  "Planning",
  "Information Gathering",
  "Business Process",
  "Budgeting",
  "Technological Change",
  "SAP Applications",
  "Business Requirements",
  "Integration Testing",
  "Operations",
  "Accounting",
  "Profitability Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (457, 40789);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (457, 457, 457, 457, '2024-05-22', '2024-06-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (458, 'ETED1A826F164A44DF', 'Full-time (> 32 hours)', NULL, 
        NULL, 113325, 188875);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (458, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (458, 'Midland, MI', 'Michigan', '26111');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80054, '[
  "Management",
  "Planning",
  "Finance",
  "Agile Methodology",
  "SAP Applications",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (458, 80054);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (458, 458, 458, 458, '2024-05-10', '2024-07-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (459, 'ETAE88755E29342171', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (459, 'Dst Technologies', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (459, 'New York, NY', 'New York', '36061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (77695, '[
  "Management",
  "Automation",
  "Generative Artificial Intelligence",
  "Business Process",
  "Leadership",
  "Machine Learning",
  "BluePrism (RPA Software)",
  "Operations",
  "Workflow Management",
  "Sales",
  "Robotic Process Automation",
  "Advanced Analytics",
  "Revenue Growth"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (459, 77695);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (459, 459, 459, 459, '2024-05-20', '2024-07-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (460, 'ETD4695AA98897DFD2', 'Part-time (≤ 32 hours)', NULL, 
        NULL, 49920, 58240);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (460, 'Butterfly Effects', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (460, 'Jamestown, NC', 'North Carolina', '37081');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (67235, '[
  "Report Writing",
  "Data Collection",
  "Interpersonal Communications",
  "Valid Driver's License",
  "Time Management",
  "Applied Behavior Analysis",
  "Positivity",
  "Working With Children",
  "Board Certified Behavior Analyst (BCBA)",
  "Intervention Plans",
  "Registered Behavior Technician (RBT)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (460, 67235);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (460, 460, 460, 460, '2024-08-12', '2024-09-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (461, 'ETCD1DCE2110BB27EB', 'Full-time (> 32 hours)', 4, 
        NULL, 81494, 128274);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (461, 'Intermountain Health', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (461, 'Salt Lake City, UT', 'Utah', '49035');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81867, '[
  "Customer Service",
  "Computer Displays",
  "Research",
  "Management",
  "Agile Methodology",
  "Linear Regression",
  "Revenue Cycle Management",
  "Lifelong Learning",
  "Statistical Analysis",
  "Regression Analysis",
  "Communication",
  "Microsoft Word",
  "Statistical Modeling",
  "Finance",
  "Scheduling",
  "Data Analysis",
  "Innovation",
  "Spreadsheets",
  "Python (Programming Language)",
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
  "SQL (Programming Language)",
  "Operations",
  "Data Modeling",
  "SAS (Software)",
  "Pediatrics",
  "Data Structures",
  "Statistical Methods",
  "Statistical Hypothesis Testing",
  "Economics",
  "Visual Storytelling",
  "Database Design",
  "Parametric Methods",
  "Tableau (Business Intelligence Software)",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (461, 81867);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (461, 461, 461, 461, '2024-07-17', '2024-08-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (462, 'ETD0CE669C3F7085EC', 'Full-time (> 32 hours)', NULL, 
        NULL, 131175, 218625);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (462, 'Deloitte', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (462, 'Milwaukee, WI', 'Wisconsin', '55079');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (14143, '[
  "SAP S/4HANA",
  "Sales Proposals",
  "SAP EWM",
  "Request For Proposal",
  "Agile Methodology",
  "Supply Chain",
  "Agile Leadership",
  "SAP Applications",
  "Supply Chain Acumen",
  "Consulting",
  "Customer Relationship Management",
  "Sales"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (462, 14143);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (462, 462, 462, 462, '2024-05-15', '2024-07-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (463, 'ETEB8942CF5D1A49DF', 'Full-time (> 32 hours)', 2, 
        2, 65000, 70000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (463, 'Pearson Education', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (463, 'Salem, OR', 'Oregon', '41047');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (81129, '[
  "Workflow Management",
  "Information Technology",
  "Management",
  "Learning Management Systems",
  "Application Programming Interface (API)",
  "Excel Formulas",
  "Customer Engagement",
  "Operational Efficiency",
  "Extensible Markup Language (XML)",
  "Analytical Skills",
  "Automation",
  "User Experience (UX)",
  "Communication",
  "Dataflow",
  "WordPress",
  "Business Process",
  "English Language",
  "Single Sign-On (SSO)",
  "Python (Programming Language)",
  "Customer Support",
  "Dashboard",
  "Technical Support",
  "Leadership",
  "Decision Making",
  "Positivity",
  "Data Analysis",
  "JIRA",
  "Business Requirements",
  "Web Development",
  "Project Management",
  "Collaborative Software",
  "Business Operations",
  "Drupal",
  "Microsoft Excel",
  "Quality Management",
  "Troubleshooting (Problem Solving)",
  "Content Management Systems",
  "Quality Assurance",
  "Information Technology Operations",
  "Problem Solving",
  "Workflow Automation",
  "Program Management",
  "JavaScript (Programming Language)",
  "Computer Science",
  "Curiosity"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (463, 81129);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (463, 463, 463, 463, '2024-08-30', '2024-09-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (464, 'ETB85A6A9082153D58', 'Full-time (> 32 hours)', 5, 
        NULL, 85600, 128400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (464, 'Prime Therapeutics', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (464, 'Little Rock, AR', 'Arkansas', '5119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (11194, '[
  "Research",
  "Rapport Building",
  "Planning",
  "Advanced Mathematics",
  "Finance",
  "Influencing Skills",
  "Network Management",
  "Communication",
  "Financial Data",
  "Management Reporting",
  "Accountability",
  "Operations",
  "Data Analysis",
  "Network Performance Management",
  "Ad Hoc Reporting",
  "Troubleshooting (Problem Solving)",
  "Consulting",
  "Financial Services"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (464, 11194);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (464, 464, 464, 464, '2024-08-20', '2024-09-06');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (465, 'ET6724635AE1211F03', 'Full-time (> 32 hours)', 12, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (465, 'Tek Inspirations', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (465, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (36459, '[
  "Workflow Management",
  "Oracle Cloud",
  "Platform As A Service (PaaS)",
  "Design Specifications",
  "Order To Cash Process",
  "Extensible Markup Language (XML)",
  "Cloud Services",
  "Service-Oriented Architecture",
  "Java Message Service (JMS)",
  "Data Integration",
  "Templates",
  "Reporting Tools",
  "Java (Programming Language)",
  "Web Services",
  "Oracle E-Business Suite",
  "Simple Object Access Protocol (SOAP)",
  "Oracle Fusion Middleware",
  "Technical Documentation",
  "Software As A Service (SaaS)",
  "Customer Relationship Management",
  "Extract Transform Load (ETL)",
  "Business Intelligence",
  "Oracle Application Framework (OAF)",
  "Chatbot",
  "Systems Integration",
  "Procure-To-Pay (PTP)",
  "Oracle Business Intelligence Enterprise Edition",
  "Oracle Development",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (465, 36459);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (465, 465, 465, 465, '2024-09-27', '2024-10-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (466, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 4, 
        NULL, 88000, 173200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (466, 'UnitedHealth Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (466, 'Richmond, VA', 'Virginia', '51087');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (2252, '[
  "Writing",
  "Management",
  "Functional Requirement",
  "Telecommuting",
  "Scenario Testing",
  "System Testing",
  "IBM InfoSphere DataStage",
  "Data Warehousing",
  "Waterfall Methodology",
  "Informatica",
  "Timelines",
  "Software Development Life Cycle",
  "Communication",
  "Project Management",
  "Systems Development Life Cycle",
  "Test Planning",
  "Talent Management",
  "Business Intelligence Reporting",
  "Business Requirements",
  "Data Analysis",
  "Test Data",
  "Financial Stress Testing",
  "OptumInsight",
  "Extract Transform Load (ETL)",
  "Business Requirements Documentation",
  "Team Leadership"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (466, 2252);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (466, 466, 466, 466, '2024-05-08', '2024-05-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (467, 'ET4E1A48DAEAA2FC6C', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (467, 'Insight Global', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (467, 'Inver Grove Heights, MN', 'Minnesota', '27037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (42058, '[
  "Azure DevOps",
  "Analytical Skills",
  "Data Engineering",
  "Data Quality",
  "Data Analysis",
  "Power BI",
  "Manual Testing",
  "SQL (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (467, 42058);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (467, 467, 467, 467, '2024-05-31', '2024-06-15');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (468, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, 24000, 24000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (468, 'Merit America', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (468, 'Mesquite, TX', 'Texas', '48113');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (80912, '[
  "User Experience (UX) Design",
  "Project Management",
  "Cyber Security",
  "Technical Support",
  "Data Analysis"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (468, 80912);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (468, 468, 468, 468, '2024-05-08', '2024-06-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (469, 'ETA15B094BA4D13C00', 'Full-time (> 32 hours)', 5, 
        5, 150000, 150000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (469, 'Trust It', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (469, 'Toledo, OH', 'Ohio', '39095');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (91057, '[
  "SAP CRM",
  "Gap Analysis",
  "SAP Sales And Distribution",
  "Functional Specification",
  "Communication",
  "Process Integration",
  "Decision Making",
  "SAP Applications",
  "Business Requirements",
  "Customer Relationship Management",
  "Sales",
  "Problem Solving"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (469, 91057);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (469, 469, 469, 469, '2024-06-01', '2024-06-22');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (470, 'ETA236C99A7B07EA8C', 'Full-time (> 32 hours)', 2, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (470, 'By Light Professional It Services', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (470, 'Tysons, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72458, '[
  "Debugging",
  "Systems Engineering",
  "Technical Engineering",
  "Business Process",
  "System Administration",
  "Process Engineering",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (470, 72458);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (470, 470, 470, 470, '2024-08-28', '2024-09-02');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (471, 'ETD3035E881C387D0D', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (471, 'Springfield College', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (471, 'Springfield, MA', 'Massachusetts', '25013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (93867, '[
  "Raiser's Edge NXT",
  "Data Cleansing",
  "Google Sheets",
  "Microsoft Access",
  "Data Literacy",
  "Enrollment Management",
  "Microsoft PowerPoint",
  "Finance",
  "Communication",
  "Dashboard",
  "Enterprise Resource Planning",
  "Investigation",
  "Systems Integration",
  "Needs Assessment",
  "SQL (Programming Language)",
  "Microsoft Excel",
  "Data-Driven Decision Making",
  "Institutional Research",
  "Higher Education",
  "Statistical Methods",
  "Data Governance",
  "Probability Distribution",
  "Data Visualization"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (471, 93867);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (471, 471, 471, 471, '2024-07-07', '2024-09-04');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (472, 'ET3CCEA302C1993961', 'Full-time (> 32 hours)', NULL, 
        NULL, 92914, 92914);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (472, 'APR Consulting', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (472, 'Rosemead, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (51115, '[
  "Customer Service",
  "Agile Methodology",
  "Analytical Thinking",
  "Cyber Security",
  "Communication",
  "System Administration",
  "Data Protection Strategy",
  "Detail Oriented",
  "Data Analysis",
  "Scripting",
  "Consulting",
  "Problem Solving",
  "Data Security"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (472, 51115);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (472, 472, 472, 472, '2024-08-02', '2024-09-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (473, 'ETDC389419EBA96371', 'Full-time (> 32 hours)', 2, 
        2, 51824, 85000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (473, 'University of Pennsylvania', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (473, 'Philadelphia, PA', 'Pennsylvania', '42101');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (5762, '[
  "Programming Languages",
  "Research",
  "Workflow Management",
  "Neuroimaging",
  "Autism Spectrum Disorders",
  "Quality Control",
  "Computational Tools",
  "Radiology",
  "Advanced Mathematics",
  "Investigation",
  "Statistical Analysis",
  "Data Processing",
  "Quantitative Research",
  "C (Programming Language)",
  "Verbal Communication Skills",
  "Underwriting",
  "Communication",
  "Python (Programming Language)",
  "Magnetic Resonance Imaging",
  "Mathematics",
  "Statistics",
  "Encompass (Mortgage Software)",
  "Machine Learning",
  "Detail Oriented",
  "Data Analysis",
  "Biomedical Engineering",
  "Traumatic Brain Injuries",
  "Organizational Skills",
  "Sales Performance Management",
  "Mortgage Loans",
  "Neuroscience",
  "MATLAB",
  "Computer Programming",
  "Mixed Model",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (473, 5762);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (473, 473, 473, 473, '2024-09-24', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (474, 'ET365F232FEC0B41BB', 'Full-time (> 32 hours)', 5, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (474, 'Allegis Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (474, 'Reston, VA', 'Virginia', '51059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (63755, '[
  "Presentations",
  "Cash Management",
  "Atlassian Confluence",
  "Auditing",
  "Business Systems Analysis",
  "JIRA",
  "Oracle E-Business Suite",
  "Fixed Asset",
  "Enterprise Resource Planning",
  "Change Management",
  "CompTIA Security+"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (474, 63755);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (474, 474, 474, 474, '2024-09-04', '2024-09-21');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (475, 'ET232DDD69A1E58A58', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (475, 'Epic Systems', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (475, 'Rockville, MD', 'Maryland', '24031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (42192, '[
  "Gap Analysis",
  "Oracle WebLogic Server",
  "Benchmarking",
  "Acquisition Processes",
  "Business Objects Framework",
  "Influencing Skills",
  "Service-Oriented Architecture",
  "Systems Architecture",
  "Applications Architecture",
  "Enterprise Architecture",
  "Interoperability",
  "Systems Integration",
  "Requirements Analysis",
  "Customer Service",
  "Enterprise Application Software",
  "Data Sharing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (475, 42192);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (475, 475, 475, 475, '2024-07-17', '2024-07-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (476, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 5, 
        NULL, 83300, 125000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (476, 'Thermo Fisher Scientific', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (476, 'Carlsbad, CA', 'California', '6073');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (13403, '[
  "Certified In Production And Inventory Management",
  "Microsoft Office 365",
  "Business Communication",
  "Auditing",
  "Data Management",
  "Supply Chain",
  "SAP Applications",
  "Project Management",
  "Writing",
  "Detail Oriented",
  "Data Analysis",
  "SQL (Programming Language)",
  "Data Collection",
  "Amazon Web Services"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (476, 13403);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (476, 476, 476, 476, '2024-06-08', '2024-08-17');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (477, 'ETDAC59409E1C972DA', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (477, 'FIS', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (477, 'Cincinnati, OH', 'Ohio', '39061');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (76200, '[
  "Project Portfolio Management",
  "Underwriting",
  "Worldpay",
  "Marketing",
  "Operations",
  "User Experience (UX)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (477, 76200);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (477, 477, 477, 477, '2024-08-15', '2024-08-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (478, 'ET7734A1FD7656C250', 'Full-time (> 32 hours)', NULL, 
        NULL, 37440, 54205);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (478, 'Unclassified', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (478, 'Olympia, WA', 'Washington', '53067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (62253, '[
  "Customer Service",
  "Prioritization",
  "Administrative Functions",
  "Workflow Management",
  "Inventory Control",
  "Time Management",
  "Clerical Works",
  "Administrative Support",
  "Operations",
  "Record Keeping",
  "Filing",
  "Microsoft Office",
  "Development Aid",
  "Data Entry"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (478, 62253);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (478, 478, 478, 478, '2024-08-14', '2024-09-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (479, 'ETD0CE669C3F7085EC', 'Full-time (> 32 hours)', 10, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (479, 'Bayforce', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (479, 'Memphis, TN', 'Tennessee', '47157');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (24020, '[
  "Discrete Manufacturing",
  "SAP EWM",
  "Finance",
  "Pharmaceuticals",
  "Supply Chain",
  "SAP Applications",
  "Production Planning",
  "SAP ERP",
  "Third-Party Logistics",
  "Quality Management",
  "Warehouse Management",
  "SAP Business Suite"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (479, 24020);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (479, 479, 479, 479, '2024-09-04', '2024-10-11');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (480, 'ETA3A0CF03E3E7D127', 'Full-time (> 32 hours)', 7, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (480, 'Nestlé', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (480, 'Davidsonville, MD', 'Maryland', '24003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85465, '[
  "MuleSoft",
  "Customer Service",
  "Databricks",
  "Code Review",
  "Information Technology",
  "Business Analytics",
  "Solution Architecture",
  "Microsoft Azure",
  "Microservices",
  "Cloud Computing Architecture",
  "Technology Roadmaps",
  "Data Science",
  "Data Warehousing",
  "Unstructured Data",
  "Big Data",
  "Finance",
  "PySpark",
  "OpenStack",
  "MLOps (Machine Learning Operations)",
  "Python (Programming Language)",
  "Machine Learning",
  "Machine Learning Model Training",
  "Leadership",
  "Information Systems",
  "Application Programming Interface (API)",
  "Azure Data Factory",
  "Supply Chain",
  "Enterprise Architecture",
  "IBM Cloud Computing",
  "Cloud Technologies",
  "SQL (Programming Language)",
  "Systems Architecture",
  "Troubleshooting (Problem Solving)",
  "Amazon Web Services",
  "Azure Functions",
  "Sales",
  "Cloud Governance",
  "Business Intelligence",
  "Advanced Analytics",
  "Data Analysis",
  "Architectural Design",
  "Computer Science",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (480, 85465);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (480, 480, 480, 480, '2024-06-07', '2024-06-10');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (481, 'ETA6FC550E388A1B7C', 'Part-time (≤ 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (481, 'Jewish Family & Children's Service', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (481, '[Unknown City], AZ', 'Arizona', '4999');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (8554, '[
  "Electronic Medical Record",
  "Customer Service",
  "Power BI",
  "Workflow Management",
  "Medical Records",
  "Meeting Facilitation",
  "Agenda (Meeting)",
  "SQL Server Reporting Services",
  "Business Intelligence Reporting",
  "Reporting Tools",
  "Technical Assistance",
  "Business Intelligence",
  "Data Analysis",
  "SQL (Programming Language)",
  "Troubleshooting (Problem Solving)",
  "Pivot Tables And Charts",
  "Writing",
  "Critical Thinking",
  "End-User Training And Support"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (481, 8554);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (481, 481, 481, 481, '2024-05-01', '2024-05-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (482, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', 4, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (482, 'Cribl', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (482, 'Olympia, WA', 'Washington', '53067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (64895, '[
  "Analytical Thinking",
  "Organizational Skills",
  "Data Engineering",
  "Data Warehousing",
  "Self Service Technologies",
  "Business Intelligence",
  "Context Switch",
  "Prioritization",
  "Communication",
  "Python (Programming Language)",
  "Dashboard",
  "Looker Analytics",
  "Marketing",
  "Observability",
  "Data Analysis",
  "Product Engineering",
  "Strategic Analysis",
  "Data-Driven Decision Making",
  "Scripting",
  "Self-Motivation",
  "Customer Service",
  "Sales",
  "SQL (Programming Language)",
  "Data Visualization",
  "Tableau (Business Intelligence Software)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (482, 64895);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (482, 482, 482, 482, '2024-06-12', '2024-08-14');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (483, 'ET1D7EF26FB1E98DE2', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (483, 'Deutsche Bank', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (483, 'Jacksonville, FL', 'Florida', '12031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (14084, '[
  "Capital Markets",
  "Programming Languages",
  "Investments",
  "Case Management",
  "Warehousing",
  "Agile Methodology",
  "Data Warehousing",
  "Influencing Skills",
  "Atlassian Confluence",
  "Github",
  "User Experience (UX)",
  "Communication",
  "SQL (Programming Language)",
  "Business Analysis",
  "Business Requirements Documentation",
  "Informatica",
  "Functional Specification",
  "Waterfall Methodology",
  "Fixed Income",
  "Scrum (Software Development)",
  "Equities",
  "Derivatives",
  "Presentations",
  "Control-M (Batch Scheduling Software)",
  "Wealth Management",
  "PL/SQL",
  "Data Analysis",
  "Portfolio Management",
  "JIRA",
  "Extract Transform Load (ETL)",
  "Data Mapping",
  "Business Requirements",
  "Data Modeling",
  "Detail Oriented",
  "Systems Integration",
  "Data Migration",
  "Virtual Teams",
  "Test Data",
  "Microsoft Excel",
  "Self-Motivation",
  "Technical Analysis",
  "Proactivity",
  "Investment Advisory",
  "Sprint Planning",
  "Problem Solving",
  "Innovation",
  "Teamcity",
  "Data Presentation"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (483, 14084);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (483, 483, 483, 483, '2024-07-11', '2024-09-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (484, 'ET23FEEB3EE6392887', 'Part-time (≤ 32 hours)', NULL, 
        NULL, 35360, 39312);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (484, 'First Premier Bank', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (484, 'Sioux Falls, SD', 'South Dakota', '46099');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (70315, '[
  "Management",
  "Continuous Improvement Process",
  "ViewModel",
  "Communication",
  "Collections",
  "Multilingualism",
  "Negotiation",
  "JSON"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (484, 70315);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (484, 484, 484, 484, '2024-07-10', '2024-10-20');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (485, 'ET0000000000000000', 'Part-time / full-time', 1, 
        NULL, 135860, 176620);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (485, 'Department Of The Interior in', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (485, 'Lakewood, CO', 'Colorado', '8059');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (91707, '[
  "Performance Appraisal",
  "Functional Testing",
  "Management",
  "System Testing",
  "Budget Management",
  "Planning",
  "Systems Design",
  "Performance Management",
  "Resource Management",
  "Project Management",
  "Human Resource Management",
  "Requirements Analysis",
  "Team Management",
  "Change Management",
  "Business Planning",
  "System Requirements",
  "Business Process Modeling"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (485, 91707);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (485, 485, 485, 485, '2024-08-06', '2024-08-19');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (486, 'ET225F42CAC4F13FF4', 'Part-time / full-time', 2, 
        2, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (486, 'HCA Healthcare', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (486, 'Earth City, MO', 'Missouri', '29189');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (45855, '[
  "Customer Service",
  "Business Reporting",
  "Management",
  "Revenue Cycle Management",
  "Automation",
  "Business Objects Framework",
  "Finance",
  "Scheduling",
  "Medical Billing",
  "Dashboard",
  "Collections",
  "Registration",
  "Data Analysis",
  "Billing",
  "Reporting Tools",
  "Operations",
  "Detail Oriented",
  "Key Performance Indicators (KPIs)",
  "Health Information Management",
  "SQL (Programming Language)",
  "Ad Hoc Reporting",
  "Medicaid",
  "Economics",
  "Accounting",
  "Writing",
  "Strategic Resources"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (486, 45855);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (486, 486, 486, 486, '2024-09-24', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (487, 'ET9C054BF2F0CBC304', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (487, 'Samsung', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (487, 'Houston, TX', 'Texas', '48201');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (3736, '[
  "Communication",
  "Teamcenter (PLM Software)",
  "Inventory Management",
  "Project Management",
  "Data Cleansing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (487, 3736);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (487, 487, 487, 487, '2024-07-26', '2024-08-08');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (488, 'ET849DEC3FA4D8B78D', 'Full-time (> 32 hours)', 11, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (488, 'Infosys', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (488, 'San Francisco, CA', 'California', '6075');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (66187, '[
  "SAP S/4HANA",
  "Gap Analysis",
  "Information Technology",
  "Interpersonal Communications",
  "Full Life Cycle Implementation",
  "Business Process",
  "Communication",
  "Proposal Development",
  "SAP Applications",
  "Data Migration",
  "Project Scoping",
  "Consulting"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (488, 66187);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (488, 488, 488, 488, '2024-05-30', '2024-08-13');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (489, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 114400, 135200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (489, 'The Judge Group', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (489, 'Atlanta, GA', 'Georgia', '13067');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (52721, '[
  "Power BI",
  "Presentations",
  "Data Intelligence",
  "Warehousing",
  "Data Virtualization",
  "Data Science",
  "Data Warehousing",
  "Microsoft PowerPoint",
  "Dashboard",
  "Reporting Tools",
  "Data Analysis",
  "AWS SageMaker",
  "Oracle Fusion Middleware",
  "Microsoft Excel",
  "Business Intelligence",
  "SQL (Programming Language)",
  "Denodo"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (489, 52721);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (489, 489, 489, 489, '2024-06-03', '2024-07-03');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (490, 'ETCD1DCE2110BB27EB', 'Full-time (> 32 hours)', 3, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (490, 'Rose's Agency', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (490, 'Pasadena, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (28177, '[
  "Stata",
  "Research",
  "Social Determinants Of Health",
  "Zoom (Video Conferencing Tool)",
  "Causal Inference",
  "Econometrics",
  "Statistical Analysis",
  "English Language",
  "Python (Programming Language)",
  "Cohort Studies",
  "Information Systems",
  "Health Promotion",
  "Communication",
  "Data Analysis",
  "Data Collection",
  "SAS (Software)",
  "Quality Assurance",
  "Detail Oriented",
  "Problem Solving",
  "Disease Prevention",
  "Research Funding",
  "Clinical Study Design",
  "R (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (490, 28177);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (490, 490, 490, 490, '2024-07-25', '2024-08-01');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (491, 'ET52C53A0AAC400F8F', 'Full-time (> 32 hours)', 5, 
        5, 81200, 135400);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (491, 'Lowe's', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (491, 'Mooresville, NC', 'North Carolina', '37097');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (50900, '[
  "Merchandising",
  "Communication",
  "Master Of Business Administration (MBA)",
  "Business Valuation",
  "Performance Metric",
  "Leadership",
  "Marketing",
  "Business Operations",
  "Sales",
  "Business Administration",
  "Competitive Intelligence",
  "Computer Science"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (491, 50900);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (491, 491, 491, 491, '2024-08-14', '2024-09-23');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (492, 'ET3037E0C947A02404', 'Full-time (> 32 hours)', NULL, 
        NULL, 60008, 74088);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (492, 'Northwestern University', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (492, 'Chicago, IL', 'Illinois', '17031');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (77080, '[
  "Research",
  "Pulmonary Fibrosis",
  "Spatial Data Infrastructures",
  "Ribonucleic Acid Sequencing",
  "Data Analysis",
  "Intensive Care Medicine",
  "Metabolism",
  "Research Experiences"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (492, 77080);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (492, 492, 492, 492, '2024-07-07', '2024-09-05');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (493, 'ET4E691FA680CB7435', 'Full-time (> 32 hours)', 3, 
        3, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (493, 'Brightspeed', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (493, 'Charlotte, NC', 'North Carolina', '37119');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (64415, '[
  "Marketing Strategies",
  "Google Sheets",
  "Operational Efficiency",
  "Analytical Skills",
  "Customer Acquisition Management",
  "Strategic Decision Making",
  "Finance",
  "Communication",
  "Innovation",
  "Consumer Behaviour",
  "Data Analysis",
  "Financial Data",
  "Performance Reporting",
  "Marketing",
  "Lead Generation",
  "Sales",
  "Economics",
  "Brand Marketing",
  "Business Marketing"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (493, 64415);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (493, 493, 493, 493, '2024-08-19', '2024-08-30');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (494, 'ET0000000000000000', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (494, 'Escambia County School District', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (494, 'Pensacola, FL', 'Florida', '12033');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (25142, '[]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (494, 25142);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (494, 494, 494, 494, '2024-09-25', '2024-10-16');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (495, 'ETF978BF4070404D4E', 'Full-time (> 32 hours)', 4, 
        NULL, 89990, 172000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (495, 'USAA', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (495, 'Phoenix, AZ', 'Arizona', '4013');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (72385, '[
  "Business Objectives",
  "Auditing",
  "Research",
  "Management",
  "Technical Writing",
  "Statistical Analysis",
  "Business Strategies",
  "Model Validation",
  "Financial Analysis",
  "Finance",
  "Influencing Skills",
  "Business Process",
  "Governance",
  "Financial Stress Testing",
  "Attribution Modeling",
  "Decision Making",
  "Mathematics",
  "Statistics",
  "Risk Mitigation",
  "Forecasting",
  "Statistical Reporting",
  "Quantitative Analysis",
  "Economics",
  "Advanced Analytics",
  "Data Visualization",
  "Risk Management"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (495, 72385);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (495, 495, 495, 495, '2024-09-07', '2024-09-25');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (496, 'ETD276A62B53EC83FC', 'Full-time (> 32 hours)', NULL, 
        NULL, 114400, 124800);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (496, 'Innova Solutions USA', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (496, 'Urbandale, IA', 'Iowa', '19153');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (90363, '[
  "Planning",
  "Data Management",
  "Data Lineage"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (496, 90363);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (496, 496, 496, 496, '2024-05-14', '2024-07-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (497, 'ETCA3D5BA15FB784A2', 'Full-time (> 32 hours)', NULL, 
        NULL, NULL, NULL);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (497, 'Weatherby Healthcare', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (497, 'Portland, OR', 'Oregon', '41051');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (75632, '[
  "Radiology"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (497, 75632);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (497, 497, 497, 497, '2024-08-14', 'None');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (498, 'ETAA05A565FBE2A7FF', 'Full-time (> 32 hours)', 10, 
        NULL, 145200, 170000);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (498, 'Pmi 2.0', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (498, 'Los Angeles, CA', 'California', '6037');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (85262, '[
  "Application Programming Interface (API)",
  "Solution Architecture",
  "Agile Methodology",
  "Application Development",
  "English Language",
  "Communication",
  "Expectation Management",
  "Applications Architecture",
  "Detail Oriented",
  "Project Management Institute (PMI) Methodology",
  "Multitasking",
  "Negotiation",
  "Team Leadership",
  "Problem Solving",
  "Software Development Life Cycle"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (498, 85262);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (498, 498, 498, 498, '2024-07-20', '2024-09-18');
        

        INSERT INTO jobs (job_id, title, employment_type, min_experience, max_experience, salary_from, salary_to) 
        VALUES (499, 'ETF7E0F9261E1ABEEA', 'Full-time (> 32 hours)', 5, 
        NULL, 76300, 180200);
        

        INSERT INTO companies (company_id, company_name, is_staffing) 
        VALUES (499, 'Cgi Technologies And Solutions', 0);
        

        INSERT INTO locations (location_id, city, state, postal_code) 
        VALUES (499, 'Pittsburgh, PA', 'Pennsylvania', '42003');
        

                INSERT OR IGNORE INTO skills (skill_id, skill_name) VALUES (20213, '[
  "Debugging",
  "Relational Databases",
  "Workflow Management",
  "IBM DB2",
  "Agile Methodology",
  "Brokerage",
  "Informatica",
  "Scrum (Software Development)",
  "User Requirements Documents",
  "Communication",
  "Decision Making",
  "Data Analysis",
  "Asset Management",
  "Iterative And Incremental Development",
  "Troubleshooting (Problem Solving)",
  "Scripting",
  "Unix Shell",
  "Extract Transform Load (ETL)",
  "Problem Solving",
  "SQL (Programming Language)"
]');
                

                INSERT INTO job_skills (job_id, skill_id) VALUES (499, 20213);
                

        INSERT INTO job_postings (posting_id, job_id, company_id, location_id, post_date, expire_date) 
        VALUES (499, 499, 499, 499, '2024-09-05', '2024-09-27');
        