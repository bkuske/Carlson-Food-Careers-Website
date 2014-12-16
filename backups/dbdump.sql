DROP TABLE DATABASECHANGELOG;
CREATE TABLE DATABASECHANGELOG ( ID varchar(63) NOT NULL, AUTHOR varchar(63) NOT NULL, FILENAME varchar(200) NOT NULL, DATEEXECUTED datetime NOT NULL, MD5SUM varchar(32), DESCRIPTION varchar(255), COMMENTS varchar(255), TAG varchar(255), LIQUIBASE varchar(10), PRIMARY KEY (ID, AUTHOR, FILENAME) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, MD5SUM, DESCRIPTION, COMMENTS, TAG, LIQUIBASE) values ('ChangeAdminPasswordToSomethingMemorable', 'Colin', 'FoodCareers-autobase', '2009-12-10 10:15:18', '5e1f59d4f7e33b3bcdb510e984775f73', 'Update Data', '', null, '1.9.3');
insert into DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, MD5SUM, DESCRIPTION, COMMENTS, TAG, LIQUIBASE) values ('AddHideFromHomePageColumnToJobOpportunity', 'Colin', 'FoodCareers-autobase', '2009-12-10 10:15:18', 'eb685368f20f8dd693d18315c2bbf6', 'Add Column, Update Data', '', null, '1.9.3');
DROP TABLE DATABASECHANGELOGLOCK;
CREATE TABLE DATABASECHANGELOGLOCK ( ID int NOT NULL, LOCKED tinyint(1) NOT NULL, LOCKGRANTED datetime, LOCKEDBY varchar(255), PRIMARY KEY (ID) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into DATABASECHANGELOGLOCK (ID, LOCKED, LOCKGRANTED, LOCKEDBY) values (1, false, null, null);
DROP TABLE job_category;
CREATE TABLE job_category ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, name varchar(255) NOT NULL, PRIMARY KEY (id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into job_category (id, version, name) values (1, 0, 'ANALYTICAL / PHYSICAL TESTING');
insert into job_category (id, version, name) values (2, 0, 'EXECUTIVE MANAGEMENT');
insert into job_category (id, version, name) values (3, 0, 'ENGINEERING');
insert into job_category (id, version, name) values (4, 0, 'NUTRITION / NUTRACEUTICALS');
insert into job_category (id, version, name) values (5, 0, 'PACKAGE DEVELOPMENT');
insert into job_category (id, version, name) values (6, 0, 'PROCESS DEVELOPMENT ENGINEERS');
insert into job_category (id, version, name) values (7, 0, 'PRODUCT DEVELOPMENT');
insert into job_category (id, version, name) values (8, 0, 'PURCHASING');
insert into job_category (id, version, name) values (9, 2, 'SUPPLY/OPERATIONS/ PRODUCTION');
insert into job_category (id, version, name) values (10, 0, 'QUALITY RELATED');
insert into job_category (id, version, name) values (11, 0, 'REGULATORY / SAFETY');
insert into job_category (id, version, name) values (12, 0, 'SALES AND MARKETING');
insert into job_category (id, version, name) values (13, 0, 'SENSORY EVALUATION');
insert into job_category (id, version, name) values (14, 0, 'INFORMATION TECHNOLOGY RELATED');
DROP TABLE job_opportunity;
CREATE TABLE job_opportunity ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, category_id bigint NOT NULL, description longtext NOT NULL, desired_skills varchar(255) NOT NULL, job_code varchar(255) NOT NULL, position_title varchar(255) NOT NULL, posted_date datetime NOT NULL, region_id bigint NOT NULL, salary_range varchar(255) NOT NULL, visible bit NOT NULL, hide_from_home_page bit, PRIMARY KEY (id), INDEX FK142D511AAC03B7 (category_id), INDEX FK142D51961B895A (region_id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (300, 0, 9, '<p>
	<strong>SUMMARY</strong><br />
	<br />
	The Continuous Improvement Supervisor will be part of the management team. reporting to the Operations Excellence Manager. Under limited supervision, the Manager will have a combined role scheduling, coordinating, administering, and providing assistance for all state &amp; regulatory activities within the Plant production facility and Continuous Improvement efforts. The Manager provides a comprehensive range of quality assurance support and service to management and staff; develops and implements training programs and acts as the company&rsquo;s primary practitioner under GFSI (SQF) for FL centralized quality assurance activities. The Manager is also the subject matter expert for processes. They assess the effectiveness of a business function or process and offer recommendations for improvement in accordance with a well-defined body of knowledge. This profession works closely with project, production, process and quality specialists to identify ways to improve efficiencies, reduce cost, or increase customer satisfaction. The Manager monitors and adheres to operating policies, and procedures in accordance with established company policy. <br />
	<strong><br />
	DUTIES AND RESPONSIBILITIES: </strong></p>
<ul>
	<li>
		Schedules, oversees and assists with all Federal, State, USDA and IMS Inspection programs for the facility which includes the daily management of records, HTST &amp; HHST state seal program, 90 Day Plant Inspection and Equipment testing programs.</li>
	<li>
		Validates, measures and implements corrective action protocols for all regulatory compliance audits.</li>
	<li>
		Audits the master sanitation cleaning schedule and reports results, assists the quality control supervisor in developing quality programs and works with external auditors, both regulatory and company to develop and further enhance all quality systems, procedures and policies; assists in the development of internal protocols and procedures in accordance with existing state and federal regulations, policies, and systems.</li>
	<li>
		Measures the performance of the sanitation procedures and CIP systems by monitoring recording charts including chemical strength testing programs.</li>
	<li>
		Coordinates and conducts GMP, Sanitation and &ldquo;Right to Know&rdquo; training programs; </li>
	<li>
		Provides assistance and guidance to determine the effectiveness of SSOP&rsquo;s, audits and monitors the HACCP program and acts as primary practitioner for SQF.</li>
	<li>
		Monitors and signs off on all legal documents to validate documentation of all PRP&rsquo;s &amp; critical control points to ensure regulatory compliance as mandated by local, state, and federal agencies, including FDA, and State regulations. </li>
	<li>
		Work with Engineering Groups to coordinate and assist in recommending correct processes &amp; equipment selection.</li>
	<li>
		Assist in developing a corresponding protocol for critical functions i.e. process deviations, challenge testing, operational qualifications, commissioning framework and process validations.</li>
	<li>
		Ensures contractor GMP and HACCP compliance by managing the interaction between departmental personnel and contractors and physical plant personnel. </li>
	<li>
		Performs training needs analyses, as appropriate, and initiates, develops, and/or coordinates the implementation of specific training and development programs for operators and plant personnel.</li>
	<li>
		Develops and measures standard metrics, diagramming the flow (including inputs and outputs) of a business or production process.</li>
	<li>
		Identifies opportunities for improvement and launches/facilitates Process Improvement teams (PIT) against the improvement.</li>
	<li>
		Develops a project plan for implementing improvements and monitoring the new process to ensure it works as intended.</li>
	<li>
		Develops mistake proofing ideas to implement in all faucets of the production process.</li>
	<li>
		Assists with establishing, maintaining, and distributing the plant Key Performance Indicators.</li>
	<li>
		Methodologies include but are not limited to 6 Sigma, 7&rsquo;s, Lean, OEE, fishbone analysis, visual factory, root cause tools and others.</li>
</ul>
<p>
	<br />
	<strong>MINIMUM JOB REQUIREMENTS</strong></p>
<ul>
	<li>
		A Bachelor&#39;s degree in Food Science or a related discipline; at least 4 years of experience that is directly related to the duties and responsibilities specified on local, state and federal inspection programs and various continuous improvement disciplines. </li>
</ul>
<p>
	<strong>KNOWLEDGE, SKILLS, AND ABILITIES REQUIRED</strong></p>
<ul>
	<li>
		Ability to maintain confidentiality of records and information. </li>
	<li>
		Skill in examining and re-adjusting to changes in operations and procedures.</li>
	<li>
		Knowledge of FDA, local, State, Federal regulations for a dairy manufacturing facility.</li>
	<li>
		Strong interpersonal and communication skills and the ability to work effectively with a wide range of constituencies in a diverse community. </li>
	<li>
		Ability to make procedural decisions and judgments on sensitive, confidential issues. </li>
	<li>
		Ability to analyze and assess training and development needs. </li>
	<li>
		Ability to supervise and train staff, including organizing, prioritizing, and scheduling work assignments. </li>
	<li>
		Knowledge of computerized information systems used in quality assurance applications. </li>
	<li>
		Ability to develop and deliver presentations. </li>
	<li>
		Knowledge and understanding of employment and union avoidance practices. </li>
	<li>
		Systematic problem solver, implementing solutions to solve root cause.</li>
	<li>
		Strong business and technical skills in processing, packaging and logistics.</li>
	<li>
		Able to handle multiple complex priorities and balances the needs of each according to the business impact.</li>
	<li>
		Develop and maintain both short and long-term Continuous Improvement plans.</li>
	<li>
		Mentor individuals who are familiar with Continuous Improvement.</li>
	<li>
		Develop and conduct Continuous Improvement training classes for cross-functional groups.</li>
	<li>
		Tolerance of ambiguity. </li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
<p>
	<br />
	&nbsp;</p>
', '', 'J1110', 'Continuous Improvement Supervisor', '2014-12-01 00:00:00', 8, '$65,000', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (266, 0, 9, '<p>
	<strong>SUMMARY</strong><br />
	We are seeking a Packaging/Processing System Engineer to be a primary technical resource for packaging manufacturing system. Identify, lead, develop, and execute solutions for quality and performance improvements on these production systems.<br />
	<br />
	<strong>MAIN RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Demonstrate technical and business expertise on systems/products/technologies you are responsible for improving. </li>
	<li>
		Demonstrate strong troubleshooting skills through the use of continuous improvement techniques (Lean, TPM, Kaizen, Six Sigma). Show thorough understanding of the interactions between machine, materials, methods, environment, and people to provide robust operating systems.</li>
	<li>
		Develop/maintain material balances and unit operation capability information to ensure optimal production rates, parameters, and formulas.</li>
	<li>
		Provide key technical support in capital projects and new product and packaging material testing/start-ups.</li>
	<li>
		Conduct capacity studies, enhance system reliability, and identify/implement productivity improvements including new technologies. Develop/maintain strategic technical improvement plans for systems.</li>
	<li>
		Serve as a technical liaison for all levels of the company including production/maintenance employees, plant technical and management resources, corporate engineering and R&amp;D organizations, and other plants.</li>
	<li>
		Develop/deliver technical training for various levels of the organization and serve as a divisional resource in cross-functional platform/technology/product teams.</li>
</ul>
<p>
	<br />
	<strong>MINIMUM QUALIFICATIONS</strong></p>
<ul>
	<li>
		B.S. (or higher) in Engineering from ABET-accredited program, or in Packaging Science or related field.</li>
	<li>
		3+ years of experience in packaging engineering, packaging development, quality engineering, or manufacturing.</li>
	<li>
		Recognized technical abilities and practical experience with strong capabilities in the following areas: Theory/functionality of manufacturing systems and unit operations; Continuous improvement techniques (Lean, TPM, Kaizen, Six Sigma); Food science/chemistry or packaging science; Statistics and analytical methods; Process measurement and control; Advanced computer skills; Mechanical aptitude; Troubleshooting; Ability to understand and apply general engineering principles</li>
	<li>
		Demonstrated skills in the following: Leadership; Influence management; Interpersonal skills; Problem solving; Teaching and training ability; Initiative<br />
		&nbsp;</li>
</ul>
', '', '1686', 'Process Improvement Engineer', '2014-07-10 00:00:00', 9, '$65-90K + bonus + relocation assistance + permanent work status required', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (265, 0, 3, '<p>
	<strong>SUMMARY</strong><br />
	We are seeking a Packaging/Processing System Engineer to be a primary technical resource for packaging manufacturing system. Identify, lead, develop, and execute solutions for quality and performance improvements on these production systems.<br />
	<br />
	<strong>MAIN RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Demonstrate technical and business expertise on systems/products/technologies you are responsible for improving. </li>
	<li>
		Demonstrate strong troubleshooting skills through the use of continuous improvement techniques (Lean, TPM, Kaizen, Six Sigma). Show thorough understanding of the interactions between machine, materials, methods, environment, and people to provide robust operating systems.</li>
	<li>
		Develop/maintain material balances and unit operation capability information to ensure optimal production rates, parameters, and formulas.</li>
	<li>
		Provide key technical support in capital projects and new product and packaging material testing/start-ups.</li>
	<li>
		Conduct capacity studies, enhance system reliability, and identify/implement productivity improvements including new technologies. Develop/maintain strategic technical improvement plans for systems.</li>
	<li>
		Serve as a technical liaison for all levels of the company including production/maintenance employees, plant technical and management resources, corporate engineering and R&amp;D organizations, and other plants.</li>
	<li>
		Develop/deliver technical training for various levels of the organization and serve as a divisional resource in cross-functional platform/technology/product teams.</li>
</ul>
<p>
	<br />
	<strong>MINIMUM QUALIFICATIONS</strong></p>
<ul>
	<li>
		B.S. (or higher) in Engineering from ABET-accredited program, or in Packaging Science or related field.</li>
	<li>
		3+ years of experience in packaging engineering, packaging development, quality engineering, or manufacturing.</li>
	<li>
		Recognized technical abilities and practical experience with strong capabilities in the following areas: Theory/functionality of manufacturing systems and unit operations; Continuous improvement techniques (Lean, TPM, Kaizen, Six Sigma); Food science/chemistry or packaging science; Statistics and analytical methods; Process measurement and control; Advanced computer skills; Mechanical aptitude; Troubleshooting; Ability to understand and apply general engineering principles</li>
	<li>
		Demonstrated skills in the following: Leadership; Influence management; Interpersonal skills; Problem solving; Teaching and training ability; Initiative</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1686', 'Process Improvement Engineer', '2014-07-10 00:00:00', 9, '$65-90K + bonus + relocation assistance + permanent work status required', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (299, 0, 9, '<p>
	<strong>SUMMARY</strong><br />
	The Processing Manager will be part of the management team reporting to the Technical Operations Manager. Under limited supervision, the Processing Manager is responsible for overseeing the daily operations of the Plant product Processing Department. The Processing Manager oversees the supervisory staff, and implements operations programs, and policies. <br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Reviews daily inventories and the daily production plan with the Material/Scheduling Manager. Develops production and efficiency reports. Coordinates schedule demands with staff and product movement personnel.</li>
	<li>
		Manages the following product processing areas: Separators, RO Milk processing, Membrane processing, Pre and Post Batching, VTIS processing, HTST Bulk/Yogurt Processing, Culture Tanks, and CIP systems and sanitation of processing area.</li>
	<li>
		Reviews plant quality through the review of microbiology test results, investigation and eradication of high or repeat area or product counts.</li>
	<li>
		Reviews product and equipment specifications to ensure conformance to product specifications are realized. </li>
	<li>
		Reviews all nonconforming product or ingredients with Technical Operations Manager and Quality Assurance Manager.</li>
	<li>
		Monitors processing department throughout shift and assure employee compliance with GMP&rsquo;s, sanitation and safety. Review daily audit reports.</li>
	<li>
		Monitor wastewater facility throughout shift and assure proper completion of daily reports as required by permit and management.</li>
	<li>
		Responsible for equipment and employee performance (efficiencies, losses and waste) in these areas.</li>
	<li>
		Responsible for teams and people in these areas.</li>
	<li>
		Review CIP records daily and audit employee&rsquo;s sampling techniques to assure proper sanitation standards are maintained. Provide employee training and coaching in GMP and HACCP as needed.</li>
	<li>
		Review supply inventories and order supplies within budget allocations.</li>
	<li>
		Verify that all plant processing equipment is in good working condition and all preventative maintenance is being performed on a scheduled basis by reviewing Preventive Maintenance schedules with the Maintenance Manager. Review all work orders and daily maintenance reports.</li>
	<li>
		Manage processing departments budget within financial guidance.</li>
</ul>
<p>
	<strong>SUPERVISORY RESPONSIBILITIES</strong></p>
<ul>
	<li>
		This position has management and employee supervisory responsibilities for the entire Coopersville Processing Department and facility.</li>
	<li>
		Review on the job training reviews.</li>
	<li>
		Coordinate on-the-job training.</li>
	<li>
		Oversee adherence to company policies and procedures.</li>
	<li>
		Oversee scheduling of management, employees, and temporary labor.</li>
	<li>
		Have the responsibility of reviewing timesheets, overtime and approve payroll.</li>
</ul>
<p>
	<strong>QUALIFICATIONS </strong></p>
<ul>
	<li>
		Must have the ability to trouble shoot problems and be persistent until a solution is found.</li>
	<li>
		Must work in a safe manner and follow all safety procedures including use of safety equipment.</li>
	<li>
		Must be willing to ask for assistance when the process is unclear.</li>
	<li>
		Ability to work all shifts including off shifts.</li>
</ul>
<p>
	<strong>EDUCATION AND/OR EXPERIENCE</strong></p>
<ul>
	<li>
		A Bachelor&rsquo;s degree in Business, Dairy or Food Science or six years of experience in a Plant leadership role in a Dairy or Food Manufacturing facility is strongly desired.</li>
	<li>
		College level verbal and written communication skills. Must be able to communicate with senior management on a daily basis.</li>
	<li>
		Leadership, team development, coaching, and / or teaching experience.</li>
	<li>
		Good math and statistical skills.</li>
	<li>
		Excellent computer skills for data input, report writing, program tracking.</li>
	<li>
		Excellent organizational and follow through skills.</li>
</ul>
<p>
	<strong>Language Skills</strong><br />
	English is desired as the spoken language. Other languages are definite asset. A well-modulated tonal volume is required with excellent diction skills needed.<br />
	<br />
	<strong>WORK ENVIRONMENT</strong><br />
	Employees will be subject to temperatures associated with an air-cooled room to temperatures in excess of 100 degrees Fahrenheit while working in proximity to dryer and to wet environments (hot or cold) during cleaning-in-place (CIP) operations. May be required to enter confined spaces to perform equipment inspection<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', 'J1111', 'Processing Manager', '2014-11-25 00:00:00', 8, '$100,000 + 15% Bonus + relocation pckg', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (270, 0, 10, '<p>
	<strong>SUMMARY</strong></p>
<ul>
	<li>
		Liaison between R&amp;D, Quality, Marketing and Supply Chain for all businesses. </li>
	<li>
		Assist in Developing, Implementing and Managing Food Safety, Sanitation, Quality, and Process improvement programs. </li>
	<li>
		Drive QA programs and awareness throughout facilities and Corporate groups.</li>
	<li>
		In conjunction with the plant OQ team, investigates plant nonconforming product incidents and consumer complaints, conducting root cause analysis and leading corrective action efforts.</li>
	<li>
		Technical lead on quality related consumer complaint investigations and reduction</li>
	<li>
		Supports business strategies and commercialization process from a quality and food safety perspective.</li>
</ul>
<p>
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<p>
	&nbsp;</p>
<ul>
	<li>
		Participate in developing, implementing and maintaining appropriate plant and division quality plans, consistent with business and quality strategies</li>
	<li>
		Participate in food safety continuous improvement efforts (complaint reduction, program reassessments, data collection system, training, problem solving)</li>
	<li>
		Lead corporate product review programs, provide summarized reports, proper communication and action plans when necessary</li>
	<li>
		Coordinate and conduct quality systems audits and mock recall programs, provide summarized reports and corrective action plans</li>
	<li>
		Work closely with PD, Marketing, and Operations on new product commercializations. Identifies quality and food safety risks and opportunities during early stages of commercialization.</li>
	<li>
		Develop improvement strategies to help meet quality and reliability objectives</li>
	<li>
		Provide insight and support in the development and implementation of appropriate plant performance tracking measures KPI&rsquo;s.</li>
	<li>
		Provide support to plant and corporate problem solving teams, apply statistical and designed experiment tools</li>
	<li>
		Provide QA support and guidance to cross functional teams, plants, copackers, and suppliers</li>
	<li>
		Analyze consumer trends and data: provide feedback to necessary business groups</li>
	<li>
		Manage product formula, special batch, temp note and deviation approval for the business</li>
	<li>
		Create new documentation needed for any new or existing commercialization process</li>
	<li>
		Oversee quality aspects of special batches and new product launches by complying with PF commercialization process. Includes conducting food safety/quality risk assessments, participation in planning/execution and securing required samples and data, determining proper specifications and ensuring execution of specifications</li>
	<li>
		Investigates in-plant quality incidents (foreign material, food safety and quality nonconforming product) and consumer complaints, identifying root causes and facilitating corrective action with plant teams</li>
	<li>
		Cross-train in other QA tasks to function as back-up to QA team members.</li>
</ul>
<p style="margin:0in;margin-bottom:.0001pt">
	&nbsp;</p>
<p style="margin:0in;margin-bottom:.0001pt">
	<b><span style="font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;
color:black">&nbsp;</span></b></p>
<p style="margin:0in;margin-bottom:.0001pt">
	&nbsp;</p>
<p style="margin:0in;margin-bottom:.0001pt">
	<b><span style="font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;
color:black">&nbsp;</span></b></p>
<p style="margin:0in;margin-bottom:.0001pt">
	<b><span style="font-size:11.0pt;font-family:&quot;Arial&quot;,&quot;sans-serif&quot;;
color:black">&nbsp;</span></b></p>
<p style="margin:0in;margin-bottom:.0001pt">
	&nbsp;</p>
<p>
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1693', 'Senior Technologist - QA', '2014-08-28 00:00:00', 2, '$85-105K + 5% bonus + visa transfer + some relocation assistance', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (271, 2, 7, '<p>
	<strong>SUMMARY</strong><br />
	Lead the development of new products from concept to launch. Design, plan, validate and implement the development of new products for Global meals &amp; Drinks that are in compliance with established safety standards, good manufacturing Practices (GMPs) and will follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies as pertains to role. Lead and/or provide functional expertise on cross-functional project teams, including technical input for internal and external manufacturing start-ups.<br />
	<br />
	<strong>RESPONSIBILITIES</strong><br />
	<strong>Innovation/Renovation: </strong>Design, Lead experimental approach for product design. Develop information for Product/ingredient specifications, in-process control points and testing requirements. Coordinate and conduct pilot plant trials and factory scale trials. Must be able to effectively trouble shoot and offer plausible, executable solutions.<br />
	<strong>Project Management:</strong> Create project direction by providing technical input through the planning and decision making process and effectively communicating with senior R&amp;D group management. Ability manage moderate to complex projects with minimal supervision.<br />
	<strong>Pipeline Replenishment:</strong> Co-create project direction for capability development projects (Cat 1) with moderate input from Supervisor.<br />
	<strong>Technical:</strong> Demonstrate technical leadership by searching for new opportunities to develop products to meet the needs of the global Nestl&eacute; Nutrition business.<br />
	<strong>Leadership: </strong>Create project direction by providing functional input through the planning and decision making process. Able to identify risk, road blocks, critical path and resolve project conflicts.<br />
	<strong>People</strong>: Effectively work cross functionally throughout the organization, including vertically and horizontally. May supervise technician or intern.<br />
	<br />
	<strong>Qualifications</strong></p>
<ul>
	<li>
		Minimum 5 years applicable Food Science or related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Bachelor&rsquo;s degree with 10+ years of applicable Food Science experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Master&rsquo;s Degree with 7+ years of applicable Food Science experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Ph.D. degree with 5+ years of applicable Food Science experience</p>
<ul>
	<li>
		Advanced Degree preferred.</li>
</ul>
<p>
	<br />
	<strong>Knowledge of:</strong></p>
<ul>
	<li>
		Thermal process with strong experience in aseptic technology with also knowledge and exposure to alternate technologies (i.e. retort, microwave, ohmic).</li>
	<li>
		Fruits and vegetables processing and formulation of finished products (puree, sauce, liquid, meals, frozen).</li>
	<li>
		Food technology with knowledge of unit operations and manufacturing environment.</li>
	<li>
		Team leadership and project management (PMP Certification a plus).</li>
	<li>
		Proven track record to manage moderate to complex projects.</li>
	<li>
		Must be able to manage multiple projects/priorities &ndash; Good organizational skills.</li>
	<li>
		Industry safety standards and Good Manufacturing Practices (GMPs)</li>
	<li>
		Good understanding of Stage Gate Process.</li>
	<li>
		Practice safety in the work area.</li>
</ul>
<p>
	<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1694', 'Senior Scientist', '2014-08-28 00:00:00', 8, ' $89 – 108,000 + 15% target + relocation + visa transfer', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (272, 0, 7, '<p>
	<strong>SUMMARY</strong></p>
<ul>
	<li>
		A scientist who will support Company sales and new product growth through a combination of application development, new product development and technical support to customers, primarily in the bakery segment </li>
	<li>
		Application development is expected to be 50%, new product development 30% and technical service 20% </li>
	<li>
		Travel is expected to be 20%, including international travel</li>
</ul>
<p>
	<strong>Education </strong></p>
<ul>
	<li>
		MS or PhD in Food Science/Food Chemistry/Food Technology/Food Engineering</li>
</ul>
<p>
	<strong>Preferred Experiences</strong>:</p>
<ul>
	<li>
		5 to 10 years technical experience with retail or foodservice companies in bakery applications </li>
	<li>
		Experience should include fundamental research in the structure and function of ingredients </li>
	<li>
		Alternate to experience in retail or foodservice bakery companies, experience could be in food ingredient companies with extensive specialization in bakery applications </li>
	<li>
		The successful candidate will have a strong understanding of the role of ingredients in bakery applications, the processing of the baked goods and the technical requirements of the different market channels </li>
</ul>
<p>
	<strong>General Requirements</strong></p>
<ul>
	<li>
		Able to work independently, be customer focused, and manage long term projects effectively through teamwork with technical, commercial, marketing, and sales resources &nbsp;Have strong at technical problem solving, experimental design, and be committed to deadlines, technical objectives and requirements </li>
	<li>
		Have excellent presentation skills </li>
</ul>
<p>
	<br />
	<br />
	<br />
	<br />
	Salary: discuss with recruiter</p>
', '', '1696', 'Bakery Scientist - Nutrition', '2014-09-04 00:00:00', 6, 'Discuss with Recruiter', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (273, 1, 7, '<p>
	<strong>SUMMARY</strong></p>
<ul>
	<li>
		Product Leadership - Proactively lead the development of HTST, ESL, and Aseptic Fluid New Products, Cost Savings, and Quality Improvements.</li>
</ul>
<p>
	<strong><br />
	Key Competencies</strong></p>
<ul>
	<li>
		Results &ndash; Results oriented Leader with proven track record of successfully delivering New Products, Cost Savings, and Quality Improvements to the marketplace</li>
	<li>
		Technical Knowledge - Deep technical knowledge of HTST, ESL, and Aseptic Fluid Dairy and Non Dairy Products and Processes</li>
	<li>
		Innovation &ndash; Proactively seeks and demonstrates technical innovation that meets business objectives</li>
	<li>
		Leadership &ndash; Proficient Leader with ability to leverage consumer insights, and technical capabilities to develop and commercialize outstanding Fluid Products</li>
	<li>
		Interpersonal Communication Skills &ndash; Excellent interpersonal communication skills to network and build/maintain relationships and develop trust with Business Partners</li>
	<li>
		Industry Knowledge - Extensive understanding and passion for the Dairy and Consumer Packaged Goods Industry&nbsp;</li>
</ul>
<p>
	<strong>Education and Experience</strong></p>
<ul>
	<li>
		BS/MS/PhD in Food Science/Food Engineering or comparable field of expertise</li>
	<li>
		At least 12 years of Product Innovation Leadership in the Dairy Industry</li>
</ul>
<p>
	<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1697', 'Principal Scientist - Fluid Products', '2014-09-04 00:00:00', 6, 'See Recruiter', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (274, 0, 9, '<p>
	<strong>SUMMARY</strong></p>
<p>
	Provide engineering and technical support to drive packaging operations performance. Identifies and removes barriers to enable attainment of production rates, consistent quality, and efficient changeovers. Develops and executes continuous improvement plan for packaging operations. <br />
	<br />
	<strong>DUTIES</strong></p>
<ul>
	<li>
		Support, implement, and maintain food safety practices as required through SQF. </li>
	<li>
		Responsible for completing job duties in a manner that supports all plant safety, food safety, quality and environmental practices. </li>
	<li>
		Focuses on metrics attainment (OEE / rate / yields / schedule attainment). Aides packaging techs in troubleshooting. Drives equipment simplification and set up repeatability to optimize changeover efficiency. Collaborates with maintenance on identifying equipment reliability issues and developing mitigation strategies to improve reliability. Identifies and implements improvements to ensure process consistency and capability. </li>
	<li>
		Main driver of continuous improvement for packaging operations. Analyzes operational data to identify and prioritize chronic barriers to performance for targeted improvement. Coordinates and collaborates with counterparts at other company&rsquo;s manufacturing sites to share knowledge and best practices in order to ensure multi-site benefits. </li>
	<li>
		Understands rate capabilities for packaging operations, identifies bottleneck operations preventing rate attainment and implements improvements. Identifies gaps and develops strategy for rate increases to meet business growth needs. Able to identify barriers to efficient workflow and capacity utilization and to develop creative solutions to overcome them. </li>
	<li>
		Collaborates with packaging technicians and operators to define and sustain optimal equipment set-ups (operating parameters, sequences, set points, etc.). </li>
	<li>
		Responds to new packaging requests. Investigates and determines production feasibility. Identifies tools, equipment and methods to produce new products and support new product start-ups and integration. </li>
	<li>
		Collaborates with packaging technology engineers on the development, evaluation, and integration of new packaging designs and enhancements to meet strategic business plans and customer requirements.</li>
	<li>
		Maintains updated process control &amp; operational documentation. </li>
</ul>
<p>
	<br />
	<strong>REQUIREMENTS</strong><br />
	<strong>General </strong></p>
<ul>
	<li>
		Must be able to read and understand English. </li>
	<li>
		Willingness to work nights, holidays, and weekends as needed should business conditions require it.</li>
</ul>
<p>
	<strong>Education/Experience</strong></p>
<ul>
	<li>
		Bachelor of Science degree in engineering </li>
	<li>
		5 or more years of experience in packaging operations encompassing vertical and horizontal form fill and seal machines, cartoning, case erectors, packers, and sealers, robotic operations, and all forms of package conveying. High speed pouching and blending a plus. Experience in a food processing environment preferred.</li>
</ul>
<p>
	<strong>Skills and Abilities</strong></p>
<ul>
	<li>
		Strong communication and coaching skills. Ability to work closely with peers and internal customers to share responsibility and solve problems. </li>
	<li>
		Strong written and oral communication and facilitation skills. Ability to write reports and develop specifications. Knowledgeable in the use of personal computers. </li>
	<li>
		Skilled at working in a team environment. Excellent listener, empathetic and compassionate to individuals concerns and needs. </li>
	<li>
		Experienced at analyzing process data and equipment performance data to improve product quality and optimize system throughput and reduce costs. </li>
	<li>
		Experienced at managing contractors, maintenance personnel, and production personnel. Experienced at training maintenance and production personnel. Possess a working knowledge of SPC. </li>
	<li>
		Creative and change-oriented. Experienced and adept at continuous improvement methodology. </li>
	<li>
		Self-starter, operates independently or with minimal direction, and navigates ambiguous situations effectively.</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1695', 'Operations Packaging Engineer', '2014-09-04 00:00:00', 4, '$90 – 100K + 7.5% Bonus + Relo Pckg', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (280, 0, 11, '<p>
	<strong>SUMMARY</strong><br />
	Principal Engineer/Scientist (Thermal Process Authority) will be focused on insuring the safety and quality of shelf-stable foods via aseptic, retort, and hot-fill methods as a Thermal Processing Authority for Company. The position will collaborate cross-functionally to provide thermal processing solutions to help deliver innovation and renovation projects. In some instances, these projects may involve novel processing technology requiring advanced capabilities in protocol development, experimental design, data analysis and mathematical modeling. In addition, the position will drive knowledge transfer to stakeholders in baby food factories globally in the form of technical assistance in response to factory-based requests, as well as proactive development of thermal processing standards and training delivery to build factory-level competency. Position will also play a pivotal role in building thermal processing as a functional discipline within R&amp;D and participate in internal networks and professional affiliations to achieve recognition as a center of excellence<br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Establish aseptic, retort and hot-fill thermal processes in support of innovation, renovation, and technical assistance. Coordinate or conduct heat penetrations, temperature distributions, and microbiological challenge studies as warranted. To include risk assessments that integrates ingredients, process and packaging, as well as microbiological and controls validation and critical control operational requirements. Conduct deviation analyses and recommend product dispositions as needed</li>
	<li>
		Maintain thermal processing functional capabilities. To include awareness of and compliance with all applicable regulatory and internal requirements related to thermal processing. To include maintenance of all documentation and records. To include purchase and maintenance of equipment, instruments and software needed to collect and analyze data, and to calculate or model thermal processes. Perform periodic assessments or internal audits to ensure robustness of the work processes/systems and drive continuous improvement</li>
	<li>
		Provide technical assistance to factories to enhance technical competency, optimize thermal processes, and resolve issues. Develop and deliver thermal processing standards and training to enhance factory-level capabilities. To include proactive sharing of Company and industry best practices. Respond well to both formal and informal requests for technical assistance</li>
	<li>
		Proactively lead and build R&amp;D mastership in thermal processing by setting direction and priorities for the function, and by collaborating with key internal and external stakeholders. To include participation on corporate Food Safety and Management of Change committees.</li>
	<li>
		Employee will be responsible to follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies and procedures as pertains to role</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		Engineering (prefer food, chemical, or mechanical), Food Science or closely related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - B.S. degree with 12+ years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - M.S. degree with 10+ years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Ph.D. degree with 8+ years of relevant experience</p>
<ul>
	<li>
		Advanced degree preferred</li>
	<li>
		Experience must include roles in thermal processing</li>
	<li>
		Advanced proficiency in English language</li>
</ul>
<p>
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Expertise in thermal processing - aseptic, retort, and hot-fill</li>
	<li>
		Fluency with applicable regulations and establishment of thermal processes</li>
	<li>
		Broad knowledge of food processing, food safety, and quality management systems including Good Manufacturing Practices (GMPs)</li>
	<li>
		Demonstrated competence in fundamentals of project management and team leadership</li>
	<li>
		Ability to design experiments and apply mathematical models to thermal processing</li>
	<li>
		Competence with a variety of analytical software such as Ellab, DataTrace, Calsoft, NumeriCal, MatLab, Ansys, Labview, Comsol</li>
</ul>
', '', '1700', 'Principal Engineer - Thermal Processing', '2014-10-14 00:00:00', 8, '$110 - $125,000 + 20% Bonus + relocation assistance + visa transfer', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (281, 0, 3, '<p>
	<strong>SUMMARY</strong><br />
	The Senior Associate Engineer - Thermal Processing will be focused on insuring the safety and quality of shelf-stable foods via aseptic, retort, and hot-fill methods as a Thermal Process Specialist. The position will collaborate cross-functionally to provide thermal processing solutions to help deliver innovation and renovation projects. In some instances, these projects may involve novel processing technology requiring advanced capabilities in protocol development, experimental design, data analysis and mathematical modeling. In addition, the position will drive knowledge transfer to stakeholders in company factories globally in the form of technical assistance in response to factory-based requests, as well as proactive development of thermal processing standards and training delivery to build factory-level competency. Position will also play a supporting role in building thermal processing as a functional discipline within R&amp;D and may participate in internal networks and professional affiliations to help achieve recognition as a center of excellence<br />
	<strong><br />
	RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Assist in establishing aseptic, retort and hot-fill thermal processes in support of innovation, renovation, and technical assistance. Coordinate or conduct heat penetrations, temperature distributions, and microbiological challenge studies as warranted. To include risk assessments that integrate ingredients, process and packaging, as well as microbiological and controls validation and critical control operational requirements. Prepare scheduled processes for submission with FDA as required. Support deviation analyses and recommend product dispositions as needed</li>
	<li>
		Support thermal processing functional capabilities. To include awareness of and compliance with all applicable regulatory and internal requirements related to thermal processing. To include maintenance of all documentation and records. To include purchase and maintenance of equipment, instruments and software needed to collect and analyze data, and to calculate or model thermal processes. Assist in periodic assessments or internal audits to ensure robustness of the work processes/systems and execute less complex continuous improvement initiatives</li>
	<li>
		Through mentorship of Thermal Process Authority, provide technical assistance to factories to enhance technical competency, optimize thermal processes, and resolve issues. Support the development and delivery of thermal processing standards and training to enhance factory-level capabilities. To include proactive learning of Nestl&eacute; and industry best practices. Respond well to both formal and informal requests for technical assistance</li>
	<li>
		Proactively participate in building mastership in thermal processing by recommending direction and priorities for the function, and by collaborating with key internal and external stakeholders. May include participation on Food Safety and Management of Change committees. May also include participation in expert networks and industry affiliations</li>
	<li>
		Employee will be responsible to follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies and procedures as pertains to role</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		Engineering (prefer food, chemical, or mechanical), Food Science or closely related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - B.S. degree with 2-4 years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - M.S. degree with 0-2 years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Ph.D. degree with 0-1 year of relevant experience</p>
<ul>
	<li>
		Advanced degree preferred</li>
	<li>
		Experience or education should include thermal processing</li>
	<li>
		Advanced proficiency in English language</li>
</ul>
<p>
	<strong>Experience Required </strong></p>
<ul>
	<li>
		Knowledge of and experience in thermal processing - aseptic, retort, and/or hot-fill</li>
	<li>
		Awareness and working knowledge of applicable regulations and establishment of thermal processes</li>
	<li>
		Strong foundational knowledge of food processing, food safety, and quality management principles including Good Manufacturing Practices (GMPs)</li>
	<li>
		Limited knowledge with strong aptitude for project management and team leadership</li>
	<li>
		Working knowledge of experimental design and mathematical modeling as applied to thermal processing</li>
	<li>
		Familiarity with software such as Ellab, DataTrace, Calsoft, NumeriCal, MatLab, Ansys, Labview, Comsol</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1701', 'Senior Associate Engineer - Thermal Processing', '2014-10-15 00:00:00', 8, '$78,000 – 94,000 + 7% + relocation + visa transfer', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (282, 0, 6, '<p>
	<strong>SUMMARY</strong><br />
	The Senior Associate Engineer - Thermal Processing will be focused on insuring the safety and quality of shelf-stable foods via aseptic, retort, and hot-fill methods as a Thermal Process Specialist. The position will collaborate cross-functionally to provide thermal processing solutions to help deliver innovation and renovation projects. In some instances, these projects may involve novel processing technology requiring advanced capabilities in protocol development, experimental design, data analysis and mathematical modeling. In addition, the position will drive knowledge transfer to stakeholders in company factories globally in the form of technical assistance in response to factory-based requests, as well as proactive development of thermal processing standards and training delivery to build factory-level competency. Position will also play a supporting role in building thermal processing as a functional discipline within R&amp;D and may participate in internal networks and professional affiliations to help achieve recognition as a center of excellence<br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Assist in establishing aseptic, retort and hot-fill thermal processes in support of innovation, renovation, and technical assistance. Coordinate or conduct heat penetrations, temperature distributions, and microbiological challenge studies as warranted. To include risk assessments that integrate ingredients, process and packaging, as well as microbiological and controls validation and critical control operational requirements. Prepare scheduled processes for submission with FDA as required. Support deviation analyses and recommend product dispositions as needed</li>
	<li>
		Support thermal processing functional capabilities. To include awareness of and compliance with all applicable regulatory and internal requirements related to thermal processing. To include maintenance of all documentation and records. To include purchase and maintenance of equipment, instruments and software needed to collect and analyze data, and to calculate or model thermal processes. Assist in periodic assessments or internal audits to ensure robustness of the work processes/systems and execute less complex continuous improvement initiatives</li>
	<li>
		Through mentorship of Thermal Process Authority, provide technical assistance to factories to enhance technical competency, optimize thermal processes, and resolve issues. Support the development and delivery of thermal processing standards and training to enhance factory-level capabilities. To include proactive learning of Nestl&eacute; and industry best practices. Respond well to both formal and informal requests for technical assistance</li>
	<li>
		Proactively participate in building mastership in thermal processing by recommending direction and priorities for the function, and by collaborating with key internal and external stakeholders. May include participation on Food Safety and Management of Change committees. May also include participation in expert networks and industry affiliations</li>
	<li>
		Employee will be responsible to follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies and procedures as pertains to role</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		Engineering (prefer food, chemical, or mechanical), Food Science or closely related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- B.S. degree with 2-4 years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- M.S. degree with 0-2 years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Ph.D. degree with 0-1 year of relevant experience</p>
<ul>
	<li>
		Advanced degree preferred</li>
	<li>
		Experience or education should include thermal processing</li>
	<li>
		Advanced proficiency in English language</li>
</ul>
<p>
	<br />
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Knowledge of and experience in thermal processing - aseptic, retort, and/or hot-fill</li>
	<li>
		Awareness and working knowledge of applicable regulations and establishment of thermal processes</li>
	<li>
		Strong foundational knowledge of food processing, food safety, and quality management principles including Good Manufacturing Practices (GMPs)</li>
	<li>
		Limited knowledge with strong aptitude for project management and team leadership</li>
	<li>
		Working knowledge of experimental design and mathematical modeling as applied to thermal processing</li>
	<li>
		Familiarity with software such as Ellab, DataTrace, Calsoft, NumeriCal, MatLab, Ansys, Labview, Comsol</li>
	<li>
		&nbsp;</li>
</ul>
<p>
	<br />
	Job Code: 1701</p>
', '', '1701', 'Senior Associate Engineer - Thermal Processing', '2014-10-15 00:00:00', 8, '$78,000 – 94,000 + 7% + relocation + visa transfer', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (283, 0, 10, '<p>
	<strong>SUMMARY</strong><br />
	The Senior Associate Engineer - Thermal Processing will be focused on insuring the safety and quality of shelf-stable foods via aseptic, retort, and hot-fill methods as a Thermal Process Specialist. The position will collaborate cross-functionally to provide thermal processing solutions to help deliver innovation and renovation projects. In some instances, these projects may involve novel processing technology requiring advanced capabilities in protocol development, experimental design, data analysis and mathematical modeling. In addition, the position will drive knowledge transfer to stakeholders in company factories globally in the form of technical assistance in response to factory-based requests, as well as proactive development of thermal processing standards and training delivery to build factory-level competency. Position will also play a supporting role in building thermal processing as a functional discipline within R&amp;D and may participate in internal networks and professional affiliations to help achieve recognition as a center of excellence<br />
	<strong><br />
	RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Assist in establishing aseptic, retort and hot-fill thermal processes in support of innovation, renovation, and technical assistance. Coordinate or conduct heat penetrations, temperature distributions, and microbiological challenge studies as warranted. To include risk assessments that integrate ingredients, process and packaging, as well as microbiological and controls validation and critical control operational requirements. Prepare scheduled processes for submission with FDA as required. Support deviation analyses and recommend product dispositions as needed</li>
	<li>
		Support thermal processing functional capabilities. To include awareness of and compliance with all applicable regulatory and internal requirements related to thermal processing. To include maintenance of all documentation and records. To include purchase and maintenance of equipment, instruments and software needed to collect and analyze data, and to calculate or model thermal processes. Assist in periodic assessments or internal audits to ensure robustness of the work processes/systems and execute less complex continuous improvement initiatives</li>
	<li>
		Through mentorship of Thermal Process Authority, provide technical assistance to factories to enhance technical competency, optimize thermal processes, and resolve issues. Support the development and delivery of thermal processing standards and training to enhance factory-level capabilities. To include proactive learning of Nestl&eacute; and industry best practices. Respond well to both formal and informal requests for technical assistance</li>
	<li>
		Proactively participate in building mastership in thermal processing by recommending direction and priorities for the function, and by collaborating with key internal and external stakeholders. May include participation on Food Safety and Management of Change committees. May also include participation in expert networks and industry affiliations</li>
	<li>
		Employee will be responsible to follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies and procedures as pertains to role</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		Engineering (prefer food, chemical, or mechanical), Food Science or closely related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- B.S. degree with 2-4 years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- M.S. degree with 0-2 years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Ph.D. degree with 0-1 year of relevant experience</p>
<ul>
	<li>
		Advanced degree preferred</li>
	<li>
		Experience or education should include thermal processing</li>
	<li>
		Advanced proficiency in English language</li>
</ul>
<p>
	<strong>Experience Required </strong></p>
<ul>
	<li>
		Knowledge of and experience in thermal processing - aseptic, retort, and/or hot-fill</li>
	<li>
		Awareness and working knowledge of applicable regulations and establishment of thermal processes</li>
	<li>
		Strong foundational knowledge of food processing, food safety, and quality management principles including Good Manufacturing Practices (GMPs)</li>
	<li>
		Limited knowledge with strong aptitude for project management and team leadership</li>
	<li>
		Working knowledge of experimental design and mathematical modeling as applied to thermal processing</li>
	<li>
		Familiarity with software such as Ellab, DataTrace, Calsoft, NumeriCal, MatLab, Ansys, Labview, Comsol</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1701', 'Senior Associate Engineer - Thermal Processing', '2014-10-15 00:00:00', 8, '$78,000 – 94,000 + 7% + relocation + visa transfer', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (284, 0, 11, '<p>
	<strong>SUMMARY</strong><br />
	The Senior Associate Engineer - Thermal Processing will be focused on insuring the safety and quality of shelf-stable foods via aseptic, retort, and hot-fill methods as a Thermal Process Specialist. The position will collaborate cross-functionally to provide thermal processing solutions to help deliver innovation and renovation projects. In some instances, these projects may involve novel processing technology requiring advanced capabilities in protocol development, experimental design, data analysis and mathematical modeling. In addition, the position will drive knowledge transfer to stakeholders in company factories globally in the form of technical assistance in response to factory-based requests, as well as proactive development of thermal processing standards and training delivery to build factory-level competency. Position will also play a supporting role in building thermal processing as a functional discipline within R&amp;D and may participate in internal networks and professional affiliations to help achieve recognition as a center of excellence<br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Assist in establishing aseptic, retort and hot-fill thermal processes in support of innovation, renovation, and technical assistance. Coordinate or conduct heat penetrations, temperature distributions, and microbiological challenge studies as warranted. To include risk assessments that integrate ingredients, process and packaging, as well as microbiological and controls validation and critical control operational requirements. Prepare scheduled processes for submission with FDA as required. Support deviation analyses and recommend product dispositions as needed</li>
	<li>
		Support thermal processing functional capabilities. To include awareness of and compliance with all applicable regulatory and internal requirements related to thermal processing. To include maintenance of all documentation and records. To include purchase and maintenance of equipment, instruments and software needed to collect and analyze data, and to calculate or model thermal processes. Assist in periodic assessments or internal audits to ensure robustness of the work processes/systems and execute less complex continuous improvement initiatives</li>
	<li>
		Through mentorship of Thermal Process Authority, provide technical assistance to factories to enhance technical competency, optimize thermal processes, and resolve issues. Support the development and delivery of thermal processing standards and training to enhance factory-level capabilities. To include proactive learning of Nestl&eacute; and industry best practices. Respond well to both formal and informal requests for technical assistance</li>
	<li>
		Proactively participate in building mastership in thermal processing by recommending direction and priorities for the function, and by collaborating with key internal and external stakeholders. May include participation on Food Safety and Management of Change committees. May also include participation in expert networks and industry affiliations</li>
	<li>
		Employee will be responsible to follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies and procedures as pertains to role</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		Engineering (prefer food, chemical, or mechanical), Food Science or closely related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- B.S. degree with 2-4 years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- M.S. degree with 0-2 years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Ph.D. degree with 0-1 year of relevant experience</p>
<ul>
	<li>
		Advanced degree preferred</li>
	<li>
		Experience or education should include thermal processing</li>
	<li>
		Advanced proficiency in English language</li>
</ul>
<p>
	<strong>Experience Required </strong></p>
<ul>
	<li>
		Knowledge of and experience in thermal processing - aseptic, retort, and/or hot-fill</li>
	<li>
		Awareness and working knowledge of applicable regulations and establishment of thermal processes</li>
	<li>
		Strong foundational knowledge of food processing, food safety, and quality management principles including Good Manufacturing Practices (GMPs)</li>
	<li>
		Limited knowledge with strong aptitude for project management and team leadership</li>
	<li>
		Working knowledge of experimental design and mathematical modeling as applied to thermal processing</li>
	<li>
		Familiarity with software such as Ellab, DataTrace, Calsoft, NumeriCal, MatLab, Ansys, Labview, Comsol</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1701', 'Senior Associate Engineer - Thermal Processing', '2014-10-15 00:00:00', 8, '$78,000 – 94,000 + 7% + relocation + visa transfer', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (285, 0, 9, '<p>
	<strong>SUMMARY</strong><br />
	The Supply Chain Manager works under the guidance of the Director of Operations sourcing packaging, raw ingredients and other supplies while maintaining a measureable Supply Chain.<br />
	<strong><br />
	ESSENTIAL FUNCTION</strong>S</p>
<ul>
	<li>
		Source and purchase all raw ingredients. Manage inventory levels.</li>
	<li>
		Source and purchase all packaging material.</li>
	<li>
		Source and purchase various Maintenance, Repair and Operation (MRO) supplies.</li>
	<li>
		Monitor and correct weaknesses in the Supply Chain through the supplier monitoring system.</li>
	<li>
		Collaborate with Research and Development and the Applications departments on sample requests for new ingredients.</li>
	<li>
		Maintain effective supplier relationships through appropriate accountability and accommodation.</li>
</ul>
<p>
	<br />
	<strong>POSITION QUALIFICATIONS </strong></p>
<ul>
	<li>
		Communication- Ability to communicate effectively with others using the spoken and written word.</li>
	<li>
		Problem Solving - Ability to find a solution for or to deal proactively with work-related problems using data and continuous improvement tools.</li>
	<li>
		Accountability - Ability to accept responsibility and account for his/her actions.</li>
	<li>
		Coachable-Ability to look at one-self objectively.</li>
	<li>
		Commitment &ndash; Ability to work within company&rsquo;s policies of customer satisfaction and teamwork within a collaborative environment.</li>
	<li>
		Teamwork-the ability to identify one&rsquo;s role in a team (leader or follower) and adjust when appropriate.</li>
	<li>
		Presentation Skills-Ability to connect with differing levels of the organization effectively through conciseness and simple-ness.</li>
</ul>
<p>
	<br />
	<strong>Education:</strong> Bachelor&rsquo;s Degree preferred or a combination of experience, relationship and validated performance indicating the above competencies and functions can be satisfied without a degree.<br />
	<br />
	<strong>Experience</strong>: A minimum of five (5) years&rsquo; experience in purchasing preferred<br />
	<br />
	<strong>Computer Skills:</strong> Proficient with Microsoft Office Suite (demonstrated advanced skills in Excel and Access) and MRP/ERP<br />
	<br />
	&nbsp;</p>
', '', '1702', 'Supply Chain Manager', '2014-10-27 00:00:00', 8, '$80-100K + discretionary bonus + some relocation assistance', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (286, 1, 7, '<p>
	<strong>SUMMARY</strong><br />
	The purpose of this job is to apply knowledge of food science and engineering principles to design and formulate new and improved existing cereal products, to manage product activities utilizing project management techniques, and to participate in and lead cross-functional product development activities resulting in meeting company goals for cost savings, quality improvements and new product innovations. <br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Develop new products and improvements to existing products. Assure that product activities meet company cost capacity, quality, marketing and product development requirements. Provide design and processing parameters inputs for new products, capacity improvements, and equipment design. Maintain knowledge of developments in ingredient formulation and processing research. Test new ingredient and process concepts; work with purchasing to make ingredient modifications where appropriate. Product Improvements, Product Maintenance and News&nbsp;</li>
	<li>
		Improve and develop extensions to existing brands using laboratory bench top, vendor facilities and full scale manufacturing systems. Ability to go from bench top to full scale production, without test scale up, is necessary. Provide design and processing parameters inputs for new products, capacity improvements, and equipment design. Develop and support maintenance of specifications and run documentation resulting in desired consistent, quality attributes. Maintain knowledge of developments in ingredient formulation and processing research. Test new ingredient and process concepts; work with purchasing to make ingredient modifications where appropriate. Business Development and Profit Margin Support</li>
	<li>
		Work with a key business partner in Marketing to maximize profitability on product platform. Provide technical support to operations to continuously reduce cost of goods and improve quality.</li>
	<li>
		Communicate project activities, information, recommendations and performance to management and appropriate business processes. Monitor product performance and quality through competitive cuts, customer/consumer feedback, financial reports and other sources. Work with appropriate resources to develop documentation necessary for meeting production and product goals.</li>
</ul>
<p>
	<strong>JOB REQUIREMENTS</strong><br />
	<strong>Education</strong></p>
<ul>
	<li>
		BS in chemical Engineering or MS in Food Science</li>
</ul>
<p>
	<strong>Experience</strong></p>
<ul>
	<li>
		5+ years of experience in the food industry in both product and process development roles</li>
	<li>
		Experience in process optimization, process scale up from bench to pilot plant to full scale, product formulation, statistical process control, cost savings and quality improvements</li>
	<li>
		Production facility experience required</li>
	<li>
		Preferred, experience in cereal, baking or snack food manufacturing</li>
</ul>
<p>
	<strong>Skills</strong></p>
<ul>
	<li>
		Demonstrated problem-solving skills</li>
	<li>
		Proven innovation and creativity</li>
	<li>
		Ability to work effectively in team-based environment with multiple functional groups</li>
	<li>
		Excellent communication skills</li>
	<li>
		Ability to achieve results and execute multiple simultaneous projects</li>
	<li>
		Experience using statistical methods and design of experiments</li>
</ul>
<p>
	<strong>Management Skills</strong></p>
<ul>
	<li>
		Must have excellent written and verbal communication skills</li>
	<li>
		Ability to organize and manage projects; interact, support, facilitate and lead multi-functional work teams; ability to provide work direction to assigned resources; ability to lead team to a consensus; strong negotiation skills</li>
	<li>
		Ability to manage multiple projects, in a fast paced environment, meeting deadlines, and communicating status</li>
</ul>
<p>
	<strong>Other</strong></p>
<ul>
	<li>
		Able to work evenings and/or weekends</li>
	<li>
		Some travel is expected (&lt;20%), but there may be extended travel on certain key start-up projects</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1703', 'Senior Scientist', '2014-10-28 00:00:00', 8, '$90-110K + bonus + relocation assistance', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (287, 0, 8, '<p>
	<strong>SUMMARY</strong><br />
	The Supply Chain Manager works under the guidance of the Director of Operations sourcing packaging, raw ingredients and other supplies while maintaining a measureable Supply Chain.<br />
	<br />
	<strong>ESSENTIAL FUNCTIONS</strong></p>
<ul>
	<li>
		Source and purchase all raw ingredients. Manage inventory levels.</li>
	<li>
		Source and purchase all packaging material.</li>
	<li>
		Source and purchase various Maintenance, Repair and Operation (MRO) supplies.</li>
	<li>
		Monitor and correct weaknesses in the Supply Chain through the supplier monitoring system.</li>
	<li>
		Collaborate with Research and Development and the Applications departments on sample requests for new ingredients.</li>
	<li>
		Maintain effective supplier relationships through appropriate accountability and accommodation.</li>
</ul>
<p>
	<strong>POSITION QUALIFICATIONS </strong></p>
<ul>
	<li>
		Communication- Ability to communicate effectively with others using the spoken and written word.</li>
	<li>
		Problem Solving - Ability to find a solution for or to deal proactively with work-related problems using data and continuous improvement tools.</li>
	<li>
		Accountability - Ability to accept responsibility and account for his/her actions.</li>
	<li>
		Coachable-Ability to look at one-self objectively.</li>
	<li>
		Commitment &ndash; Ability to work within company&rsquo;s policies of customer satisfaction and teamwork within a collaborative environment.</li>
	<li>
		Teamwork-the ability to identify one&rsquo;s role in a team (leader or follower) and adjust when appropriate.</li>
	<li>
		Presentation Skills-Ability to connect with differing levels of the organization effectively through conciseness and simple-ness.</li>
</ul>
<p>
	<strong>Education: </strong>Bachelor&rsquo;s Degree preferred or a combination of experience, relationship and validated performance indicating the above competencies and functions can be satisfied without a degree.<br />
	<br />
	<strong>Experience:</strong> A minimum of five (5) years&rsquo; experience in purchasing preferred<br />
	<br />
	<strong>Computer Skills:</strong> Proficient with Microsoft Office Suite (demonstrated advanced skills in Excel and Access) and MRP/ERP<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1702', 'Supply Chain Manager', '2014-10-28 00:00:00', 8, '$80-100K + discretionary bonus + some relocation assistance', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (291, 0, 9, '<p>
	<strong>SUMMARY</strong><br />
	Provide engineering and technical support to drive packaging operations performance. Identifies and removes barriers to enable attainment of production rates, consistent quality, and efficient changeovers. Develops and executes continuous improvement plan for packaging operations. <br />
	<br />
	<strong>JOB ACTIVITIES/DUTIES</strong></p>
<ul>
	<li>
		Support, implement, and maintain food safety practices as required through SQF </li>
	<li>
		Responsible for completing job duties in a manner that supports all plant safety, food safety, quality and environmental practices </li>
	<li>
		Focuses on metrics attainment (OEE / rate / yields / schedule attainment). Aides packaging techs in troubleshooting. Drives equipment simplification and set up repeatability to optimize changeover efficiency. Collaborates with maintenance on identifying equipment reliability issues and developing mitigation strategies to improve reliability. Identifies and implements improvements to ensure process consistency and capability </li>
	<li>
		Main driver of continuous improvement for packaging operations. Analyzes operational data to identify and prioritize chronic barriers to performance for targeted improvement. Coordinates and collaborates with counterparts at other manufacturing sites to share knowledge and best practices in order to ensure multi-site benefits </li>
	<li>
		Understands rate capabilities for packaging operations, identifies bottleneck operations preventing rate attainment and implements improvements. Identifies gaps and develops strategy for rate increases to meet business growth needs. Able to identify barriers to efficient workflow and capacity utilization and to develop creative solutions to overcome them</li>
	<li>
		Collaborates with packaging technicians and operators to define and sustain optimal equipment set-ups (operating parameters, sequences, set points, etc.)</li>
	<li>
		Responds to new packaging requests. Investigates and determines production feasibility. Identifies tools, equipment and methods to produce new products and support new product start-ups and integration </li>
	<li>
		Collaborates with packaging technology engineers on the development, evaluation, and integration of new packaging designs and enhancements to meet strategic business plans and customer requirements</li>
	<li>
		Maintains updated process control &amp; operational documentation </li>
	<li>
		Perform any other function as directed to meet company and business needs. </li>
</ul>
<p>
	<br />
	<strong>JOB REQUIREMENTS <br />
	General </strong></p>
<ul>
	<li>
		Must be able to read and understand English </li>
	<li>
		Willingness to work nights, holidays, and weekends as needed should business conditions require it</li>
</ul>
<p>
	<strong>Education/Experience </strong></p>
<ul>
	<li>
		Bachelor of Science degree in engineering </li>
	<li>
		5 or more years of experience in packaging operations encompassing vertical and horizontal form fill and seal machines, cartoning, case erectors, packers, and sealers, robotic operations, and all forms of package conveying. High speed pouching and blending a plus. Experience in a food processing environment preferred</li>
</ul>
<p>
	<strong>Skills and Abilities</strong></p>
<ul>
	<li>
		Strong communication and coaching skills. Ability to work closely with peers and internal customers to share responsibility and solve problems </li>
	<li>
		Strong written and oral communication and facilitation skills. Ability to write reports and develop specifications. Knowledgeable in the use of personal computers </li>
	<li>
		Skilled at working in a team environment. Excellent listener, empathetic and compassionate to individuals concerns and needs </li>
	<li>
		Experienced at analyzing process data and equipment performance data to improve product quality and optimize system throughput and reduce costs </li>
	<li>
		Experienced at managing contractors, maintenance personnel, and production personnel. Experienced at training maintenance and production personnel. Possess a working knowledge of SPC </li>
	<li>
		Creative and change-oriented. Experienced and adept at continuous improvement methodology </li>
	<li>
		Self-starter, operates independently or with minimal direction, and navigates ambiguous situations effectively</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1705', 'Manufacturing Engineer', '2014-10-28 00:00:00', 4, '$90-100K + bonus + relocation assistance ', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (293, 0, 7, '<p>
	<strong>SUMMARY</strong></p>
<ul>
	<li>
		Technical Plan- Partners with Research and Development and Business Unit Leaders to develop prioritized technical plan for Cultured Dairy RD.</li>
	<li>
		Product Development- Leads RD Product Development Team to achieve technical plan.</li>
	<li>
		Staff Development- Actively develops staff through performance management discussions, learning plan skill development, and coaching to bring out the best in each employee.</li>
</ul>
<p>
	<strong>QUALIFICATIONS</strong></p>
<ul>
	<li>
		Results - Results-oriented leader with proven track record of leading cross-functional teams to successfully deliver New Products, Cost Reductions, and Quality Improvements to the marketplace.</li>
	<li>
		Technical Knowledge- Deep technical knowledge of Cultured Dairy Products and Processes.</li>
	<li>
		Interpersonal Communication Skills&ndash; Excellent interpersonal communication skills to network and build/maintain relationships and develop trust with Business Partners.</li>
	<li>
		Business Knowledge- Strong business orientation resulting in successful leadership of strategies and tactics.</li>
	<li>
		Project Leadership&ndash; Proficient Project Leader with ability to leverage consumer insights, and technical capabilities to develop and commercialize outstanding Cultured Dairy Products.</li>
	<li>
		People Leadership&ndash; Skilled at developing talent to meet the growth needs of employees and business.</li>
	<li>
		Innovation&ndash; Proactively seeks and demonstrates technical innovation that meets business objectives.</li>
	<li>
		Industry Knowledge- Extensive understanding and passion for the Dairy and Consumer Packaged Goods Industry</li>
</ul>
<p>
	<strong>Education and Experience Required:</strong></p>
<ul>
	<li>
		BS/MS/PhD in Food/Dairy Science or comparable field of technical expertise</li>
	<li>
		At least 10 years of Product Innovation Leadership experience in the Dairy Industry</li>
	<li>
		At least 5 years of Food RD Management experience</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', 'J1105', 'R&D Manager - Cultured Dairy', '2014-11-21 00:00:00', 6, ' $110-125K + 20% bonus + relocation assistance', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (263, 0, 5, '<p>
	<strong>SUMMARY</strong><br />
	The Packaging Development Engineer is expected to be a contributor to the business objectives of company under the direction of the Director Packaging &amp; Graphics Development. The Engineer is to support the technical development of new packaging for all of the company&rsquo;s products by conducting necessary lab evaluations, plant trials and in-field packaging tests. The Technical Package Development effort provides innovative and cost effective packaging that protects Company&rsquo;s products, maintains package integrity and enhances the usage of our products via consumer friendly packaging innovations.<br />
	<br />
	The Engineer is also to develop and issue Packaging Material Specifications. In addition he/she is expected to develop a broad perspective of the functional roles within the organization and further develop their technical, interpersonal and business skills as necessary.<br />
	<br />
	The Packaging Development Engineer&rsquo;s project responsibilities will be an integral part of the department Operating Plan balanced with a focus toward professional growth. He/she will be responsible for planning and implementing assigned individual packaging projects and tasks and also as part of cross-functional New Package Project Teams. Accountabilities will include demonstrated potential for development of technical and business skills<br />
	<strong><br />
	RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Develops new packages by executing packaging projects as assigned by the Director Packaging &amp; Graphics development</li>
	<li>
		Performs packaging tests as assigned by the Director Packaging &amp; Graphics Development by evaluating new and revised packaging materials via laboratory tests, coordinating, conducting and evaluating plant trials and shipping tests to ensure package/product performance</li>
	<li>
		Develops, obtains approvals and issues packaging material specs to enable effective package purchases and quality components</li>
	<li>
		Develops cost reduced packages as assigned by the Director Packaging &amp; Graphics Development to provide productivity savings by working with Purchasing, packaging material Suppliers and Company plants to provide satisfactory cost effective containers for our products</li>
	<li>
		Leads and provides direction to the technical resources of packaging suppliers in developing designs and packaging concepts.</li>
	<li>
		Sets specification parameters and approves initial package production at supplier&rsquo;s plants</li>
	<li>
		Provides plant packaging support to resolve packaging material related quality issues with packaging suppliers</li>
	<li>
		Prepares reports detailing results of packaging tests to management</li>
	<li>
		Works closely with Marketing, Purchasing, Operations, Corporate Engineering, Quality, Product Development, Distribution Management either individually or as part of a Project Team on packaging projects</li>
	<li>
		Draws conclusions and make recommendations regards new packaging and packaging improvements to Pkg.Dev.Mgr</li>
	<li>
		On site packaging expert during plant startups of new packages and packaging materials</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		Bachelors of Science Degree in Packaging from a major university with a globally recognized Packaging School</li>
</ul>
<p>
	<strong>Experience Required: </strong></p>
<ul>
	<li>
		3-5 years of professional packaging design and/or engineering experience. Must demonstrate experience in the following:</li>
	<li>
		Good skills in analysis, judgment and communications.</li>
	<li>
		Demonstrated technical competence and initiative.</li>
	<li>
		Good interpersonal skills.</li>
	<li>
		Ability to manage multiple assignments/tasks concurrently.</li>
	<li>
		SAP experience preferred</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1684', 'Packaging Development Engineer', '2014-07-07 00:00:00', 9, '$80,000 max + 10% Bonus + relocation assistance', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (295, 0, 9, '<p>
	<strong>SUMMARY</strong><br />
	The Plant Engineer will be part of the management team reporting to the Plant Manager. Under limited supervision, the Plant Engineer is responsible to provide factory and departmental leadership, particularly in operations/production and maintenance. The Plant Engineer possesses operational and technical equipment and process expertise. They manage and oversee all capital projects and maintenance teams, as well as manufacturing-related processes. The Plant Engineer plans, directs and coordinates the day-to-day operations of the maintenance department. They are responsible for ensuring and improving the performance, productivity, efficiency and budgetary compliance of the maintenance department and facility through the provision of effective methods, controls and strategies.<br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Lead, coach, and manage the performance of the maintenance teams in a fast-paced, dynamic environment.</li>
	<li>
		Serve as a resource and a technical expert for the plant in all disciplines of maintenance, equipment, processes and production. </li>
	<li>
		Utilize financial data to improve cost-effectiveness. Assist in the preparation of the plant budget and control of the operational budgets. Control raw material, full goods and parts inventory levels. Plan effective strategies for the financial well-being of the plant.</li>
	<li>
		Best Practices - Improve processes and policies in support of plant and organizational goals. Formulate and implement departmental and organizational policies and procedures to maximize output. Monitor adherence to rules, regulations and procedures.</li>
	<li>
		Coordinate, help plan and monitor the work of the maintenance and production departments. Monitor performance, discover root cause and implement improvements to eradicate variances. Ensure the quality of the products produced. Maximize the quality and quantity of employee productivity. Manage maintenance of process equipment and machinery. Provide technical support where necessary.</li>
	<li>
		Provides consultation, leadership, and quality control in the administration and interpretation of production, quality assurance systems, environmental, safety and maintenance policies; procedures, and documentation; develops and implements internal protocols and procedures in accordance with existing environmental law, regulations, policies and systems.</li>
	<li>
		Lead the planning and implementation of capital projects. Develop project plans, manage project budget, plan and schedule project timelines, track project deliverables using appropriate tools, provide direction and support to project team, constantly monitor and report on progress of the project to all stakeholders, implement and manage project changes and interventions to achieve desired project outputs and evaluations and assessment of project results.</li>
	<li>
		Manage the establishment, auditing and maintenance of standard operating procedures for all maintenance related activities and processes.</li>
	<li>
		Leverage and ensure full utilization of the CMMS(or like system) to manage all work orders, parts inventory, preventive maintenance and maintenance costing activities.</li>
	<li>
		Ensure and enforce teams are following through on meticulous housekeeping, audit ready, GMP&rsquo;s, 5&rsquo;s, and facility organization systems.</li>
	<li>
		Develop, assist, support and collaborate to maintain a continuous improvement culture within the entire facility, across all departments forging an innovative environment, which utilizes the data tools available to drive to root causes.</li>
	<li>
		Performs training needs analyses, as appropriate, and initiates, develops, and/or coordinates the implementation of specific training and development programs for management, staff, and operators.</li>
</ul>
<p>
	.<br />
	<strong>JOB REQUIREMENTS</strong></p>
<ul>
	<li>
		Bachelor&#39;s degree in Engineering; at least 10 years of experience that is directly related to the duties and responsibilities specified. </li>
	<li>
		Strong Consumer Package Goods background. Skill in organizing resources and establishing priorities. </li>
	<li>
		Ability to maintain confidentiality of records and information. </li>
	<li>
		Skill in examining and re-engineering operations and procedures, formulating policy, and developing and implementing new strategies and procedures. </li>
	<li>
		Knowledge of USDA, State, Federal regulations for a dairy manufacturing facility.</li>
	<li>
		Strong interpersonal and communication skills and the ability to work effectively with a wide range of constituencies in a diverse community. </li>
	<li>
		Ability to supervise and train staff, including organizing, prioritizing, and scheduling work assignments. </li>
	<li>
		Knowledge of computerized information systems used in quality assurance, maintenance and ERP applications. </li>
	<li>
		Knowledge and understanding of employment and union avoidance practices. </li>
	<li>
		Knowledge of budgeting cost estimating, and fiscal management principles and procedures. </li>
	<li>
		Ability to work all shifts including off shifts. </li>
</ul>
<p>
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', 'J1108', 'Plant Engineer', '2014-11-25 00:00:00', 8, '$100,000 + 15% Bonus + relocation assistance', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (255, 1, 7, '                                        <p>
	<strong>SUMMARY</strong><br />
	The Research and Development team plans, organizes and executes product innovations to support growth for the company. The Scientist role provides dynamic technical leadership to innovations from inception through to launch and supports other initiatives, operations and related activities. Scientists work with business partners to develop and launch beverage and food products to deliver consumer expectations while meeting company goals to be the best branded cooperative in the world.<br />
	<br />
	<strong>Principal Duties and Responsibilities:</strong></p>
<ul>
	<li>
		Develop and Launch Consumer Preferred Products</li>
	<li>
		Plan, design/develop, and commercialize new product and product optimizations. </li>
	<li>
		Conduct hands on bench development prototypes and pilot scale tests</li>
	<li>
		Ensure products achieve desired sensory and other consumer success criteria parameters</li>
	<li>
		Design formulas to ensure commercialized products are reproducible and robust enough to meet consumer expectations, quality and cost requirements, and supply of raw materials, with consideration to the impact on plant operations</li>
	<li>
		Ensure formulas adhere to required Regulatory guidelines </li>
	<li>
		Travel as needed to commercialize new or revised formulas at the manufacturing plants (15%)</li>
</ul>
<p>
	<strong>Provide Technical Leadership</strong></p>
<ul>
	<li>
		Serve as technical leader on cross functional project teams</li>
	<li>
		Effectively manage technical timelines and multiple projects with competing deadlines</li>
	<li>
		Conduct competitive and feasibility assessments</li>
	<li>
		Conduct costing exercises at multiple stages throughout the product development cycle</li>
</ul>
<p>
	<strong>Business Leadership / Communication <br />
	</strong></p>
<ul>
	<li>
		Present ideas and recommendation to senior management in various departments </li>
	<li>
		Flag issues and concerns with potential solutions in a timely manner </li>
	<li>
		Identify and share portfolio building ideas and contribute in ideation sessions&nbsp;</li>
</ul>
<p>
	<strong>Knowledge, Skill, and Ability Requirements:<br />
	</strong></p>
<ul>
	<li>
		Master degree or PhD required in food science, chemistry or chemical engineering. A minimum of five years of experience in the food and beverage with increasing years of experience for the Principal level. </li>
	<li>
		5-7 years of experience required for the Senior Scientist, 8-15 years of experience required for the Principal Scientist</li>
	<li>
		Creative thinking and a passion for Innovation </li>
	<li>
		Acute, sensory skills </li>
	<li>
		Broad understanding of the fundamentals of Food Science with the ability to remain up-to-date on new and emerging technologies and ability to apply to product design.</li>
	<li>
		Strong communication skills and ability to work with various levels of an organization. </li>
	<li>
		Highly organized, self-starter able to handle multiple tasks simultaneously, adapt well to change and able to prioritize multiple projects.</li>
	<li>
		Advanced PC skills: Windows, Excel, PowerPoint. Experience with Microsoft Project or similar software desired.</li>
</ul>
<p>
	<br />
	<br />
	<br />
	<br />
	<br />
	&nbsp;</p>

                                    ', '', '1678', 'Senior or Principal Scientist', '2014-06-24 00:00:00', 6, '$80 – 120,000 + 10% bonus + relocation pkg', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (294, 0, 3, '<p>
	<strong>SUMMARY</strong><br />
	The Plant Engineer will be part of the management team reporting to the Plant Manager. Under limited supervision, the Plant Engineer is responsible to provide factory and departmental leadership, particularly in operations/production and maintenance. The Plant Engineer possesses operational and technical equipment and process expertise. They manage and oversee all capital projects and maintenance teams, as well as manufacturing-related processes. The Plant Engineer plans, directs and coordinates the day-to-day operations of the maintenance department. They are responsible for ensuring and improving the performance, productivity, efficiency and budgetary compliance of the maintenance department and facility through the provision of effective methods, controls and strategies.<br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Lead, coach, and manage the performance of the maintenance teams in a fast-paced, dynamic environment.</li>
	<li>
		Serve as a resource and a technical expert for the plant in all disciplines of maintenance, equipment, processes and production. </li>
	<li>
		Utilize financial data to improve cost-effectiveness. Assist in the preparation of the plant budget and control of the operational budgets. Control raw material, full goods and parts inventory levels. Plan effective strategies for the financial well-being of the plant.</li>
	<li>
		Best Practices - Improve processes and policies in support of plant and organizational goals. Formulate and implement departmental and organizational policies and procedures to maximize output. Monitor adherence to rules, regulations and procedures.</li>
	<li>
		Coordinate, help plan and monitor the work of the maintenance and production departments. Monitor performance, discover root cause and implement improvements to eradicate variances. Ensure the quality of the products produced. Maximize the quality and quantity of employee productivity. Manage maintenance of process equipment and machinery. Provide technical support where necessary.</li>
	<li>
		Provides consultation, leadership, and quality control in the administration and interpretation of production, quality assurance systems, environmental, safety and maintenance policies; procedures, and documentation; develops and implements internal protocols and procedures in accordance with existing environmental law, regulations, policies and systems.</li>
	<li>
		Lead the planning and implementation of capital projects. Develop project plans, manage project budget, plan and schedule project timelines, track project deliverables using appropriate tools, provide direction and support to project team, constantly monitor and report on progress of the project to all stakeholders, implement and manage project changes and interventions to achieve desired project outputs and evaluations and assessment of project results.</li>
	<li>
		Manage the establishment, auditing and maintenance of standard operating procedures for all maintenance related activities and processes.</li>
	<li>
		Leverage and ensure full utilization of the CMMS(or like system) to manage all work orders, parts inventory, preventive maintenance and maintenance costing activities.</li>
	<li>
		Ensure and enforce teams are following through on meticulous housekeeping, audit ready, GMP&rsquo;s, 5&rsquo;s, and facility organization systems.</li>
	<li>
		Develop, assist, support and collaborate to maintain a continuous improvement culture within the entire facility, across all departments forging an innovative environment, which utilizes the data tools available to drive to root causes.</li>
	<li>
		Performs training needs analyses, as appropriate, and initiates, develops, and/or coordinates the implementation of specific training and development programs for management, staff, and operators.</li>
</ul>
<p>
	<strong>JOB REQUIREMENTS</strong></p>
<ul>
	<li>
		Bachelor&#39;s degree in Engineering; at least 10 years of experience that is directly related to the duties and responsibilities specified. </li>
	<li>
		Strong Consumer Package Goods background. Skill in organizing resources and establishing priorities. </li>
	<li>
		Ability to maintain confidentiality of records and information. </li>
	<li>
		Skill in examining and re-engineering operations and procedures, formulating policy, and developing and implementing new strategies and procedures. </li>
	<li>
		Knowledge of USDA, State, Federal regulations for a dairy manufacturing facility.</li>
	<li>
		Strong interpersonal and communication skills and the ability to work effectively with a wide range of constituencies in a diverse community. </li>
	<li>
		Ability to supervise and train staff, including organizing, prioritizing, and scheduling work assignments. </li>
	<li>
		Knowledge of computerized information systems used in quality assurance, maintenance and ERP applications. </li>
	<li>
		Knowledge and understanding of employment and union avoidance practices. </li>
	<li>
		Knowledge of budgeting cost estimating, and fiscal management principles and procedures. </li>
	<li>
		Ability to work all shifts including off shifts. </li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', 'J1108', 'Plant Engineer', '2014-11-25 00:00:00', 8, '$100,000 + 15% Bonus + relocation assistance', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (269, 1, 7, '<p>
	<strong>SUMMARY</strong></p>
<ul>
	<li>
		Responsible for the coordination and execution of product development efforts for Fresh Bakery initiatives. This includes new products, line extensions, cost savings and quality improvements.</li>
	<li>
		Responsible for ensuring that objectives, budget and timetables are met. This position is a hands-on personal contributor position.</li>
	<li>
		Responds resourcefully to new demands and challenges throughout the product &amp; commercialization process (including bench, pilot plant, and plant trials to create prototypes for consumer testing, etc.) and implements best practices.</li>
	<li>
		Demonstrate strong interpersonal skills and the ability to influence decisions within the cross functional team (Marketing, Operation Engineering, Manufacturing, QA, Process Development and Package Development) and externally with partners (suppliers, CSC COE&#39;s, R&amp;D houses, co-manufacturers).</li>
	<li>
		Expected to possess and demonstrate a solid understanding of food science, the business, operations and the commercialization processes.</li>
	<li>
		Approach should include a practical application and modification of existing products/new technologies or the identification and innovative creation of new and unique products which achieve business goals.</li>
	<li>
		Provides technical specifications and support to assure smooth rollouts of new products and processes during plant start-ups. This includes comprehensive product &amp; process documentation to enable smooth commercialization. The Senior Technologist must support an environment that fosters innovation and calculated risk taking.</li>
</ul>
<p>
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Leads the identification, assessment and validation of formulations from bench top through commercialization: manage all financial aspects of PD including ingredient costs for plant trials; insures all proper documentation</li>
	<li>
		Conducts and leads assessment and capability studies, product startups/commercialization and provides on-site support to Plant Operations for new products, productivity and quality programs</li>
	<li>
		Fosters an innovation culture by continually introducing new ideas and product concepts for new products, quality improvements, and productivity.</li>
	<li>
		Manages a team of two Food Technologists</li>
	<li>
		Ability to interact and communicate effectively with Senior Management as well as Plant Management</li>
	<li>
		Must be a good problem solver; able to identify, interpret and analyze the correct data, and provide detailed direction to development projects</li>
</ul>
<p>
	<br />
	<br />
	<br />
	<strong>Education Required:</strong> BS in Food Science or comparable technical degree; bakery experience preferred</p>
', '', '1689', 'Senior Technologist', '2014-08-14 00:00:00', 2, '$90-115K + 10% bonus + relocations assistance + visa transfer', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (296, 1, 3, '<p>
	<br />
	<strong>SUMMARY</strong><br />
	The Technical Processing Manager will be part of the management team reporting to the Plant Manager. Under limited supervision, the Technical Operations Manager is responsible to provide factory and departmental leadership, particularly in operations/production and maintenance. The Technical Operations Manager possesses operational and technical equipment and process expertise. They manage and oversee all capital projects, maintenance and production teams, as well as manufacturing-related processes. The Technical Operations Manager plans, directs and coordinates the day-to-day operations of the maintenance and production departments. They are responsible for ensuring and improving the performance, productivity, efficiency and budgetary compliance of the maintenance and production departments through the provision of effective methods, controls and strategies.<br />
	<strong><br />
	RESPONSIBILITIES</strong><br />
	1. Lead, coach, and manage the performance of the maintenance and production teams in a fast-paced, dynamic environment.<br />
	2. Serve as a resource and a technical expert for the plant in all disciplines of maintenance, equipment, and production. <br />
	3. Utilize financial data to improve cost-effectiveness. Assist in the preparation of the plant budget and control of the operational budgets. Control raw material, full goods and parts inventory levels. Plan effective strategies for the financial well-being of the plant.<br />
	4. Best Practices - Improve processes and policies in support of plant and organizational goals. Formulate and implement departmental, and organizational policies and procedures to maximize output. Monitor adherence to rules, regulations and procedures.<br />
	5. Coordinate, help plan and monitor the work of the maintenance and production departments. Monitor performance, discover root cause and implement improvements to eradicate variances. Ensure the quality of the products produced. Maximize the quality and quantity of employee productivity. Manage maintenance of equipment and machinery. Provide technical support where necessary.<br />
	6. Provides consultation, leadership, and quality control in the administration and interpretation of production, quality assurance systems, environmental, safety and maintenance policies; procedures, and documentation; develops and implements internal protocols and procedures in accordance with existing environmental law, regulations, policies and systems.<br />
	7. Lead the planning and implementation of capital projects. Develop project plans, manage project budget, plan and schedule project timelines, track project deliverables using appropriate tools, provide direction and support to project team, constantly monitor and report on progress of the project to all stakeholders, implement and manage project changes and interventions to achieve desired project outputs and evaluations and assessment of project results.<br />
	8. Manage the establishment, auditing and maintenance of standard operating procedures for all maintenance and production-related activities and processes.<br />
	9. Leverage and ensure full utilization of the CMMS(or like system) to manage all work orders, parts inventory, preventive maintenance and maintenance costing activities.<br />
	10. Ensure and enforce teams are following through on meticulous housekeeping, audit ready, GMP&rsquo;s, 5&rsquo;s, and facility organization systems.<br />
	11. Develop, assist, support and collaborate to maintain a continuous improvement culture within the entire facility, across all departments forging an innovative environment, which utilizes the data tools available to drive to root causes.<br />
	12. Performs training needs analyses, as appropriate, and initiates, develops, and/or coordinates the implementation of specific training and development programs for management, staff, and operators.<br />
	13. Oversees and coordinates the activities of the operations staff, to include assignment of work and special projects, monitoring workload and productivity, performance evaluation, and promotion of training and development; participates in the recruitment and hiring of subordinate staff as appropriate.<br />
	<br />
	<strong>QUALIFICATIONS</strong> <br />
	&bull; Bachelor&#39;s degree; at least 10 years of experience that is directly related to the duties and responsibilities specified. <br />
	&bull; Strong Consumer Package Goods background.<br />
	<br />
	<strong>EDUCATION AND/OR EXPERIENCE</strong><br />
	&bull; Skill in organizing resources and establishing priorities. <br />
	&bull; Ability to maintain confidentiality of records and information. <br />
	&bull; Skill in examining and re-engineering operations and procedures, formulating policy, and developing and implementing new strategies and procedures. <br />
	&bull; Knowledge of USDA, State, Federal regulations for a dairy manufacturing facility.<br />
	&bull; Strong interpersonal and communication skills and the ability to work effectively with a wide range of constituencies in a diverse community. <br />
	&bull; Ability to make administrative and procedural decisions and judgments on sensitive, confidential issues. <br />
	&bull; Ability to analyze and assess training and development needs. <br />
	&bull; Ability to supervise and train staff, including organizing, prioritizing, and scheduling work assignments. <br />
	&bull; Ability to communicate effectively, both orally and in writing. <br />
	&bull; Knowledge of computerized information systems used in quality assurance, maintenance and ERP applications. <br />
	&bull; Employee development and performance management skills. <br />
	&bull; Knowledge and understanding of federal and state environmental laws, regulations, procedures, and standards. <br />
	&bull; Ability to develop and deliver presentations. <br />
	&bull; Knowledge and understanding of employment and union avoidance practices. <br />
	&bull; Knowledge of budgeting cost estimating, and fiscal management principles and procedures. <br />
	&bull; Records maintenance skills. <br />
	&bull; Tolerance of ambiguity. <br />
	&bull; Ability to work all shifts including off shifts.&nbsp;</p>
', '', 'J1109', 'Technical Processing Manager', '2014-11-25 00:00:00', 8, '$100,000 + 15% Bonus', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (288, 0, 3, '<p>
	<strong>SUMMARY</strong><br />
	The person in this position will provide engineering and technical support for one or more production lines to insure the efficient production of a quality product. This position will focus on maintaining and improving production rates, efficiencies, yields, costs, and changeovers. Incumbent will insure capabilities, consistency and compliance in application and use of: engineering methods, production systems/procedures, standards and plant-wide continuous improvement activities. Incumbent will assure effective utilization of plant capital expenditures. Incumbent will support, implement, and maintain food safety and quality practices as required through SQF. The incumbent will be responsible for completing job duties in a manner that supports all plant safety, food safety, quality and environmental practices.<br />
	<br />
	<strong>JOB ACTIVITIES/DUTIES</strong></p>
<ul>
	<li>
		Incorporate safety, sanitation, good manufacturing practices, HACCP, and code requirements into daily operations</li>
	<li>
		Provide an engineering presence on the production floor to assure interaction with team members from all shifts and appropriate process engineering support and feedback for the teams</li>
	<li>
		Apply standard engineering techniques in the analysis of existing production lines from raw materials to finished products</li>
	<li>
		Continually improve the rates, efficiencies, yields, and costs of manufacturing systems </li>
	<li>
		Provide leadership for the operations of the production lines </li>
	<li>
		Initiate, implement, and cost justify modifications to production lines in response to equipment performance, line utilization, and product quality issues</li>
	<li>
		Interface with logistics, maintenance, engineering, and production to resolve equipment availability issues</li>
	<li>
		In conjunction with the Operation and Line Managers, maintain an up-to-date assessment of the production lines capabilities and restrictions</li>
	<li>
		Implement procedures and practices to reduce changeover durations and frequencies</li>
	<li>
		Provide technical resources to all company departments and be an active participant in cross-functional teams</li>
	<li>
		Provide training to production personnel</li>
	<li>
		Prepare reports, feasibility studies, expenditure requests, etc.</li>
	<li>
		Be an active member of the Operations and Technical Teams</li>
	<li>
		Be actively involved in the development and implementation of the long-term improvement programs such as LEAN and 6-sigma</li>
	<li>
		Pursue cost saving initiatives and support the Product Team in their efforts to reduce costs</li>
</ul>
<p>
	<strong>JOB REQUIREMENTS</strong></p>
<ul>
	<li>
		Education: Bachelor of Science degree in engineering</li>
	<li>
		Experience: Five or more years of engineering experience, preferably related to food processing in a plant environment</li>
	<li>
		Technical Skills: </li>
	<li>
		Experienced at analyzing process data and equipment performance data to improve product quality and optimize system throughput and reduce costs. Ability to write reports and develop specifications. Possess the necessary skills for continuous improvement; need to be proficient at mass balance and energy balance. Need to be knowledgeable of SPC, LEAN and Six Sigma.</li>
	<li>
		Management Skills: Must be skilled at working in a team environment. Need to demonstrate leadership ability. Possess strong coaching and communication skills.</li>
</ul>', '', '1704', 'Process Engineer', '2014-10-28 00:00:00', 8, '$90-100K + bonus + relocation assistance', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (289, 0, 9, '<p>
	<strong>SUMMARY</strong><br />
	The person in this position will provide engineering and technical support for one or more production lines to insure the efficient production of a quality product. This position will focus on maintaining and improving production rates, efficiencies, yields, costs, and changeovers. Incumbent will insure capabilities, consistency and compliance in application and use of: engineering methods, production systems/procedures, standards and plant-wide continuous improvement activities. Incumbent will assure effective utilization of plant capital expenditures. Incumbent will support, implement, and maintain food safety and quality practices as required through SQF. The incumbent will be responsible for completing job duties in a manner that supports all plant safety, food safety, quality and environmental practices.<br />
	<br />
	<strong>JOB ACTIVITIES/DUTIES</strong></p>
<ul>
	<li>
		Incorporate safety, sanitation, good manufacturing practices, HACCP, and code requirements into daily operations</li>
	<li>
		Provide an engineering presence on the production floor to assure interaction with team members from all shifts and appropriate process engineering support and feedback for the teams</li>
	<li>
		Apply standard engineering techniques in the analysis of existing production lines from raw materials to finished products</li>
	<li>
		Continually improve the rates, efficiencies, yields, and costs of manufacturing systems </li>
	<li>
		Provide leadership for the operations of the production lines </li>
	<li>
		Initiate, implement, and cost justify modifications to production lines in response to equipment performance, line utilization, and product quality issues</li>
	<li>
		Interface with logistics, maintenance, engineering, and production to resolve equipment availability issues</li>
	<li>
		In conjunction with the Operation and Line Managers, maintain an up-to-date assessment of the production lines capabilities and restrictions</li>
	<li>
		Implement procedures and practices to reduce changeover durations and frequencies</li>
	<li>
		Provide technical resources to all company departments and be an active participant in cross-functional teams</li>
	<li>
		Provide training to production personnel</li>
	<li>
		Prepare reports, feasibility studies, expenditure requests, etc.</li>
	<li>
		Be an active member of the Operations and Technical Teams</li>
	<li>
		Be actively involved in the development and implementation of the long-term improvement programs such as LEAN and 6-sigma</li>
	<li>
		Pursue cost saving initiatives and support the Product Team in their efforts to reduce costs</li>
</ul>
<p>
	<strong>JOB REQUIREMENTS</strong><br />
	<strong>Education:</strong> Bachelor of Science degree in engineering<br />
	<strong>Experience:</strong> Five or more years of engineering experience, preferably related to food processing in a plant environment<br />
	<strong>Technical Skills:</strong>Experienced at analyzing process data and equipment performance data to improve product quality and optimize system throughput and reduce costs. Ability to write reports and develop specifications. Possess the necessary skills for continuous improvement; need to be proficient at mass balance and energy balance. Need to be knowledgeable of SPC, LEAN and Six Sigma.</p>
<p>
	<strong>Management Skills:</strong> Must be skilled at working in a team environment. Need to demonstrate leadership ability. Possess strong coaching and communication skills.</p>', '', '1704', 'Process Engineer', '2014-10-28 00:00:00', 8, '$90-100K + bonus + relocation assistance', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (297, 1, 9, '<p>
	<strong>SUMMARY</strong><br />
	The Technical Processing Manager will be part of the management team reporting to the Plant Manager. Under limited supervision, the Technical Operations Manager is responsible to provide factory and departmental leadership, particularly in operations/production and maintenance. The Technical Operations Manager possesses operational and technical equipment and process expertise. They manage and oversee all capital projects, maintenance and production teams, as well as manufacturing-related processes. The Technical Operations Manager plans, directs and coordinates the day-to-day operations of the maintenance and production departments. They are responsible for ensuring and improving the performance, productivity, efficiency and budgetary compliance of the maintenance and production departments through the provision of effective methods, controls and strategies.<br />
	<br />
	<strong>RESPONSIBILITIES</strong><br />
	1. Lead, coach, and manage the performance of the maintenance and production teams in a fast-paced, dynamic environment.<br />
	2. Serve as a resource and a technical expert for the plant in all disciplines of maintenance, equipment, and production. <br />
	3. Utilize financial data to improve cost-effectiveness. Assist in the preparation of the plant budget and control of the operational budgets. Control raw material, full goods and parts inventory levels. Plan effective strategies for the financial well-being of the plant.<br />
	4. Best Practices - Improve processes and policies in support of plant and organizational goals. Formulate and implement departmental, and organizational policies and procedures to maximize output. Monitor adherence to rules, regulations and procedures.<br />
	5. Coordinate, help plan and monitor the work of the maintenance and production departments. Monitor performance, discover root cause and implement improvements to eradicate variances. Ensure the quality of the products produced. Maximize the quality and quantity of employee productivity. Manage maintenance of equipment and machinery. Provide technical support where necessary.<br />
	6. Provides consultation, leadership, and quality control in the administration and interpretation of production, quality assurance systems, environmental, safety and maintenance policies; procedures, and documentation; develops and implements internal protocols and procedures in accordance with existing environmental law, regulations, policies and systems.<br />
	7. Lead the planning and implementation of capital projects. Develop project plans, manage project budget, plan and schedule project timelines, track project deliverables using appropriate tools, provide direction and support to project team, constantly monitor and report on progress of the project to all stakeholders, implement and manage project changes and interventions to achieve desired project outputs and evaluations and assessment of project results.<br />
	8. Manage the establishment, auditing and maintenance of standard operating procedures for all maintenance and production-related activities and processes.<br />
	9. Leverage and ensure full utilization of the CMMS(or like system) to manage all work orders, parts inventory, preventive maintenance and maintenance costing activities.<br />
	10. Ensure and enforce teams are following through on meticulous housekeeping, audit ready, GMP&rsquo;s, 5&rsquo;s, and facility organization systems.<br />
	11. Develop, assist, support and collaborate to maintain a continuous improvement culture within the entire facility, across all departments forging an innovative environment, which utilizes the data tools available to drive to root causes.<br />
	12. Performs training needs analyses, as appropriate, and initiates, develops, and/or coordinates the implementation of specific training and development programs for management, staff, and operators.<br />
	13. Oversees and coordinates the activities of the operations staff, to include assignment of work and special projects, monitoring workload and productivity, performance evaluation, and promotion of training and development; participates in the recruitment and hiring of subordinate staff as appropriate.<br />
	<strong><br />
	QUALIFICATIONS </strong><br />
	&bull; Bachelor&#39;s degree; at least 10 years of experience that is directly related to the duties and responsibilities specified. <br />
	&bull; Strong Consumer Package Goods background.<br />
	<br />
	<strong>EDUCATION AND/OR EXPERIENCE</strong><br />
	&bull; Skill in organizing resources and establishing priorities. <br />
	&bull; Ability to maintain confidentiality of records and information. <br />
	&bull; Skill in examining and re-engineering operations and procedures, formulating policy, and developing and implementing new strategies and procedures. <br />
	&bull; Knowledge of USDA, State, Federal regulations for a dairy manufacturing facility.<br />
	&bull; Strong interpersonal and communication skills and the ability to work effectively with a wide range of constituencies in a diverse community. <br />
	&bull; Ability to make administrative and procedural decisions and judgments on sensitive, confidential issues. <br />
	&bull; Ability to analyze and assess training and development needs. <br />
	&bull; Ability to supervise and train staff, including organizing, prioritizing, and scheduling work assignments. <br />
	&bull; Ability to communicate effectively, both orally and in writing. <br />
	&bull; Knowledge of computerized information systems used in quality assurance, maintenance and ERP applications. <br />
	&bull; Employee development and performance management skills. <br />
	&bull; Knowledge and understanding of federal and state environmental laws, regulations, procedures, and standards. <br />
	&bull; Ability to develop and deliver presentations. <br />
	&bull; Knowledge and understanding of employment and union avoidance practices. <br />
	&bull; Knowledge of budgeting cost estimating, and fiscal management principles and procedures. <br />
	&bull; Records maintenance skills. <br />
	&bull; Tolerance of ambiguity. <br />
	&bull; Ability to work all shifts including off shifts.&nbsp;</p>
<p>
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', 'J1109', 'Technical Processing Manager', '2014-11-25 00:00:00', 8, '$100,000 + 15% Bonus', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (258, 0, 10, '<p>
	<strong><br />
	SUMMARY</strong><br />
	<br />
	The incumbent will lead, maintain and continuously improve the Sanitation program at all Company manufacturing locations. The individual will be responsible for ensuring that sanitation is integrated into the facility and the equipment design. He/she will develop and maintain company-wide sanitation practices, policies and procedures that comply with regulatory requirements and ensure hygienic food production. Full relocation assistance provided. <br />
	<strong><br />
	Principal Duties and Responsibilities:</strong></p>
<ul>
	<li>
		Perform annual sanitation assessments according to documented Quality Operating Standards at all facilities and assist the plants with compliance and improvements as needed.</li>
	<li>
		Lead the Sanitation Network team to ensure members are kept up to date and continuous improvement projects are shared and standardized</li>
	<li>
		Provide technical expertise on resolution of food safety or food quality issues related to sanitation; develop and implement corrective and preventative actions</li>
	<li>
		Develop and implement a Sanitary Design Program for existing, modified or new production lines.</li>
	<li>
		Work closely with Project Teams and Corporate Engineering to incorporate sanitary design principles. Beginning with the design phase and leading through all steps to ensure these principles are maintained through installation and operation of equipment</li>
	<li>
		Ensure adequate maintenance of ingredient water systems which include carbon filters and RO membranes, as well as maintenance of cooler water tunnels</li>
	<li>
		Oversee relationship with Chemical Supplier to ensure excellence in service and timely technical support.</li>
	<li>
		Direct the validation and verification activities for CIP systems</li>
	<li>
		Define and update corporate sanitation policies and standards</li>
	<li>
		Recommend and implement changes and improvements to sanitation practices</li>
	<li>
		Work with Research &amp; Development Engineering to assess novel sanitation technologies that improve food safety, quality, throughput and cost</li>
</ul>
<p>
	<br />
	<strong>Knowledge, Skill, and Ability Requirements:</strong></p>
<ul>
	<li>
		Master&rsquo;s in Chemical /Mechanical Engineering or Food Science</li>
	<li>
		8-15 years of directly related experience with 5+ years of sanitation experience in an FDA regulated environment</li>
	<li>
		Understanding of microbial control processes and experience with food safety mitigation strategies through risk assessment. </li>
	<li>
		Vast knowledge of CIP systems with 5+ years of experience in Sanitation in an FDA regulated environment.</li>
	<li>
		Hands-on leadership style. </li>
	<li>
		Travel up to 50 % may be required.</li>
</ul>
<p>
	<br />
	<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1680', 'Principal Scientist, Sanitation', '2014-06-24 00:00:00', 2, '$100 – 120,000 + 10% bonus + relocation pkg', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (259, 0, 11, '<p>
	<br />
	<strong>SUMMARY</strong><br />
	<br />
	The incumbent will lead, maintain and continuously improve the Sanitation program at all Company manufacturing locations. The individual will be responsible for ensuring that sanitation is integrated into the facility and the equipment design. He/she will develop and maintain company-wide sanitation practices, policies and procedures that comply with regulatory requirements and ensure hygienic food production. Full relocation assistance provided. <br />
	<br />
	<strong>Principal Duties and Responsibilities:</strong></p>
<ul>
	<li>
		Perform annual sanitation assessments according to documented Quality Operating Standards at all facilities and assist the plants with compliance and improvements as needed.</li>
	<li>
		Lead the Sanitation Network team to ensure members are kept up to date and continuous improvement projects are shared and standardized</li>
	<li>
		Provide technical expertise on resolution of food safety or food quality issues related to sanitation; develop and implement corrective and preventative actions</li>
	<li>
		Develop and implement a Sanitary Design Program for existing, modified or new production lines.</li>
	<li>
		Work closely with Project Teams and Corporate Engineering to incorporate sanitary design principles. Beginning with the design phase and leading through all steps to ensure these principles are maintained through installation and operation of equipment</li>
	<li>
		Ensure adequate maintenance of ingredient water systems which include carbon filters and RO membranes, as well as maintenance of cooler water tunnels</li>
	<li>
		Oversee relationship with Chemical Supplier to ensure excellence in service and timely technical support.</li>
	<li>
		Direct the validation and verification activities for CIP systems</li>
	<li>
		Define and update corporate sanitation policies and standards</li>
	<li>
		Recommend and implement changes and improvements to sanitation practices</li>
	<li>
		Work with Research &amp; Development Engineering to assess novel sanitation technologies that improve food safety, quality, throughput and cost</li>
</ul>
<p>
	<br />
	<strong>Knowledge, Skill, and Ability Requirements</strong>:</p>
<ul>
	<li>
		Master&rsquo;s in Chemical /Mechanical Engineering or Food Science</li>
	<li>
		8-15 years of directly related experience with 5+ years of sanitation experience in an FDA regulated environment</li>
	<li>
		Understanding of microbial control processes and experience with food safety mitigation strategies through risk assessment. </li>
	<li>
		Vast knowledge of CIP systems with 5+ years of experience in Sanitation in an FDA regulated environment.</li>
	<li>
		Hands-on leadership style. </li>
	<li>
		Travel up to 50 % may be required.</li>
</ul>
<p>
	<br />
	<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1680', 'Principal Scientist, Sanitation', '2014-06-24 00:00:00', 2, '$100 – 120,000 + 10% bonus + relocation pkg', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (257, 0, 9, '<p>
	<br />
	<strong>SUMMARY</strong><br />
	<br />
	The incumbent will lead, maintain and continuously improve the Sanitation program at all Company manufacturing locations. The individual will be responsible for ensuring that sanitation is integrated into the facility and the equipment design. He/she will develop and maintain company-wide sanitation practices, policies and procedures that comply with regulatory requirements and ensure hygienic food production. Full relocation assistance provided. <br />
	<strong><br />
	Principal Duties and Responsibilities:</strong></p>
<ul>
	<li>
		Perform annual sanitation assessments according to documented Quality Operating Standards at all facilities and assist the plants with compliance and improvements as needed.</li>
	<li>
		Lead the Sanitation Network team to ensure members are kept up to date and continuous improvement projects are shared and standardized</li>
	<li>
		Provide technical expertise on resolution of food safety or food quality issues related to sanitation; develop and implement corrective and preventative actions</li>
	<li>
		Develop and implement a Sanitary Design Program for existing, modified or new production lines.</li>
	<li>
		Work closely with Project Teams and Corporate Engineering to incorporate sanitary design principles. Beginning with the design phase and leading through all steps to ensure these principles are maintained through installation and operation of equipment</li>
	<li>
		Ensure adequate maintenance of ingredient water systems which include carbon filters and RO membranes, as well as maintenance of cooler water tunnels</li>
	<li>
		Oversee relationship with Chemical Supplier to ensure excellence in service and timely technical support.</li>
	<li>
		Direct the validation and verification activities for CIP systems</li>
	<li>
		Define and update corporate sanitation policies and standards</li>
	<li>
		Recommend and implement changes and improvements to sanitation practices</li>
	<li>
		Work with Research &amp; Development Engineering to assess novel sanitation technologies that improve food safety, quality, throughput and cost</li>
</ul>
<p>
	<strong><br />
	Knowledge, Skill, and Ability Requirements</strong>:</p>
<ul>
	<li>
		Master&rsquo;s in Chemical /Mechanical Engineering or Food Science</li>
	<li>
		8-15 years of directly related experience with 5+ years of sanitation experience in an FDA regulated environment</li>
	<li>
		Understanding of microbial control processes and experience with food safety mitigation strategies through risk assessment. </li>
	<li>
		Vast knowledge of CIP systems with 5+ years of experience in Sanitation in an FDA regulated environment.</li>
	<li>
		Hands-on leadership style. </li>
	<li>
		Travel up to 50 % may be required.</li>
</ul>
<p>
	<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1680', 'Principal Scientist, Sanitation', '2014-06-24 00:00:00', 2, '$100 – 120,000 + 10% bonus + relocation pkg', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (277, 0, 3, '<p>
	<br />
	<strong>SUMMARY</strong><br />
	Principal Engineer/Scientist (Thermal Process Authority) will be focused on insuring the safety and quality of shelf-stable foods via aseptic, retort, and hot-fill methods as a Thermal Processing Authority for Company. The position will collaborate cross-functionally to provide thermal processing solutions to help deliver innovation and renovation projects. In some instances, these projects may involve novel processing technology requiring advanced capabilities in protocol development, experimental design, data analysis and mathematical modeling. In addition, the position will drive knowledge transfer to stakeholders in baby food factories globally in the form of technical assistance in response to factory-based requests, as well as proactive development of thermal processing standards and training delivery to build factory-level competency. Position will also play a pivotal role in building thermal processing as a functional discipline within R&amp;D and participate in internal networks and professional affiliations to achieve recognition as a center of excellence<br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Establish aseptic, retort and hot-fill thermal processes in support of innovation, renovation, and technical assistance. Coordinate or conduct heat penetrations, temperature distributions, and microbiological challenge studies as warranted. To include risk assessments that integrates ingredients, process and packaging, as well as microbiological and controls validation and critical control operational requirements. Conduct deviation analyses and recommend product dispositions as needed</li>
	<li>
		Maintain thermal processing functional capabilities. To include awareness of and compliance with all applicable regulatory and internal requirements related to thermal processing. To include maintenance of all documentation and records. To include purchase and maintenance of equipment, instruments and software needed to collect and analyze data, and to calculate or model thermal processes. Perform periodic assessments or internal audits to ensure robustness of the work processes/systems and drive continuous improvement</li>
	<li>
		Provide technical assistance to factories to enhance technical competency, optimize thermal processes, and resolve issues. Develop and deliver thermal processing standards and training to enhance factory-level capabilities. To include proactive sharing of Company and industry best practices. Respond well to both formal and informal requests for technical assistance</li>
	<li>
		Proactively lead and build R&amp;D mastership in thermal processing by setting direction and priorities for the function, and by collaborating with key internal and external stakeholders. To include participation on corporate Food Safety and Management of Change committees.</li>
	<li>
		Employee will be responsible to follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies and procedures as pertains to role</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong></p>
<ul>
	<li>
		Engineering (prefer food, chemical, or mechanical), Food Science or closely related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- B.S. degree with 12+ years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- M.S. degree with 10+ years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;- Ph.D. degree with 8+ years of relevant experience</p>
<ul>
	<li>
		Advanced degree preferred</li>
	<li>
		Experience must include roles in thermal processing</li>
	<li>
		Advanced proficiency in English language</li>
</ul>
<p>
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Expertise in thermal processing - aseptic, retort, and hot-fill</li>
	<li>
		Fluency with applicable regulations and establishment of thermal processes</li>
	<li>
		Broad knowledge of food processing, food safety, and quality management systems including Good Manufacturing Practices (GMPs)</li>
	<li>
		Demonstrated competence in fundamentals of project management and team leadership</li>
	<li>
		Ability to design experiments and apply mathematical models to thermal processing</li>
	<li>
		Competence with a variety of analytical software such as Ellab, DataTrace, Calsoft, NumeriCal, MatLab, Ansys, Labview, Comsol</li>
</ul>
', '', '1700', 'Principal Engineer - Thermal Processing', '2014-10-14 00:00:00', 8, '$110 - $125,000 + 20% Bonus + relocation assistance + visa transfer', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (278, 0, 6, '<p>
	<br />
	<strong>SUMMARY</strong><br />
	Principal Engineer/Scientist (Thermal Process Authority) will be focused on insuring the safety and quality of shelf-stable foods via aseptic, retort, and hot-fill methods as a Thermal Processing Authority for Company. The position will collaborate cross-functionally to provide thermal processing solutions to help deliver innovation and renovation projects. In some instances, these projects may involve novel processing technology requiring advanced capabilities in protocol development, experimental design, data analysis and mathematical modeling. In addition, the position will drive knowledge transfer to stakeholders in baby food factories globally in the form of technical assistance in response to factory-based requests, as well as proactive development of thermal processing standards and training delivery to build factory-level competency. Position will also play a pivotal role in building thermal processing as a functional discipline within R&amp;D and participate in internal networks and professional affiliations to achieve recognition as a center of excellence<br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Establish aseptic, retort and hot-fill thermal processes in support of innovation, renovation, and technical assistance. Coordinate or conduct heat penetrations, temperature distributions, and microbiological challenge studies as warranted. To include risk assessments that integrates ingredients, process and packaging, as well as microbiological and controls validation and critical control operational requirements. Conduct deviation analyses and recommend product dispositions as needed</li>
	<li>
		Maintain thermal processing functional capabilities. To include awareness of and compliance with all applicable regulatory and internal requirements related to thermal processing. To include maintenance of all documentation and records. To include purchase and maintenance of equipment, instruments and software needed to collect and analyze data, and to calculate or model thermal processes. Perform periodic assessments or internal audits to ensure robustness of the work processes/systems and drive continuous improvement</li>
	<li>
		Provide technical assistance to factories to enhance technical competency, optimize thermal processes, and resolve issues. Develop and deliver thermal processing standards and training to enhance factory-level capabilities. To include proactive sharing of Company and industry best practices. Respond well to both formal and informal requests for technical assistance</li>
	<li>
		Proactively lead and build R&amp;D mastership in thermal processing by setting direction and priorities for the function, and by collaborating with key internal and external stakeholders. To include participation on corporate Food Safety and Management of Change committees.</li>
	<li>
		Employee will be responsible to follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies and procedures as pertains to role</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		Engineering (prefer food, chemical, or mechanical), Food Science or closely related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - B.S. degree with 12+ years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - M.S. degree with 10+ years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Ph.D. degree with 8+ years of relevant experience</p>
<ul>
	<li>
		Advanced degree preferred</li>
	<li>
		Experience must include roles in thermal processing</li>
	<li>
		Advanced proficiency in English language</li>
</ul>
<p>
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Expertise in thermal processing - aseptic, retort, and hot-fill</li>
	<li>
		Fluency with applicable regulations and establishment of thermal processes</li>
	<li>
		Broad knowledge of food processing, food safety, and quality management systems including Good Manufacturing Practices (GMPs)</li>
	<li>
		Demonstrated competence in fundamentals of project management and team leadership</li>
	<li>
		Ability to design experiments and apply mathematical models to thermal processing</li>
	<li>
		Competence with a variety of analytical software such as Ellab, DataTrace, Calsoft, NumeriCal, MatLab, Ansys, Labview, Comsol</li>
</ul>
', '', '1700', 'Principal Engineer - Thermal Processing', '2014-10-14 00:00:00', 8, '$110 - $125,000 + 20% Bonus + relocation assistance + visa transfer', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (279, 0, 10, '<p>
	<strong>SUMMARY</strong><br />
	Principal Engineer/Scientist (Thermal Process Authority) will be focused on insuring the safety and quality of shelf-stable foods via aseptic, retort, and hot-fill methods as a Thermal Processing Authority for Company. The position will collaborate cross-functionally to provide thermal processing solutions to help deliver innovation and renovation projects. In some instances, these projects may involve novel processing technology requiring advanced capabilities in protocol development, experimental design, data analysis and mathematical modeling. In addition, the position will drive knowledge transfer to stakeholders in baby food factories globally in the form of technical assistance in response to factory-based requests, as well as proactive development of thermal processing standards and training delivery to build factory-level competency. Position will also play a pivotal role in building thermal processing as a functional discipline within R&amp;D and participate in internal networks and professional affiliations to achieve recognition as a center of excellence<br />
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Establish aseptic, retort and hot-fill thermal processes in support of innovation, renovation, and technical assistance. Coordinate or conduct heat penetrations, temperature distributions, and microbiological challenge studies as warranted. To include risk assessments that integrates ingredients, process and packaging, as well as microbiological and controls validation and critical control operational requirements. Conduct deviation analyses and recommend product dispositions as needed</li>
	<li>
		Maintain thermal processing functional capabilities. To include awareness of and compliance with all applicable regulatory and internal requirements related to thermal processing. To include maintenance of all documentation and records. To include purchase and maintenance of equipment, instruments and software needed to collect and analyze data, and to calculate or model thermal processes. Perform periodic assessments or internal audits to ensure robustness of the work processes/systems and drive continuous improvement</li>
	<li>
		Provide technical assistance to factories to enhance technical competency, optimize thermal processes, and resolve issues. Develop and deliver thermal processing standards and training to enhance factory-level capabilities. To include proactive sharing of Company and industry best practices. Respond well to both formal and informal requests for technical assistance</li>
	<li>
		Proactively lead and build R&amp;D mastership in thermal processing by setting direction and priorities for the function, and by collaborating with key internal and external stakeholders. To include participation on corporate Food Safety and Management of Change committees.</li>
	<li>
		Employee will be responsible to follow and uphold all Food Safety, Food Quality, Occupational Safety, Health and Environment policies and procedures as pertains to role</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		Engineering (prefer food, chemical, or mechanical), Food Science or closely related discipline</li>
</ul>
<p>
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - B.S. degree with 12+ years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - M.S. degree with 10+ years of relevant experience<br />
	&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; - Ph.D. degree with 8+ years of relevant experience</p>
<ul>
	<li>
		Advanced degree preferred</li>
	<li>
		Experience must include roles in thermal processing</li>
	<li>
		Advanced proficiency in English language</li>
</ul>
<p>
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Expertise in thermal processing - aseptic, retort, and hot-fill</li>
	<li>
		Fluency with applicable regulations and establishment of thermal processes</li>
	<li>
		Broad knowledge of food processing, food safety, and quality management systems including Good Manufacturing Practices (GMPs)</li>
	<li>
		Demonstrated competence in fundamentals of project management and team leadership</li>
	<li>
		Ability to design experiments and apply mathematical models to thermal processing</li>
	<li>
		Competence with a variety of analytical software such as Ellab, DataTrace, Calsoft, NumeriCal, MatLab, Ansys, Labview, Comsol</li>
</ul>
', '', '1700', 'Principal Engineer - Thermal Processing', '2014-10-14 00:00:00', 8, ' $110 - $125,000 + 20% Bonus + relocation assistance + visa transfer', true, true);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (290, 0, 3, '<p>
	<strong>SUMMARY</strong><br />
	Provide engineering and technical support to drive packaging operations performance. Identifies and removes barriers to enable attainment of production rates, consistent quality, and efficient changeovers. Develops and executes continuous improvement plan for packaging operations. <br />
	<strong><br />
	JOB ACTIVITIES/DUTIES</strong></p>
<ul>
	<li>
		Support, implement, and maintain food safety practices as required through SQF </li>
	<li>
		Responsible for completing job duties in a manner that supports all plant safety, food safety, quality and environmental practices </li>
	<li>
		Focuses on metrics attainment (OEE / rate / yields / schedule attainment). Aides packaging techs in troubleshooting. Drives equipment simplification and set up repeatability to optimize changeover efficiency. Collaborates with maintenance on identifying equipment reliability issues and developing mitigation strategies to improve reliability. Identifies and implements improvements to ensure process consistency and capability </li>
	<li>
		Main driver of continuous improvement for packaging operations. Analyzes operational data to identify and prioritize chronic barriers to performance for targeted improvement. Coordinates and collaborates with counterparts at other manufacturing sites to share knowledge and best practices in order to ensure multi-site benefits </li>
	<li>
		Understands rate capabilities for packaging operations, identifies bottleneck operations preventing rate attainment and implements improvements. Identifies gaps and develops strategy for rate increases to meet business growth needs. Able to identify barriers to efficient workflow and capacity utilization and to develop creative solutions to overcome them</li>
	<li>
		Collaborates with packaging technicians and operators to define and sustain optimal equipment set-ups (operating parameters, sequences, set points, etc.)</li>
	<li>
		Responds to new packaging requests. Investigates and determines production feasibility. Identifies tools, equipment and methods to produce new products and support new product start-ups and integration </li>
	<li>
		Collaborates with packaging technology engineers on the development, evaluation, and integration of new packaging designs and enhancements to meet strategic business plans and customer requirements</li>
	<li>
		Maintains updated process control &amp; operational documentation </li>
	<li>
		Perform any other function as directed to meet company and business needs. </li>
</ul>
<p>
	<br />
	<strong>JOB REQUIREMENTS </strong><br />
	<strong>General </strong></p>
<ul>
	<li>
		Must be able to read and understand English </li>
	<li>
		Willingness to work nights, holidays, and weekends as needed should business conditions require it</li>
</ul>
<p>
	<strong>Education/Experience </strong></p>
<ul>
	<li>
		Bachelor of Science degree in engineering </li>
	<li>
		5 or more years of experience in packaging operations encompassing vertical and horizontal form fill and seal machines, cartoning, case erectors, packers, and sealers, robotic operations, and all forms of package conveying. High speed pouching and blending a plus. Experience in a food processing environment preferred</li>
</ul>
<p>
	<strong>Skills and Abilities</strong></p>
<ul>
	<li>
		Strong communication and coaching skills. Ability to work closely with peers and internal customers to share responsibility and solve problems </li>
	<li>
		Strong written and oral communication and facilitation skills. Ability to write reports and develop specifications. Knowledgeable in the use of personal computers </li>
	<li>
		Skilled at working in a team environment. Excellent listener, empathetic and compassionate to individuals concerns and needs </li>
	<li>
		Experienced at analyzing process data and equipment performance data to improve product quality and optimize system throughput and reduce costs </li>
	<li>
		Experienced at managing contractors, maintenance personnel, and production personnel. Experienced at training maintenance and production personnel. Possess a working knowledge of SPC </li>
	<li>
		Creative and change-oriented. Experienced and adept at continuous improvement methodology </li>
	<li>
		Self-starter, operates independently or with minimal direction, and navigates ambiguous situations effectively</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1705', 'Manufacturing Engineer', '2014-10-28 00:00:00', 4, ': $90-100K + bonus + relocation assistance ', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (298, 0, 3, '<p>
	<strong>SUMMARY</strong><br />
	The Processing Manager will be part of the management team reporting to the Technical Operations Manager. Under limited supervision, the Processing Manager is responsible for overseeing the daily operations of the Plant product Processing Department. The Processing Manager oversees the supervisory staff, and implements operations programs, and policies. <br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Reviews daily inventories and the daily production plan with the Material/Scheduling Manager. Develops production and efficiency reports. Coordinates schedule demands with staff and product movement personnel.</li>
	<li>
		Manages the following product processing areas: Separators, RO Milk processing, Membrane processing, Pre and Post Batching, VTIS processing, HTST Bulk/Yogurt Processing, Culture Tanks, and CIP systems and sanitation of processing area.</li>
	<li>
		Reviews plant quality through the review of microbiology test results, investigation and eradication of high or repeat area or product counts.</li>
	<li>
		Reviews product and equipment specifications to ensure conformance to product specifications are realized. </li>
	<li>
		Reviews all nonconforming product or ingredients with Technical Operations Manager and Quality Assurance Manager.</li>
	<li>
		Monitors processing department throughout shift and assure employee compliance with GMP&rsquo;s, sanitation and safety. Review daily audit reports.</li>
	<li>
		Monitor wastewater facility throughout shift and assure proper completion of daily reports as required by permit and management.</li>
	<li>
		Responsible for equipment and employee performance (efficiencies, losses and waste) in these areas.</li>
	<li>
		Responsible for teams and people in these areas.</li>
	<li>
		Review CIP records daily and audit employee&rsquo;s sampling techniques to assure proper sanitation standards are maintained. Provide employee training and coaching in GMP and HACCP as needed.</li>
	<li>
		Review supply inventories and order supplies within budget allocations.</li>
	<li>
		Verify that all plant processing equipment is in good working condition and all preventative maintenance is being performed on a scheduled basis by reviewing Preventive Maintenance schedules with the Maintenance Manager. Review all work orders and daily maintenance reports.</li>
	<li>
		Manage processing departments budget within financial guidance.</li>
</ul>
<p>
	<strong>SUPERVISORY RESPONSIBILITIES</strong></p>
<ul>
	<li>
		This position has management and employee supervisory responsibilities for the entire Coopersville Processing Department and facility.</li>
	<li>
		Review on the job training reviews.</li>
	<li>
		Coordinate on-the-job training.</li>
	<li>
		Oversee adherence to company policies and procedures.</li>
	<li>
		Oversee scheduling of management, employees, and temporary labor.</li>
	<li>
		Have the responsibility of reviewing timesheets, overtime and approve payroll.</li>
</ul>
<p>
	<strong>QUALIFICATIONS </strong></p>
<ul>
	<li>
		Must have the ability to trouble shoot problems and be persistent until a solution is found.</li>
	<li>
		Must work in a safe manner and follow all safety procedures including use of safety equipment.</li>
	<li>
		Must be willing to ask for assistance when the process is unclear.</li>
	<li>
		Ability to work all shifts including off shifts.</li>
</ul>
<p>
	<strong>EDUCATION AND/OR EXPERIENCE</strong></p>
<ul>
	<li>
		A Bachelor&rsquo;s degree in Business, Dairy or Food Science or six years of experience in a Plant leadership role in a Dairy or Food Manufacturing facility is strongly desired.</li>
	<li>
		College level verbal and written communication skills. Must be able to communicate with senior management on a daily basis.</li>
	<li>
		Leadership, team development, coaching, and / or teaching experience.</li>
	<li>
		Good math and statistical skills.</li>
	<li>
		Excellent computer skills for data input, report writing, program tracking.</li>
	<li>
		Excellent organizational and follow through skills.</li>
</ul>
<p>
	<strong>Language Skills</strong><br />
	English is desired as the spoken language. Other languages are definite asset. A well-modulated tonal volume is required with excellent diction skills needed.<br />
	<strong><br />
	WORK ENVIRONMENT</strong><br />
	Employees will be subject to temperatures associated with an air-cooled room to temperatures in excess of 100 degrees Fahrenheit while working in proximity to dryer and to wet environments (hot or cold) during cleaning-in-place (CIP) operations. May be required to enter confined spaces to perform equipment inspection<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', 'J1111', 'Processing Manager', '2014-11-25 00:00:00', 8, '$100,000 + 15% Bonus + relocation pckg', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (252, 0, 3, '<p>
	<strong>SUMMARY<br />
	</strong></p>
<ul>
	<li>
		The identification and/or innovative creation of new &amp; unique processes and/or processing equipment to achieve business goals of commercializing new products and product forms.</li>
	<li>
		Innovative, practical application and modification of existing technologies to achieve business goals of commercializing new products or improving existing products.</li>
	<li>
		Early process assessment and the development of analytical methods to gain insight into effects of processing parameters in order to identify and optimize processes for specific product scope.</li>
	<li>
		Providing process specifications and support to assure smooth rollouts of new equipment and processes into operations.</li>
	<li>
		Provision of comprehensive process documentation to enable smooth commercialization and training of plant personnel.</li>
</ul>
<p>
	<strong>Principal Accountabilities</strong></p>
<ul>
	<li>
		Identification, assessment, validation and documentation of process technology to deliver identified new products, quality improvements, and enablers. </li>
	<li>
		Conducts assessment and capability studies and supervises new product startups/commercialization and provides on-site support to Project Engineers and Plant Operations.</li>
	<li>
		Provides expertise in developing new and innovative manufacturing processes.</li>
	<li>
		Provides on-site and remote technical services, observing processes, pinpointing and fixing problems to assure consistent quality and capacity.</li>
	<li>
		Creates, designs, supervises the development of new process/equipment and experimental protocols required to validate product concepts and prototypes.</li>
	<li>
		Independently directs the activities of outside vendors and fabricators in the development and fabrication of new equipment, and managing the testing of such equipment both at the vendor facility and production plants.</li>
</ul>
<p>
	<strong>Job Complexity:</strong></p>
<ul>
	<li>
		Requires the ability to interact and communicate effectively with Sr. R&amp;D Management, Product Development, QA, Plant Management and line operators. The Process Engineer must be a good problem solver, must be able to identify, interpret and analyze the correct data, and provide detailed directions to development projects. </li>
	<li>
		Maintains active knowledge and understanding in areas beyond Process Development, including Product and Package Development, QA, Project Engineering, and a thorough understanding of Marketing needs and financial hurdles. </li>
	<li>
		Sustains a high level of competence and professionalism in a dynamic business environment i.e.: driving team alignment on technical solutions</li>
</ul>
<p>
	<strong>Education Required</strong>: BS in Engineering or related fields; 5-15 years relevant experience<br />
	<br />
	&nbsp;</p>
', '', '1677', 'Senior Engineer', '2014-06-19 00:00:00', 2, '$90-110K + bonus + relocation assistance + visa transfer', true, false);
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (253, 0, 6, '<p>
	<strong>SUMMARY</strong></p>
<ul>
	<li>
		The identification and/or innovative creation of new &amp; unique processes and/or processing equipment to achieve business goals of commercializing new products and product forms.</li>
	<li>
		Innovative, practical application and modification of existing technologies to achieve business goals of commercializing new products or improving existing products.</li>
	<li>
		Early process assessment and the development of analytical methods to gain insight into effects of processing parameters in order to identify and optimize processes for specific product scope.</li>
	<li>
		Providing process specifications and support to assure smooth rollouts of new equipment and processes into operations.</li>
	<li>
		Provision of comprehensive process documentation to enable smooth commercialization and training of plant personnel.</li>
</ul>
<p>
	<br />
	<strong>Principal Accountabilities</strong></p>
<ul>
	<li>
		Identification, assessment, validation and documentation of process technology to deliver identified new products, quality improvements, and enablers. </li>
	<li>
		Conducts assessment and capability studies and supervises new product startups/commercialization and provides on-site support to Project Engineers and Plant Operations.</li>
	<li>
		Provides expertise in developing new and innovative manufacturing processes.</li>
	<li>
		Provides on-site and remote technical services, observing processes, pinpointing and fixing problems to assure consistent quality and capacity.</li>
	<li>
		Creates, designs, supervises the development of new process/equipment and experimental protocols required to validate product concepts and prototypes.</li>
	<li>
		Independently directs the activities of outside vendors and fabricators in the development and fabrication of new equipment, and managing the testing of such equipment both at the vendor facility and production plants.</li>
</ul>
<p>
	<strong>Job Complexity:</strong></p>
<ul>
	<li>
		Requires the ability to interact and communicate effectively with Sr. R&amp;D Management, Product Development, QA, Plant Management and line operators. The Process Engineer must be a good problem solver, must be able to identify, interpret and analyze the correct data, and provide detailed directions to development projects. </li>
	<li>
		Maintains active knowledge and understanding in areas beyond Process Development, including Product and Package Development, QA, Project Engineering, and a thorough understanding of Marketing needs and financial hurdles. </li>
	<li>
		Sustains a high level of competence and professionalism in a dynamic business environment i.e.: driving team alignment on technical solutions</li>
</ul>
<p>
	<strong>Education Required:</strong> BS in Engineering or related fields; 5-15 years relevant experience<br />
	<br />
	&nbsp;</p>
', '', '1677', 'Senior Engineer', '2014-06-19 00:00:00', 2, '$90-110K + bonus + relocation assistance + visa transfer', true, true);
DROP TABLE jsec_permission;
CREATE TABLE jsec_permission ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, possible_actions varchar(255) NOT NULL, type varchar(255) NOT NULL, PRIMARY KEY (id), CONSTRAINT type UNIQUE (type) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE jsec_role;
CREATE TABLE jsec_role ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, name varchar(255) NOT NULL, PRIMARY KEY (id), CONSTRAINT name UNIQUE (name) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into jsec_role (id, version, name) values (1, 0, 'Administrator');
DROP TABLE jsec_role_permission_rel;
CREATE TABLE jsec_role_permission_rel ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, actions varchar(255) NOT NULL, permission_id bigint NOT NULL, role_id bigint NOT NULL, target varchar(255) NOT NULL, PRIMARY KEY (id), INDEX FK6DF5807ACE88AE61 (role_id), INDEX FK6DF5807AF1EDA81 (permission_id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE jsec_user;
CREATE TABLE jsec_user ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, password_hash varchar(255) NOT NULL, username varchar(255) NOT NULL, PRIMARY KEY (id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into jsec_user (id, version, password_hash, username) values (1, 0, '6117e45ab57f8660d866a21ca5e9d2c31dbc1945', 'admin');
insert into jsec_user (id, version, password_hash, username) values (2, 0, '6117e45ab57f8660d866a21ca5e9d2c31dbc1945', 'admin');
DROP TABLE jsec_user_permission_rel;
CREATE TABLE jsec_user_permission_rel ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, actions varchar(255) NOT NULL, permission_id bigint NOT NULL, target varchar(255), user_id bigint NOT NULL, PRIMARY KEY (id), INDEX FK28FF6085F1EDA81 (permission_id), INDEX FK28FF608573B37241 (user_id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE jsec_user_role_rel;
CREATE TABLE jsec_user_role_rel ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, role_id bigint NOT NULL, user_id bigint NOT NULL, PRIMARY KEY (id), INDEX FK238F64ACCE88AE61 (role_id), INDEX FK238F64AC73B37241 (user_id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into jsec_user_role_rel (id, version, role_id, user_id) values (1, 0, 1, 1);
DROP TABLE region;
CREATE TABLE region ( id bigint NOT NULL AUTO_INCREMENT, version bigint NOT NULL, name varchar(255) NOT NULL, PRIMARY KEY (id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into region (id, version, name) values (1, 0, 'International');
insert into region (id, version, name) values (2, 0, 'Northeast');
insert into region (id, version, name) values (3, 0, 'Northwest');
insert into region (id, version, name) values (4, 0, 'Southeast');
insert into region (id, version, name) values (5, 0, 'Southwest');
insert into region (id, version, name) values (6, 0, 'East Coast');
insert into region (id, version, name) values (7, 0, 'West Coast');
insert into region (id, version, name) values (8, 0, 'Upper Midwest');
insert into region (id, version, name) values (9, 0, 'Midwest');
insert into region (id, version, name) values (10, 0, 'Lower Midwest');
insert into region (id, version, name) values (22, 0, 'Flexible');
insert into region (id, version, name) values (21, 0, 'Rocky Mountains');
insert into region (id, version, name) values (23, 0, 'South');
