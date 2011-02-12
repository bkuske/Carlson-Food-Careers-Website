DROP TABLE DATABASECHANGELOG;
CREATE TABLE DATABASECHANGELOG ( ID VARCHAR(63) NOT NULL, AUTHOR VARCHAR(63) NOT NULL, FILENAME VARCHAR(200) NOT NULL, DATEEXECUTED DATETIME NOT NULL, MD5SUM VARCHAR(32), DESCRIPTION VARCHAR(255), COMMENTS VARCHAR(255), TAG VARCHAR(255), LIQUIBASE VARCHAR(10), PRIMARY KEY (ID, AUTHOR, FILENAME) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, MD5SUM, DESCRIPTION, COMMENTS, TAG, LIQUIBASE) values ('ChangeAdminPasswordToSomethingMemorable', 'Colin', 'FoodCareers-autobase', '2009-12-10 10:15:18', '5e1f59d4f7e33b3bcdb510e984775f73', 'Update Data', '', null, '1.9.3');
insert into DATABASECHANGELOG (ID, AUTHOR, FILENAME, DATEEXECUTED, MD5SUM, DESCRIPTION, COMMENTS, TAG, LIQUIBASE) values ('AddHideFromHomePageColumnToJobOpportunity', 'Colin', 'FoodCareers-autobase', '2009-12-10 10:15:18', 'eb685368f20f8dd693d18315c2bbf6', 'Add Column, Update Data', '', null, '1.9.3');
DROP TABLE DATABASECHANGELOGLOCK;
CREATE TABLE DATABASECHANGELOGLOCK ( ID INT NOT NULL, LOCKED TINYINT(1) NOT NULL, LOCKGRANTED DATETIME, LOCKEDBY VARCHAR(255), PRIMARY KEY (ID) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into DATABASECHANGELOGLOCK (ID, LOCKED, LOCKGRANTED, LOCKEDBY) values (1, '0', null, null);
DROP TABLE job_category;
CREATE TABLE job_category ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY (id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
DROP TABLE job_opportunity;
CREATE TABLE job_opportunity ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, category_id BIGINT NOT NULL, description LONGTEXT NOT NULL, desired_skills VARCHAR(255) NOT NULL, job_code VARCHAR(255) NOT NULL, position_title VARCHAR(255) NOT NULL, posted_date DATETIME NOT NULL, region_id BIGINT NOT NULL, salary_range VARCHAR(255) NOT NULL, visible BIT NOT NULL, hide_from_home_page BIT, PRIMARY KEY (id), INDEX FK142D511AAC03B7 (category_id), INDEX FK142D51961B895A (region_id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (1, 4, 3, '<p>
	<strong>Experience Required: </strong>&nbsp;5 to 7 years of related experience with a consumer packaged goods background<br />
	<br />
	<strong>Education Required: </strong>&nbsp;B.S. Chemical Engineering, Food Process Engineering, Agriculture Engineering with Food Processing emphasis<br />
	&nbsp;</p>
<p>
	<strong>Responsibilities Include:</strong></p>
<ul>
	<li>
		Identification, assessment, validation and documentation of process technology to&nbsp;deliver identified initiatives</li>
	<li>
		Conducts assessment and capability studies and supervises product startups/commercialization and provides on-site support to Project Engineers and Plant Operations</li>
	<li>
		Provides expertise in developing new and innovative manufacturing processes</li>
	<li>
		Provides on-site and remote technical services, observing processes, pinpointing and fixing problems to assure consistent quality and capacity</li>
	<li>
		Creates, designs, supervises the development of new process/equipment and experimental protocols required to validate product concepts and prototypes</li>
	<li>
		Provides leadership, guidance, and career development to a more junior process engineer and outsourced resources. Anticipates short and long term employee requirements and leads efforts to meet their needs</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<br />
	&nbsp;</p>
', 'Process Developing-engineering', '1283', 'Process Development Engineer', '2009-11-12 00:00:00', 6, '$90-110,000; + 10% bonus', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (2, 0, 3, '<p>
	<strong>JOB FUNCTION</strong><br />
	<br />
	The purpose of this job is to apply knowledge of food science and processing principles to design and formulate new and improved existing cereal products, to manage product activities utilizing project management techniques, and to participate in and lead cross-functional product development activities resulting in meeting our cost, quality and schedule objectives.<br />
	<br />
	<strong>RESPONSIBILITIES</strong><br />
	<br />
	1. New Products or New Technologies (Processing, Analytical or Ingredients)</p>
<ul>
	<li>
		Develop new products and improvements to existing products. Assure that product activities meet company cost capacity, quality, marketing and product development requirements.</li>
	<li>
		Provide design and processing parameters inputs for new products, capacity improvements, and equipment design.</li>
	<li>
		Maintain knowledge of developments in ingredient formulation and processing research. Test new ingredient and process concepts; work with purchasing to make ingredient modifications where appropriate.</li>
</ul>
<p>
	2. Product Improvements, Product Maintenance and News</p>
<ul>
	<li>
		Improve and develop extensions to existing brands using laboratory bench top, vendor facilities and full scale manufacturing systems. Ability to go from bench top to full scale production, without test scale up, is necessary.</li>
	<li>
		Provide design and processing parameters inputs for new products, capacity improvements, and equipment design.</li>
	<li>
		Develop and support maintenance of specifications and run documentation resulting in desired consistent, quality attributes.</li>
	<li>
		Maintain knowledge of developments in ingredient formulation and processing research. Test new ingredient and process concepts; work with purchasing to make ingredient modifications where appropriate.</li>
</ul>
<p>
	3. Business Development and Profit Margin Support</p>
<ul>
	<li>
		Work with a key business partner in Marketing to maximize profitability on product platform.</li>
	<li>
		Provide technical support to operations to continuously reduce cost of goods and improve quality.</li>
</ul>
<p>
	4. Other Technical and Business Support Activities</p>
<ul>
	<li>
		Communicate project activities, information, recommendations and performance to management and appropriate company business processes.</li>
	<li>
		Monitor product performance and quality through competitive cuts, customer/consumer feedback, financial reports and other sources.</li>
	<li>
		Work with appropriate resources to develop documentation necessary for meeting production and product goals.</li>
</ul>
<p>
	<br />
	<strong>Experience Required</strong>: 5+years of experience in the food industry in product or process development roles. Experience in process optimization, product formulation, statistical process control, and quality improvements. Production facility experience required. Preferred experience in cereal, baking, or snack food manufacturing.<br />
	<br />
	<strong>Education Required:</strong> BS / MS in chemical, mechanical, food process or agricultural engineering<br />
	&nbsp;</p>
', 'Product Development', '1312', 'Product Scientist Engineer', '2009-12-04 00:00:00', 8, '$70-105,000; + 15% bonus; + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (3, 0, 6, '<p>
	<strong>JOB FUNCTION</strong><br />
	<br />
	The purpose of this job is to apply knowledge of food science and processing principles to design and formulate new and improved existing cereal products, to manage product activities utilizing project management techniques, and to participate in and lead cross-functional product development activities resulting in meeting our cost, quality and schedule objectives.<br />
	<br />
	<strong>RESPONSIBILITIES</strong><br />
	<br />
	1. New Products or New Technologies (Processing, Analytical or Ingredients)</p>
<ul>
	<li>
		Develop new products and improvements to existing products. Assure that product activities meet company cost capacity, quality, marketing and product development requirements.</li>
	<li>
		Provide design and processing parameters inputs for new products, capacity improvements, and equipment design.</li>
	<li>
		Maintain knowledge of developments in ingredient formulation and processing research. Test new ingredient and process concepts; work with purchasing to make ingredient modifications where appropriate.</li>
</ul>
<p>
	2. Product Improvements, Product Maintenance and News</p>
<ul>
	<li>
		Improve and develop extensions to existing brands using laboratory bench top, vendor facilities and full scale manufacturing systems. Ability to go from bench top to full scale production, without test scale up, is necessary.</li>
	<li>
		Provide design and processing parameters inputs for new products, capacity improvements, and equipment design.</li>
	<li>
		Develop and support maintenance of specifications and run documentation resulting in desired consistent, quality attributes.</li>
	<li>
		Maintain knowledge of developments in ingredient formulation and processing research. Test new ingredient and process concepts; work with purchasing to make ingredient modifications where appropriate.</li>
</ul>
<p>
	3. Business Development and Profit Margin Support</p>
<ul>
	<li>
		Work with a key business partner in Marketing to maximize profitability on product platform.</li>
	<li>
		Provide technical support to operations to continuously reduce cost of goods and improve quality.</li>
</ul>
<p>
	4. Other Technical and Business Support Activities</p>
<ul>
	<li>
		Communicate project activities, information, recommendations and performance to management and appropriate company business processes.</li>
	<li>
		Monitor product performance and quality through competitive cuts, customer/consumer feedback, financial reports and other sources.</li>
	<li>
		Work with appropriate resources to develop documentation necessary for meeting production and product goals.</li>
</ul>
<p>
	<br />
	<strong>Experience Required</strong>: 5+years of experience in the food industry in product or process development roles. Experience in process optimization, product formulation, statistical process control, and quality improvements. Production facility experience required. Preferred experience in cereal, baking, or snack food manufacturing.<br />
	<br />
	<strong>Education Required:</strong> BS / MS in chemical, mechanical, food process or agricultural engineering<br />
	&nbsp;</p>
', 'Process Development', '1312', 'Product Scientist Engineer', '2009-12-04 00:00:00', 8, '$70-105,000; + 15% bonus; + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (4, 2, 7, '<p>
	<strong>JOB FUNCTION</strong><br />
	<br />
	The purpose of this job is to apply knowledge of food science and processing principles to design and formulate new and improved existing cereal products, to manage product activities utilizing project management techniques, and to participate in and lead cross-functional product development activities resulting in meeting our cost, quality and schedule objectives.<br />
	<br />
	<strong>RESPONSIBILITIES</strong><br />
	<br />
	1. New Products or New Technologies (Processing, Analytical or Ingredients)</p>
<ul>
	<li>
		Develop new products and improvements to existing products. Assure that product activities meet company cost capacity, quality, marketing and product development requirements.</li>
	<li>
		Provide design and processing parameters inputs for new products, capacity improvements, and equipment design.</li>
	<li>
		Maintain knowledge of developments in ingredient formulation and processing research. Test new ingredient and process concepts; work with purchasing to make ingredient modifications where appropriate.</li>
</ul>
<p>
	2. Product Improvements, Product Maintenance and News</p>
<ul>
	<li>
		Improve and develop extensions to existing brands using laboratory bench top, vendor facilities and full scale manufacturing systems. Ability to go from bench top to full scale production, without test scale up, is necessary.</li>
	<li>
		Provide design and processing parameters inputs for new products, capacity improvements, and equipment design.</li>
	<li>
		Develop and support maintenance of specifications and run documentation resulting in desired consistent, quality attributes.</li>
	<li>
		Maintain knowledge of developments in ingredient formulation and processing research. Test new ingredient and process concepts; work with purchasing to make ingredient modifications where appropriate.</li>
</ul>
<p>
	3. Business Development and Profit Margin Support</p>
<ul>
	<li>
		Work with a key business partner in Marketing to maximize profitability on product platform.</li>
	<li>
		Provide technical support to operations to continuously reduce cost of goods and improve quality.</li>
</ul>
<p>
	4. Other Technical and Business Support Activities</p>
<ul>
	<li>
		Communicate project activities, information, recommendations and performance to management and appropriate company business processes.</li>
	<li>
		Monitor product performance and quality through competitive cuts, customer/consumer feedback, financial reports and other sources.</li>
	<li>
		Work with appropriate resources to develop documentation necessary for meeting production and product goals.</li>
</ul>
<p>
	<br />
	<strong>Experience Required</strong>: 5+years of experience in the food industry in product or process development roles. Experience in process optimization, product formulation, statistical process control, and quality improvements. Production facility experience required. Preferred experience in cereal, baking, or snack food manufacturing.<br />
	<br />
	<strong>Ed</strong><strong>ucation Required:</strong> BS / MS in chemical, mechanical, food process or agricultural engineering<br />
	&nbsp;</p>
', 'Product Development', '1312', 'Product Scientist Engineer', '2009-12-04 00:00:00', 8, '$70-105,000; + 15% bonus; + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (32, 1, 6, '<p>
	<strong>SUMMARY<br />
	</strong>Responsible for leading process development programs &amp; projects that transform the way in which the company produces products. This includes identifying new processing technologies, developing &amp; optimizing the technologies, and implementing them at factory scale. Projects will focus on cultured products, fluid milk products, &amp;/or non-dairy beverage products.<br />
	<br />
	<strong>REQUIRED EXPERIENCES</strong></p>
<ul>
	<li>
		Proven track record of taking technology ideas from concept, through development, to commercialization</li>
	<li>
		Coaching junior talent to advance projects</li>
	<li>
		Working with experimental designs, statistics, and consumer testing to plan projects and make decisions</li>
	<li>
		Demonstrated ability to use strong technical insight and logic in making decisions</li>
	<li>
		Demonstrated strong program leadership - comfortable in leading team meetings and teams, creating and managing timelines, execution of plans, &amp; contingency planning</li>
	<li>
		Proven track record of being a self starter and being able to work autonomously to plan, implement, monitor and deliver objectives</li>
	<li>
		Demonstrated ability to be a strong R&amp;D voice within cross-functional settings, using logical scientific arguments to influence others and make decisions</li>
	<li>
		Ability to communicate in a compelling fashion with junior and senior levels in the Supply Chain organization and in R&amp;D</li>
</ul>
<p>
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Identify new process technology opportunities, and create/implement intellectual property plans</li>
	<li>
		Conduct technical feasibility assessments of new technologies through lab and pilot plant trial experimentation</li>
	<li>
		Scale-up and implement new process technologies at factory level</li>
	<li>
		Create process design scopes to define manufacturing specifications and capital requirements</li>
	<li>
		Act as technical subject matter expert for the company</li>
	<li>
		Coach junior talent to advance projects</li>
	<li>
		Work directly with research institutes, suppliers, manufacturing facilities, and Supply Chain organization to achieve goals</li>
	<li>
		Facilitate communication and project alignment between Marketing, R&amp;D, and the Supply Chain organizations</li>
</ul>
<p>
	<strong>Education Required:</strong> Bachelor&rsquo;s degree in Chemical or Food Engineering or similar technical discipline</p>
<p>
	<br />
	<strong>Experience Required:</strong> 7-10 years experience in the Consumer Packaged Goods industry; R&amp;D process development experience; Experience with fluid thermal processing applications; Dairy products and/or soy beverages experience desired<br />
	&nbsp;</p>
', '', '1324', 'Research Engineer – R&D Process Development', '2010-02-17 00:00:00', 9, '$90-105,000 + bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (7, 0, 3, '<p>
	<strong>Responsibilities Include:</strong></p>
<ul>
	<li>
		Position reports directly to the Plant Maintenance Manager.</li>
	<li>
		Objectives focus is to drive asset optimization practices in conjunction with Maintenance Manager through reliability automation, standardization and simplification practices</li>
	<li>
		Partners with Engineering and Operations to facilitate the process of cross-functional problem solving</li>
	<li>
		This position is a key interface between Maintenance and Engineering personnel to ensure that resources are focused on increased reliability</li>
	<li>
		Coordinates with Engineering to ensure reliability and maintainability principles are integrated into all capital projects</li>
	<li>
		Responsible for developing and maintaining an Equipment Reliability Program that incorporates root cause analysis, predictive technologies, equipment failure database and maintenance excellence performance</li>
	<li>
		Responsible for Reliability cost reduction goals on an annualized basis.</li>
	<li>
		Qualifications:</li>
	<li>
		Understands problem solving methodology and can facilitate cross-functional teams through complex situations, resulting in root cause failure analysis</li>
	<li>
		Can promote equipment maintainability factors that need to be considered at the various stages of capital project implementation</li>
	<li>
		Has a broad &ldquo;systems&rdquo; perspective on maintainability and reliability</li>
	<li>
		Understands maintenance and reliability performance metrics. Utilizes measures that are essential to meet &ldquo;best in class&rdquo; maintenance performance objectives</li>
	<li>
		Understands the elements of Preventive/Predictive maintenance programs. Experienced in the appropriate application of condition monitoring technologies (infrared thermography, vibration analysis, tribology, motor analysis etc)</li>
	<li>
		Understands the impact of design, installation, commissioning and verification phases; the life cycle of a capital project.</li>
	<li>
		Understands and can develop &rdquo;Best Practices&rdquo; for maintenance functions and activities. Able to develop and use trend analysis techniques (Pareto, histograms, scatter charts, graphs etc)</li>
</ul>
<p>
	<strong>Experience Required:</strong>&nbsp; At Least 2 years manufacturing experience, multi-disciplinary engineering experience helpful</p>
<p>
	<strong>Education Required:</strong>&nbsp; BS/MS degree in Engineering or related technical field (Environmental, Civil, Mechanical, Electrical)</p>
<p class="MsoNormal" style="margin: 0in 0in 0pt 0.25in">
	&nbsp;</p>
<p>
	<br />
	&nbsp;</p>
<ul>
</ul>
', 'Reliability Engineering', '1285', 'Reliability Engineer', '2009-09-23 00:00:00', 9, '$60-85,000; +  bonus; + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (69, 0, 2, '<p>
	<strong>SUMMARY</strong> <br />
	Directs and coordinates research and development technical activities for organizational products, services, or ideologies by performing the following duties personally or through subordinate supervisors.<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES </strong></p>
<ul>
	<li>
		Establishes current and long range objectives, plans and policies for department</li>
	<li>
		Communicates corporate priority for R&amp;D project mix (new product developments for various sales divisions, productivity, technical foundation building and early technology investigations)</li>
	<li>
		Collaborates with business division leadership to set direction to meet customer and consumer needs</li>
	<li>
		Support the culture of innovation across the department</li>
	<li>
		Creates and delivers technical budgets</li>
	<li>
		Allocates human resources and keeps their skills current with the needs of the organization and stakeholders</li>
	<li>
		Supports the developmental of Intellectual Property processes and the execution of contracts, agreements and patent development</li>
	<li>
		Develops and implements methods and procedures for improving department effectiveness and monitoring department activities</li>
	<li>
		Reviews operating results of the organization, compares them to established objectives, and takes steps to ensure that appropriate measures are taken to correct unsatisfactory results</li>
	<li>
		Establishes and maintains an effective system of communications throughout the department</li>
	<li>
		Analyzes new technologies and runs competitive analyses</li>
	<li>
		Provides external customer service to sales and marketing teams by customer site visits, problem solving, consultation and presentation, as needed</li>
	<li>
		Negotiates contracts with consulting firms to perform department services.</li>
	<li>
		Provides technical knowledge to Executive management with respect to Food/Dairy Science principles and product development techniques and processes</li>
	<li>
		Represents organization with external stakeholders</li>
</ul>
<p>
	<strong>SUPERVISORY RESPONSIBILITIES </strong></p>
<p>
	Directly supervises 4 to 7 employees in the Research and Development Department. Carries out supervisory responsibilities in accordance with the organization&#39;s policies and applicable laws. Responsibilities include interviewing, hiring, and training employees; planning, assigning, and directing work; appraising performance; rewarding and disciplining employees; addressing complaints and resolving problems.<br />
	<br />
	<strong>Education Required:</strong> Master&#39;s degree (M.S.) or equivalent; <br />
	<br />
	<strong>Experience Required:</strong> Six to ten years related experience and/or training; or equivalent combination of education and experience<br />
	&nbsp;</p>
', '', '1353', 'VP - R&D', '2010-04-28 00:00:00', 8, '$175 - 200K + 30% bonus + car allowance', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (44, 0, 10, '<p>
	<strong>Function<br />
	</strong>The food safety team lead manages quality through the development of comprehensive quality systems, e.g. Risk assessment, Prerequisite Food Safety, Design/Supply Chain HACCP, Audit Management and advancement of food safety tools and processes for the gum and confectionery segment. This functional leader works closely with Research and Development, Global Supply Chain and Factory Management to develop processes and tools that ensure our products&rsquo; are safe and wholesome. <br />
	<br />
	The food safety lead, SME team, and factory food safety coordinators are focused on the deployment of systems to ensure our products&rsquo;&rsquo; consistently meet consumers needs, beat our competition, and provide consumer confidence in company products. This team also works closely in the deployment systems designed to leverage consumer safety into actionable continuous improvement opportunities for our Supply Chain and Innovation teams.<br />
	<br />
	This position is responsible for the deployment of food safety systems that drive continuous improvement resulting in high quality, cost effective products. The incumbent is an integral member of the Global Quality Center of Excellence Team for company&rsquo;s Global Quality Department. <br />
	<br />
	<strong>Responsibilities</strong></p>
<ul>
	<li>
		Designs and develops food safety processes for risk assessment that meet globally recognized requirements as defined by Codex Alimentarius, UKAS, FSSC 22000 , etc, for the design and deployment of robust food safety systems</li>
	<li>
		Oversees the deployment, measures, maintenance, and verification of effectiveness, for established Food Safety systems across the company worldwide</li>
	<li>
		Drives continuous improvement and standardization of food safety and systems across the organization (from supplier through to consumer), and assures that such procedures are appropriately integrated to result in gold standard products while being timely and cost effective</li>
	<li>
		Functions as the technical expert on food safety systems within Global Quality. Develops and leads audit processes to ensure adherence to key controls</li>
	<li>
		Assesses all types of risk (package, utility, ingredient and process) and ensures policies and procedures address food safety improvement opportunities or areas for quality system improvement that ensure the wholesomeness of our products.</li>
	<li>
		Empowers and educates our manufacturing facilities to meet Food Safety requirements as defined by Codex Alimentarius and ISO 22000 as well as ensures compliance to all relevant food safety requirements</li>
	<li>
		Creates and implements company gum and confectionery segment food safety policies and procedures in line with global Food Safety and Quality team learning and direction</li>
	<li>
		Defines, develops, and implements food safety metrics that drives continuous improvement in prerequisite program management and effective deployment of HACCP from farm to consumer</li>
	<li>
		Together with quality team counterparts across the Company, assures that established systems result in Gold Standard production on a worldwide basis. Works with Regional and factory Quality Managers and staff to share findings and solutions and to help resolve problems that may affect more than one client area</li>
	<li>
		Mentors and coaches Global Quality organization to strengthen and enhance their food safety skill set and impact to Global Quality priorities</li>
	<li>
		Mentors and coaches to foster awareness of product safety issues and promote the attainment of quality leadership skills; devises and implements methods of transferring solutions and findings to other groups within the client organization and to encourage support for and recognition of initiatives. Implements preventative, proactive (quality engineering standards) and predictive (integrated food safety systems) projects for products on a worldwide basis.</li>
	<li>
		Promotes the goals of Global Quality across the Company to facilitate company-wide acceptance and support for goals. Interfaces with management and staff company-wide to ensure the attainment of Quality Assurance objectives.</li>
	<li>
		Researches new developments of food safety globally and communicates important new findings to the organization. Helps assure the ongoing education of client staff in product, package and process food safety risk and preventive deployment of systems, programs and processes to manage or mitigate these risks.</li>
</ul>
<p>
	<br />
	<strong>Education Required:</strong> Technical Bachelor&rsquo;s degree (Food Science, Biology or Chemistry) required. Masters or PhD preferred</p>
<p>
	<br />
	<strong>Experience Required</strong>:</p>
<ul>
	<li>
		7 - 10 plus years of professional experience in quality management and or quality systems discipline</li>
	<li>
		Expertise in quality systems and requirements, including HACCP, ISO, GMP, Food Allergens, Factory Hygiene, Equipment Calibration, Laboratory GMPs and Quality Audit Management</li>
	<li>
		Understanding of Global regulatory agency operations and a working knowledge of regulatory requirements in North America, EU, India, Australia and China</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<br />
	&nbsp;</p>
', '', '1333', 'Manager Food Safety Global Quality', '2010-04-05 00:00:00', 9, '', '0', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (10, 2, 7, '<p>
	<strong>Responsibilities Include:</strong></p>
<ul>
	<li>
		Provide Technical expertise on production of fruit-based products</li>
	<li>
		Be US expert on product formulation / taste / train Plant tasters</li>
	<li>
		Trouble shoot at Plant as needed / formulations / QA issues</li>
	<li>
		Design product specs and production SOPs</li>
	<li>
		Install new products at plant</li>
</ul>
<p>
	1.&nbsp; Lead US new product and package development process</p>
<ul>
	<li>
		Plan and execute test runs for the development of various prototypes in lab, pilot plant and at productions facilities. Document results</li>
	<li>
		Provide guidance/Liaison to Europe R&amp;D on US new product designs/needs</li>
	<li>
		Leverage R&amp;D Technical Center for product adaptation activities</li>
	<li>
		Lead US package design with Company packaging engineers, and plant operations</li>
	<li>
		Build knowledge base around product design / fruit combinations / fruit trends</li>
	<li>
		Source and maintain vendor relationships to secure the necessary ingredients that align with the Company standards. Qualify alternative ingredient supply for quality / cost improvement</li>
</ul>
<p>
	2.&nbsp; Develop Fruit Nutrition experience/knowledge</p>
<ul>
	<li>
		Insure formulations deliver desired nutrition / desired claims &ndash; adapt as needed</li>
	<li>
		Liaison with WWF Nutrition / Regulatory groups for regulatory compliance</li>
</ul>
<p>
	3.&nbsp; Liaison with Plant Quality Assurance personnel, as needed, to insure consistent quality production<br />
	4.&nbsp; Work with Company Consumer Affairs to resolve any product complaints / issues<br />
	5.&nbsp; Assist in arranging sensory evaluations and consumer taste panels<br />
	6.&nbsp; Provide assessment; develop knowledge base of competitive products vs. our&nbsp;product<br />
	7.&nbsp; Assure conformity to applicable standards<br />
	8.&nbsp; Assure successful commercialization of new products meeting quality objectives<br />
	<br />
	<strong>Experience Required:</strong> 3 to 5 years of food research/production experience<br />
	<br />
	<strong>Education Required:</strong> B.S. in Food Science or related field<br />
	<br />
	&nbsp;</p>
', 'Product Development', '1264', 'Food Scientist', '2009-05-12 00:00:00', 21, '$55,000 - $90,000 plus relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (76, 0, 3, '<p>
	<br />
	<strong>SUMMARY<br />
	</strong>Responsible for leading a small group of R&amp;D process developers to evaluate and develop new processing technologies in lab, pilot plant and factory settings.<br />
	<br />
	<strong>REQUIRED EXPERIENCES</strong></p>
<ul>
	<li>
		Program and project management. &ndash; creating, managing and communicating timelines, execution of plans, &amp; contingency plans</li>
	<li>
		Coaching junior talent to advance projects</li>
	<li>
		Communication of project objectives, plans and status to cross functional teams, especially to R&amp;D and Supply Chain audiences in verbal and written forums</li>
	<li>
		Experience leading functional and cross-functional team meetings.</li>
	<li>
		Design and analysis of experiments</li>
	<li>
		Development of technologies in the lab &amp; pilot plant in the Food/FMCG industry</li>
</ul>
<p>
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Manage junior talent to advance projects in a systematic and technically rigorous fashion</li>
	<li>
		Lead team meetings</li>
	<li>
		Design experiments and analyze results</li>
	<li>
		Communicate updated program timelines/status to R&amp;D &amp; Supply Chain teams</li>
	<li>
		Facilitate project alignment between Marketing, R&amp;D, &amp; Supply Chain</li>
	<li>
		Must be able to be on-site 3 days a week</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong>: Bachelors Degree in Chemistry or Food Engineering or similar technical discipline</p>
<p>
	<br />
	<strong>Experience Required</strong>: 7 to 10 years experience in the Consumer Packaging Goods Industry<br />
	&nbsp;</p>
', '', '1359', 'Technical Program Manager', '2010-05-25 00:00:00', 21, '100-120K + bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (77, 0, 6, '<p>
	<strong>SUMMARY<br />
	</strong>Responsible for leading a small group of R&amp;D process developers to evaluate and develop new processing technologies in lab, pilot plant and factory settings.<br />
	<br />
	<strong>REQUIRED EXPERIENCES</strong></p>
<ul>
	<li>
		Program and project management. &ndash; creating, managing and communicating timelines, execution of plans, &amp; contingency plans</li>
	<li>
		Coaching junior talent to advance projects</li>
	<li>
		Communication of project objectives, plans and status to cross functional teams, especially to R&amp;D and Supply Chain audiences in verbal and written forums</li>
	<li>
		Experience leading functional and cross-functional team meetings.</li>
	<li>
		Design and analysis of experiments</li>
	<li>
		Development of technologies in the lab &amp; pilot plant in the Food/FMCG industry</li>
</ul>
<p>
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Manage junior talent to advance projects in a systematic and technically rigorous fashion</li>
	<li>
		Lead team meetings</li>
	<li>
		Design experiments and analyze results</li>
	<li>
		Communicate updated program timelines/status to R&amp;D &amp; Supply Chain teams</li>
	<li>
		Facilitate project alignment between Marketing, R&amp;D, &amp; Supply Chain</li>
	<li>
		Must be able to be on-site 3 days a week</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong>: Bachelors Degree in Chemistry or Food Engineering or similar technical discipline</p>
<p>
	<br />
	<strong>Experience Required</strong>: 7 to 10 years experience in the Consumer Packaging Goods Industry<br />
	&nbsp;</p>
', '', '1359', 'Technical Program Manager', '2010-05-25 00:00:00', 21, '$100-120K +bonus + relocation assistance', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (12, 4, 7, '<p>
	The Research Scientist position relates to a wide range of technical skill functions and many non-technical company functions. Applies scientific and engineering principles in research, development, production technology, quality control, packaging, processing and utilization of foods by performing the following duties. It is an intermediate level development role where the individual possesses an intermediate understanding of food science principles, practices and procedures. <br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong>:</p>
<ul>
	<li>
		Conducts applied research, and new product research and development of foods</li>
	<li>
		Receives instruction on specific assignment objectives, complex features and possible solutions. Assistance is furnished on unusual problems and work is received for application of sound professional or scientific judgment</li>
	<li>
		Independently develops and evaluates technical approaches with supervisory guidance and demonstrates thorough understanding of scientific principles</li>
	<li>
		May participate in cross-functional teams charged with the development of new business opportunities. Develops cross-functional relationships</li>
	<li>
		Studies methods to improve the quality of foods such as flavor, color, texture, nutritional value, convenience, or physical, chemical, and microbiological composition of foods</li>
	<li>
		Tests new products in test kitchen, develops specific processing methods in laboratory pilot plant and scales products up in manufacturing facilities</li>
	<li>
		Maintains written technical documentation, and product and process specifications</li>
	<li>
		Has the ability to interpret food standards, safety and sanitary regulations and good manufacturing practices</li>
	<li>
		Utilizes internal (manufacturing, engineering, marketing, quality systems and procurement) and external (suppliers, consultants) functional experts to resolve issues</li>
</ul>
<p>
	<strong>Experience Required: </strong>2 to 4 years with BS degree; 2 years with MS degree<br />
	<br />
	<strong>Education Required:</strong> BS in Food Science or equivalent with 2-4 years of experience; or with Master&#39;s degree (MS) or equivalent; with minimal industry experience.<br />
	&nbsp;</p>
', 'Research Scientist', '1299', 'Research Scientist', '2009-12-05 00:00:00', 8, '$60 - 85,000+ bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (78, 1, 10, '<p>
	<strong>General Summary</strong><br />
	Lead and manage the entire range of Quality programs, as defined in the Company and CSC North American Quality Policies. Position has specific compliance, process, and consumer quality responsibilities. Position will manage a set of matrix relationships within Quality, and R&amp;D, to influence senior management on alignment of Quality strategies, Quality annual objectives, and Plant project plans. Individual will coordinate and deploy Quality Assurance programs across company plants, and functional areas, and influence plant leadership with quality best practices.<br />
	<br />
	<strong>Principal Accountabilities</strong></p>
<ol>
	<li>
		50% - Develop, drive, and continually improve a comprehensive quality program as defined by the Company and CSC North American Quality Policies. (Compliance Quality)</li>
	<li>
		25% - Drive process improvement initiatives through staff, work group, company staff, and R&amp;D (Process Quality)</li>
	<li>
		25% - Manage &amp; Drive Consumer Complaint programs, initiatives, and consumer delight models for each business</li>
</ol>
<p>
	<br />
	<strong>Job Complexity</strong><br />
	Response to new or changes in regulations on specifications, procedures, quality, and implications where utilized in a range of finished product.</p>
<ul>
	<li>
		Trouble shooting quality issues across the varied supply chains for ingredients, packaging, materials, and finished products supplied (examples; mixed labels, allergen risk management, equipment risk management, container nonconformance)</li>
</ul>
<p>
	<strong>Education Required</strong>: BS in Food Science or related field<br />
	<br />
	<strong>Experience Required:</strong> 7+ years experience<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1340', 'Quality Assurance Manager', '2010-05-26 00:00:00', 8, '$90-110K + 15% bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (37, 0, 5, '<h3 align="center" style="text-align: center; margin: 0in 0in 0pt">
	<b style="mso-bidi-font-weight: normal"><span style="font-size: 9pt"><o:p><font color="#000000" face="Arial">&nbsp;</font></o:p></span></b></h3>
<p class="MsoNormal" style="line-height: 12pt; margin: 0in 0in 0pt">
	<font color="#000000"><b style="mso-bidi-font-weight: normal"><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt">JOB FUNCTION</span></b><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt"><o:p></o:p></span></font></p>
<p class="DefaultText" style="margin: 0in 0in 0pt; tab-stops: .5in 1.0in 1.5in 2.0in 2.5in 3.0in 3.5in 270.2pt 4.0in 4.5in 4.75in 5.0in 5.5in 6.0in">
	<span style="font-family: arial; font-size: 9pt"><font color="#000000">The purpose of this job is to apply knowledge of food and material sciences with engineering principles to design, test and implement new or improved packaging materials and structures, to manage project activities utilizing project management techniques, and to participate in and lead cross-functional product development activities resulting in meeting our cost, quality and schedule objectives.<o:p></o:p></font></span></p>
<h3 style="margin: 0in 0in 0pt">
	<span style="font-size: 9pt"><o:p><font color="#000000" face="Arial">&nbsp;</font></o:p></span></h3>
<p class="MsoNormal" style="line-height: 12pt; margin: 0in 0in 0pt">
	<span style="layout-grid-mode: line; font-family: arial; font-size: 9pt"><strong><font color="#000000">JOB ACTIVITIES/DUTIES<o:p></o:p></font></strong></span></p>
<p class="MsoNormal" style="line-height: 12pt; margin: 0in 0in 0pt">
	<span style="layout-grid-mode: line; font-family: arial; font-size: 9pt"><o:p><font color="#000000">&nbsp;</font></o:p></span></p>
<p class="NumberList" style="text-indent: -0.5in; margin: 0in 0in 0pt 0.5in; mso-list: l1 level1 lfo2; tab-stops: .5in">
	<font color="#000000"><span style="font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">1.<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: arial; font-size: 9pt">Leads packaging development projects; develops overall timelines, and communicates project progress on the research, testing and implementation of projects.<span style="mso-spacerun: yes">&nbsp;&nbsp; </span>Incorporate the following requirements:<o:p></o:p></span></font></p>
<p class="NumberList" style="text-indent: -0.5in; margin: 0in 0in 0pt 1in; mso-list: l2 level1 lfo3; tab-stops: .5in">
	<font color="#000000"><span style="font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">a)<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: arial; font-size: 9pt">Design packages that meet overall project requirements including, but not limited to, required fill level, product protection through the manufacturing process, distribution, retail or foodservice display, and end-consumer use<o:p></o:p></span></font></p>
<p class="NumberList" style="text-indent: -0.5in; margin: 0in 0in 0pt 1in; mso-list: l2 level1 lfo3; tab-stops: .5in">
	<font color="#000000"><span style="font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">b)<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: arial; font-size: 9pt">Evaluate package materials of construction to meet overall project requirements including, but not limited to, overall organoleptic qualities throughout stated product shelf-life, durability of manufacturing, distribution and ultimate end-consumer use, and cost and quality requirements <o:p></o:p></span></font></p>
<p class="MsoNormal" style="line-height: 12pt; text-indent: -0.5in; margin: 0in 0in 0pt 1in; mso-list: l2 level1 lfo3; tab-stops: list .5in">
	<font color="#000000"><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">c)<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: arial; font-size: 9pt">Develop and implement physical package structures (e.g., bag, carton, container, case configuration, and pallet/unit to meet product quality, graphics needs, and marketing requirements with acceptable cost, quality and operational service effectiveness.<span style="layout-grid-mode: line"><span style="mso-spacerun: yes">&nbsp; </span>Provides dimensional drawings for graphic development.<span style="mso-spacerun: yes">&nbsp; </span>Proofs keylines for dimensional accuracy and equipment requirements<span style="mso-spacerun: yes">&nbsp;&nbsp; </span><o:p></o:p></span></span></font></p>
<p class="MsoNormal" style="line-height: 12pt; text-indent: -0.5in; margin: 0in 0in 0pt 0.5in; mso-list: l1 level1 lfo2">
	<font color="#000000"><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">2.<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt">Identifies and conducts scientific or engineering studies on packaging materials of construction, assembled structures, and equipment to meet defined quality, cost and service parameters.<span style="mso-spacerun: yes">&nbsp; </span>Communicates results appropriately and implements solutions as required by project needs<o:p></o:p></span></font></p>
<p class="MsoNormal" style="line-height: 12pt; text-indent: -0.5in; margin: 0in 0in 0pt 0.5in; mso-list: l1 level1 lfo2">
	<font color="#000000"><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">3.<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt">Investigates, develops, and leads cost savings projects<o:p></o:p></span></font></p>
<p class="MsoNormal" style="line-height: 12pt; text-indent: -0.5in; margin: 0in 0in 0pt 0.5in; mso-list: l1 level1 lfo2">
	<font color="#000000"><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">4.<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt">Develops the package material specifications including, but not limited to, verifying critical parameters, identifying materials of construction testing methods, and establishing acceptance/rejection criteria<o:p></o:p></span></font></p>
<p class="MsoNormal" style="line-height: 12pt; text-indent: -0.5in; margin: 0in 0in 0pt 0.5in; mso-list: l1 level1 lfo2">
	<font color="#000000"><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">5.<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: arial; font-size: 9pt">Troubleshoots and serves as functional subject matter resource on packaging line operations, changeover issues, internal handling of packaging materials<span style="mso-spacerun: yes">&nbsp; </span><span style="layout-grid-mode: line"><o:p></o:p></span></span></font></p>
<p class="MsoNormal" style="line-height: 12pt; text-indent: -0.5in; margin: 0in 0in 0pt 0.5in; mso-list: l1 level1 lfo2">
	<font color="#000000"><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt; mso-fareast-font-family: arial"><span style="mso-list: ignore">6.<span style="font: 7pt ''times new roman''">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span></span><span style="font-family: arial; font-size: 9pt">Trains other employees on packaging subject matter as required<span style="layout-grid-mode: line"><o:p></o:p></span></span></font></p>
<p style="margin: 0in 0in 0pt">
	<span style="font-family: arial; color: black; font-size: 9pt"><o:p>&nbsp;</o:p></span></p>
<p style="margin: 0in 0in 0pt">
	<b style="mso-bidi-font-weight: normal"><span style="font-family: arial; color: black; font-size: 9pt">Education Required:<span style="mso-tab-count: 2">&nbsp;&nbsp;</span></span></b><span style="font-family: arial; font-size: 9pt"><font color="#000000">B<span class="text">S / MS in chemical, industrial or food process (not agricultural) engineering</span><b style="mso-bidi-font-weight: normal"><span style="color: black"><o:p></o:p></span></b></font></span></p>
<p style="margin: 0in 0in 0pt">
	<b style="mso-bidi-font-weight: normal"><span style="font-family: arial; color: black; font-size: 9pt"><o:p>&nbsp;</o:p></span></b></p>
<p style="margin: 0in 0in 0pt">
	<b style="mso-bidi-font-weight: normal"><span style="font-family: arial; color: black; font-size: 9pt">Experience Required:<span style="mso-spacerun: yes">&nbsp;</span><span style="mso-tab-count: 1">&nbsp;&nbsp; </span></span></b><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt"><font color="#000000">Broad-based knowledge of packaging technology including, but not limited to, polymers, lamination, printing, corrugated material sciences, packaging equipment design or operation, project coordination and manufacturing processes.<span style="mso-spacerun: yes">&nbsp; </span>Experience in food package design, manufacturing or plant technical support environment preferred.<span style="mso-spacerun: yes">&nbsp; </span>Experience in consumer product and packaging development required.<o:p></o:p></font></span></p>
<p style="margin: 0in 0in 0pt">
	<span style="layout-grid-mode: line; font-family: arial; font-size: 9pt"><o:p><font color="#000000">&nbsp;</font></o:p></span></p>
<p style="margin: 0in 0in 0pt">
	<font color="#000000"><b style="mso-bidi-font-weight: normal"><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt">Other:</span></b><span style="layout-grid-mode: line; font-family: arial; font-size: 9pt"><span style="mso-spacerun: yes">&nbsp;&nbsp; </span></span><span style="font-family: arial; color: black; font-size: 9pt">Able to work evenings and/or weekends <o:p></o:p></span></font></p>
<p style="margin: 0in 0in 0pt">
	<span style="font-family: arial; color: black; font-size: 9pt"><span style="mso-tab-count: 2">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span>Some travel is expected (&lt;20%), but there may be extended travel on&nbsp;certain&nbsp;</span></p>
<p style="margin: 0in 0in 0pt">
	<span style="font-family: arial; color: black; font-size: 9pt">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp; key start-up projects&nbsp;</span></p>
<p style="margin: 0in 0in 0pt">
	<b style="mso-bidi-font-weight: normal"><span style="font-family: arial; color: black; font-size: 9pt"><o:p></o:p></span></b></p>
<p class="MsoNormal" style="margin: 0in 0in 0pt">
	<span style="font-family: arial; font-size: 9pt"><o:p><font color="#000000">&nbsp;</font></o:p></span></p>', '    ', '1329', 'Packaging Engineer/Scientist', '2010-03-23 00:00:00', 8, '$90-100K, 7.5% target bonus, plus relocation', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (42, 0, 12, '<p>
	<strong>SUMMARY</strong><br />
	Responsible for the sale of products - with a focus on company manufactured or third party exclusive products and services to assigned and target customers. The degree of representation is determined by the account and could include direct sales responsibility, shared sales responsibility, Technical Service representation, R&amp;D from a product development standpoint and other cross function departments. Works diligently to perpetuate the growth of sales of company brands and proprietary brands that provide a competitive advantage. As a sales professional, at all times maintain a positive business relationship with all stakeholders. <br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Responsible for attaining or exceeding the annual sales budget, margin and A/R for the assigned customers</li>
	<li>
		Utilizes an organized sales plan to focus on objectives and communicate to appropriate parties. This includes appropriate research on the customer and aligning their needs with the company&rsquo;s competencies</li>
	<li>
		Presents products to the customer using a professional approach that demonstrates value to the customer. This includes written proposals, product specifications and product demonstrations. It may also include pro-formas, plan-o-grams, product life cycle graphs, marketing plans and vendor support plans and other marketing research data.</li>
	<li>
		Quotes and maintains prices to customers. Utilizes a pricing and margin structure that is consistent with Company guidelines and achieves or exceeds companies&rsquo; goals. Responsible for inventory forecasts, sales administration of new items, resolving customer supply emergencies and everyday needs</li>
	<li>
		Facilitates orders via SPS or EDI. Manages order-processing issues such as designated order cut-off times, shipping addresses, delivery minimums, etc.</li>
	<li>
		Facilitates collection of customer payments. Communicates and updates all customers on compliance of credit terms</li>
	<li>
		Utilizes company data and field data to prepare period end reports that include sales trend, variance to prior and budget, sales plan activity, margin, A/R, competitive activity and a narrative on business drivers</li>
	<li>
		Follows up on ALL customer requests and questions to ensure appropriate response is made and customer is satisfied. Utilize proper internal and external communication to address business issues</li>
	<li>
		Travels as required by the needs of the customer, within company and budget guidelines. Coordinates all activities required with travel (samples, Technical Service, etc) to minimize costs</li>
	<li>
		Continually develops knowledge and representation of the Company&#39;s products, services, and policies, including company sponsored training as assigned</li>
	<li>
		The Director &ndash; National Accounts is expected to participate in assigned sales projects and may or may not supervise direct reports dependent upon business size and growth</li>
</ul>
<p>
	<strong>Education Required:</strong> A Bachelor&rsquo;s degree with MBA degree is preferable. <br />
	<br />
	<strong>Experience Required</strong>: At least five years of related experience is desired or a combination of experience and education. Prior Baking Industry experience a must.<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1335', 'Director - National Accounts', '2010-03-31 00:00:00', 22, '$90-110k + 20% bonus target + car + expense account', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (41, 0, 12, '<p>
	<br />
	<strong>SUMMARY<br />
	</strong>Responsible for the sale of products - with a focus on chocolate and confectionary products and services to assigned and target customers. The degree of representation is determined by the account and could include direct sales responsibility, shared sales responsibility, Technical Service representation, R&amp;D from a product development standpoint and other cross function departments. Works diligently to perpetuate the growth of sales of company and proprietary brands that provide a competitive advantage. As a sales professional, at all times maintain a positive business relationship with all stakeholders. <br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Responsible for the revenue and profit growth of the pastry and confection category Create and manage the pastry ingredients and confection category (rationalize range on a regular basis)</li>
	<li>
		Utilizes an organized sales plan to focus on objectives and communicate to appropriate parties. This includes appropriate research on the customer and aligning their needs with the company&rsquo;s competencies</li>
	<li>
		Presents products to the customer using a professional approach that demonstrates value to the customer. This includes written proposals, product specifications and product demonstrations. It may also include pro-formas, plan-o-grams, product life cycle graphs, marketing plans and vendor support plans and other marketing research data. Quotes and maintains prices to customers. Utilizes a pricing and margin structure that is consistent with Company guidelines and achieves or exceeds companies&rsquo; goals Responsible for inventory forecasts, sales administration of new items, resolving customer supply emergencies and everyday needs</li>
	<li>
		Become the chief advocate for the category and segments</li>
	<li>
		Represent the category with strong functional expertise in regards to applications Develop unique selling proposition for the categories into the target customer segments Create and implement training program for sales teams and specific customer segments Facilitates collection of customer payments. Communicates and updates all customers on compliance of credit terms</li>
	<li>
		Utilizes company data and field data to prepare period end reports that include sales trend, variance to prior and budget, sales plan activity, margin, A/R, competitive activity and a narrative on business drivers</li>
	<li>
		Follows up on ALL customer requests and questions to ensure appropriate response is made and customer is satisfied. Utilize proper internal and external communication to address business issues</li>
	<li>
		Travels as required by the needs of the customer, within company and budget guidelines. Coordinates all activities required with travel (samples, Technical Service, etc) to minimize costs&nbsp;</li>
	&nbsp;
</ul>
<p>
	<strong>Education Required</strong>: A Bachelor&rsquo;s degree</p>
<p>
	<br />
	<strong>Experience Required:</strong> At least ten (10) years of related experience is desired or a combination of experience and education. Prior Chocolate Industry experience a must. Strong category knowledge of pastry or confection ingredient applications<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1334', 'Director - Business Development (Chocolate)', '2010-03-31 00:00:00', 22, '90-110k + 20% target bonus + car + expense account', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (20, 1, 3, '<p>
	&nbsp;</p>
<ul>
	<li>
		Provides technical leadership and is a key contributor to initiatives in product/process development. Applies scientific research aimed at advancing technical knowledge and/or solving complex problems</li>
	<li>
		Organizes, executes and interprets advanced technical research projects in product or process development through the application of advanced principles and practices in a scientific specialty (microbiology, food chemistry, engineering)</li>
	<li>
		As a project leader, plans, manages and conducts complex research projects in product or process development or specific area of expertise (food microbiology, food chemistry, engineering). Works on multiple interdisciplinary projects, setting direction for how projects are carried out, plans timetables, identifies and organizes project team, coordinates other resources to achieve goals, implements plan and monitors progress</li>
	<li>
		Develops and proposes new project/product ideas, or new / innovative methodologies or ways of using technology to solve problems. Predicts issues / researches areas likely to increase or decrease in importance or to develop into a crisis</li>
	<li>
		Influences the direction of projects based upon expertise and suggests new projects based on discoveries</li>
	<li>
		Applies advanced technical expertise to a variety of complex and advanced problems</li>
	<li>
		Maintains thorough understanding and knowledge of state of the art and emerging technologies, trends in area of expertise</li>
	<li>
		Represents the company / function with outside vendors, suppliers, universities, associations, governmental agencies, as well as with Associates in other functions</li>
	<li>
		Writes and edits reports and regular updates to provide concise summaries of project work. Makes presentations of results and recommendations to various groups, both internally and externally</li>
	<li>
		Seeks out other centers of expertise or technology, inside or outside of the company which could be useful in own group&#39;s research. Acts as internal entrepreneur in communicating and sharing own group&#39;s expertise where it might be useful</li>
	<li>
		Actively pursues professional development needs.</li>
	<li>
		Participates in marketing and selling new business and in follow up customer contact</li>
	<li>
		Invents new technical areas and unique approaches</li>
	<li>
		Acts as consultant and advisor to customers</li>
	<li>
		Maintains accurate, up to date records, laboratory notebooks and computer database</li>
	<li>
		Ensures the work environment is sanitary, safe and orderly</li>
	<li>
		Travels regularly (up to 25% of time)</li>
</ul>
<p>
	<strong>Experience Required</strong>: With BS degree: minimum of 8 years experience /<br />
	With MS degree: minimum 6 years experience / With PhD degree: minimum of 3 years experience</p>
<p>
	<strong>Education Required:</strong> B.S. Degree in Food Science and/or BS in Chemical Engineering or Food Engineering<br />
	<br />
	&nbsp;</p>
', 'Process Engineering', '1303', 'Sr Process Dev Engineer', '2009-10-15 00:00:00', 2, '$70 - 90,000 + 10% bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (71, 1, 3, '<p>
	<strong>Position Summary </strong><br />
	The Commercialization Manager provides project leadership to cross functional teams that are responsible for execution of assigned projects (new product launches, line extensions, promotional packaging/pallet programs). The incumbent is also responsible for managing resources (time, people) to successfully execute team project goals. Communicates functional strategies to team, manages risk, executes approvals through change management process, and leads conflict resolution. This position provides management oversight for Operations project management, cost saving initiatives, and SKU rationalization management.<br />
	<br />
	<strong>Principal Duties and Responsibilities</strong></p>
<ul>
	<li>
		Leads cross functional teams responsible for assigned projects. Responsible for ensuring team meets overall project timeline &amp; critical path. Leads the team in Failure Mode and Effect Analysis and contingency plan creation. Responsible for managing the project through the PPPCA approval process and presenting status updates to key stakeholders and senior leadership. Manages team to create post activity assessments</li>
	<li>
		Ensures cross functional alignment at every stage of project. Provide conflict resolution to team members in order to achieve cross functional alignment. Ensures team members are contributing in a timely and appropriate manner.</li>
	<li>
		Manage and/or prepare project capital and POP2 funds</li>
	<li>
		Create improved speed to market by leveraging people, tools, key learning, and successes to create and institutionalize new methods to execute projects</li>
	<li>
		Provides management oversight and project leadership for Operations project management, CSI project management, and SKU rationalization management</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong><br />
	&bull; A Bachelor&rsquo;s Degree and 5-7 years of related experience is required<br />
	<br />
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Broad knowledge of Operational capabilities, processes, and systems</li>
	<li>
		Strong leadership, collaboration/peer relationship, influence, planning, business acumen, and problem solving skills</li>
	<li>
		Project management expertise with necessary IT skills (MS Project, Excel, SAP, etc) along with team building skills</li>
	<li>
		Excellent verbal and written communication skills</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1360', 'Commercialization Manager', '2010-05-24 00:00:00', 6, '$90-110k + bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (22, 1, 6, '<p>
	<strong>Experience Required: </strong>&nbsp;5 to 7 years of related experience with a consumer packaged goods background<br />
	<br />
	<strong>Education Required: </strong>&nbsp;B.S. Chemical Engineering, Food Process Engineering, Agriculture Engineering with Food Processing emphasis<br />
	&nbsp;</p>
<p>
	<strong>Responsibilities Include:</strong></p>
<ul>
	<li>
		Identification, assessment, validation and documentation of process technology to&nbsp;&nbsp;&nbsp; deliver identified initiatives</li>
	<li>
		Conducts assessment and capability studies and supervises product startups/commercialization and provides on-site support to Project Engineers and Plant Operations</li>
	<li>
		Provides expertise in developing new and innovative manufacturing processes</li>
	<li>
		Provides on-site and remote technical services, observing processes, pinpointing and fixing problems to assure consistent quality and capacity</li>
	<li>
		Creates, designs, supervises the development of new process/equipment and experimental protocols required to validate product concepts and prototypes</li>
	<li>
		Provides leadership, guidance, and career development to a more junior process engineer and outsourced resources. Anticipates short and long term employee requirements and leads efforts to meet their needs</li>
</ul>
<p>
	&nbsp;</p>', '', '1283', 'Process Development Engineer', '2009-12-04 00:00:00', 2, '$90-110,000; + 10% bonus', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (23, 1, 9, '<p>
	<strong>Experience Required:</strong> At Least 2 years manufacturing experience, multi-disciplinary engineering experience helpful<br />
	<strong>Education Required:</strong> BS/MS degree in Engineering or related technical field (Environmental, Civil, Mechanical, Electrical)<br />
	&nbsp;</p>
<ul>
	<li>
		Position reports directly to the Plant Maintenance Manager</li>
	<li>
		Objectives focus is to drive asset optimization practices in conjunction with Maintenance Manager through reliability automation, standardization and simplification practices</li>
	<li>
		Partners with Engineering and Operations to facilitate the process of cross-functional problem solving</li>
	<li>
		This position is a key interface between Maintenance and Engineering personnel to ensure that resources are focused on increased reliability</li>
	<li>
		Coordinates with Engineering to ensure reliability and maintainability principles are integrated into all capital projects</li>
	<li>
		Responsible for developing and maintaining an Equipment Reliability Program that incorporates root cause analysis, predictive technologies, equipment failure database and maintenance excellence performance</li>
	<li>
		Responsible for Reliability cost reduction goals on an annualized basis.</li>
	<li>
		Qualifications:</li>
	<li>
		Understands problem solving methodology and can facilitate cross-functional teams through complex situations, resulting in root cause failure analysis</li>
	<li>
		Can promote equipment maintainability factors that need to be considered at the various stages of capital project implementation</li>
	<li>
		Has a broad &ldquo;systems&rdquo; perspective on maintainability and reliability</li>
	<li>
		Understands maintenance and reliability performance metrics. Utilizes measures that are essential to meet &ldquo;best in class&rdquo; maintenance performance objectives</li>
	<li>
		Understands the elements of Preventive/Predictive maintenance programs. Experienced in the appropriate application of condition monitoring technologies (infrared thermography, vibration analysis, tribology, motor analysis etc)</li>
	<li>
		Understands the impact of design, installation, commissioning and verification phases; the life cycle of a capital project.</li>
	<li>
		Understands and can develop &rdquo;Best Practices&rdquo; for maintenance functions and activities. Able to develop and use trend analysis techniques (Pareto, histograms, scatter charts, graphs etc)<br />
		&nbsp;</li>
</ul>', 'Engineering', '1285', 'Reliability Engineer', '2009-06-22 00:00:00', 9, '$60-85,000; +  bonus; + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (43, 0, 7, '<p>
	<strong>Responsibilities</strong></p>
<ul>
	<li>
		Performs routine research and development activities concerned with the chemical, biological and/or physical nature of food in order to evaluate and improve the quality of existing products and related processes and to develop new products and processes</li>
	<li>
		Prepares prototype products using research lab, pilot lab, manufacturing facilities and equipment, as required</li>
	<li>
		Develops solutions to routine technical problems by applying basic technical knowledge and experience</li>
	<li>
		Sets-up, operates and maintains pilot lab and research lab equipment</li>
	<li>
		Selects and evaluates raw materials</li>
	<li>
		Conducts shelf life studies, including product and package performance evaluations under various conditions</li>
	<li>
		Makes presentations of results and recommendations to various groups, both internally and externally</li>
	<li>
		Establishes contact with ingredient suppliers and equipment vendors as needed by project activity</li>
	<li>
		The person in this role will develop a high level of Optiva understanding and the ability to apply it to facilitate workflows for the desserts team</li>
	<li>
		Maintains an understanding of all of the dessert manufacturing processes to ensure the accuracy of Optiva data. This includes interfacing with QA and operations at all desserts facilities to ensure that the proper process instructions and order of operations are documented</li>
	<li>
		Writes ingredient and finished product specifications, and enters them into Optiva</li>
	<li>
		Maintains and updates, as necessary, current formulas and BOM&#39;s in Optiva</li>
	<li>
		Performs routine assignments, small projects or manages segments of larger projects, assisting in defining project objectives, organizing and prioritizing tasks and conducting experiments and analyses</li>
	<li>
		Maintains accurate, up to date records, laboratory notebooks and computer database that repeatable and reproducible</li>
	<li>
		Performs measurements and statistical analysis</li>
	<li>
		Ensures the work environment is sanitary, safe, and orderly</li>
	<li>
		Travels regularly (up to 25% of time)</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<strong>Education Required</strong>: Bachelors Degree in Food Science<br />
	<br />
	<strong>Experience Required</strong>: 0-2 years experience.<br />
	<br />
	&nbsp;</p>
', '', '1337', 'Food Technologist - Bakery', '2010-04-05 00:00:00', 2, '$42,000 - $47,000 + 5% bonus', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (27, 1, 7, '<p>
	<strong>Responsibilities: </strong></p>
<ul>
	<li>
		The coordination of complex and multi disciplined product development projects with minimal supervision. This includes ensuring that objectives, budget, and timelines are met</li>
	<li>
		Conduct bench, pilot plant, and plant trials to create prototypes for consumer testing</li>
	<li>
		The identification and/or innovative creation of new &amp; unique concepts/ingredients/formulas/prototypes to achieve business goals of commercializing new products and product forms</li>
	<li>
		Innovative and practical application/modification of existing technologies to achieve business goals of commercializing new products or line extensions</li>
	<li>
		Works in a team environment ensuring alignment with cross functional partners including Marketing, QC, Process Development, Packaging Development, Finance, Operations, and Purchasing</li>
	<li>
		Providing technical specifications and support to assure smooth rollouts of new products or line extensions into operations</li>
	<li>
		Comprehensive product documentation to enable smooth commercialization and training of plant personnel</li>
</ul>
<p>
	<strong>Principal Accountabilities: </strong></p>
<ul>
	<li>
		Identification, assessment, and validation of formulations from bench top to commercialization (60%)</li>
	<li>
		Ensures all proper documentation is done correctly and on schedule (15%)</li>
	<li>
		Manages the financial aspects of Product Development including ingredient costs and plant trials (10%)</li>
	<li>
		Fosters an innovation culture in&nbsp;company &nbsp;by continually introducing new ideas and product concepts (5%)</li>
	<li>
		Creates, designs, supervises the development of new experimental protocols/best practices required to validate product concepts and prototypes (5%)</li>
	<li>
		Independently directs the activities of outside vendors including ingredients and services (5%)</li>
</ul>
<p>
	<strong>Job Complexity</strong></p>
<ul>
	<li>
		This position requires the ability to interact and communicate effectively with Sr. Management as well as Plant Management. The Sr. Technologist must be a good problem solver, able to identify, interpret and analyze the correct data, and provide detailed directions to development projects</li>
	<li>
		Maintains active knowledge and understanding in areas beyond Product Development including Process and Package Development, QA, Project Engineering, and thorough understanding of Marketing needs and financial hurdles</li>
	<li>
		Sustain a high level of competence and professionalism in a dynamic business environment</li>
	<li>
		Easily adapts to changing priorities</li>
</ul>
<p>
	&nbsp;<br />
	<strong>Education</strong>: BS in Food Science or related field<br />
	<br />
	<strong>Experience</strong>: 5-15 years experience<br />
	<br />
	&nbsp;</p>
', '', '1317', 'Senior Product Development Technologist', '2010-01-04 00:00:00', 2, '$90 - $105,000', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (70, 0, 7, '<p>
	<strong>SUMMARY<br />
	</strong>Responsible for leading a small group of R&amp;D process developers to evaluate and develop new processing technologies in lab, pilot plant and factory settings.<br />
	<br />
	<strong>REQUIRED EXPERIENCES</strong></p>
<ul>
	<li>
		Program and project management. &ndash; creating, managing and communicating timelines, execution of plans, &amp; contingency plans</li>
	<li>
		Coaching junior talent to advance projects</li>
	<li>
		Communication of project objectives, plans and status to cross functional teams, especially to R&amp;D and Supply Chain audiences in verbal and written forums</li>
	<li>
		Experience leading functional and cross-functional team meetings.</li>
	<li>
		Design and analysis of experiments</li>
	<li>
		Development of technologies in the lab &amp; pilot plant in the Food/FMCG industry</li>
</ul>
<p>
	<br />
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Manage junior talent to advance projects in a systematic and technically rigorous fashion</li>
	<li>
		Lead team meetings</li>
	<li>
		Design experiments and analyze results</li>
	<li>
		Communicate updated program timelines/status to R&amp;D &amp; Supply Chain teams</li>
	<li>
		Facilitate project alignment between Marketing, R&amp;D, &amp; Supply Chain&nbsp;</li>
	<li>
		Must be able to be on-site 3 days a week&nbsp;</li>
</ul>
<p>
	&nbsp;<br />
	<br />
	<br />
	: <br />
	<br />
	<br />
	&nbsp;</p>
', '', '1359', 'Technical Program Manager', '2010-05-24 00:00:00', 21, '$100-120 + bonus + relocation assistance', '0', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (73, 0, 7, '<p>
	<strong>Overview<br />
	</strong>Responsible for the creative formulation of novel beverage prototypes as well as the beverage execution to the commercialization stage<br />
	<br />
	<strong>Principal Duties and Responsibilities </strong></p>
<ul>
	<li>
		Develop strong working relationships with outside vendors (flavor houses, consultants) to create innovative and cost effective combinations of flavors, juices and functional ingredients to deliver speed to market beverage prototypes ready for commercialization</li>
	<li>
		Articulate key flavor and sensory descriptors and attributes</li>
	<li>
		Understand flavor regulatory issues within the US, Canada and International communities</li>
	<li>
		Lead and participate in cross functional team environments to ensure product commercialization success</li>
	<li>
		Manage the development and commercialization of new beverage products (plans projects, designs experiments, collects data, and analyzes results and commercializes in plants , conducts bench top development)</li>
	<li>
		Plan for contingencies and be flexible when a project direction changes</li>
	<li>
		Identify and utilize new technologies to bring competitive advantage to Company</li>
	<li>
		Identify and implement process improvement and cost savings and other opportunities related to flavor, juice or ingredient applications to achieve the development of products. Participate in development strategy and supplier base qualification</li>
	<li>
		Maintain specifications and documentation on projects under areas of responsibility</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong></p>
<ul>
	<li>
		Bachelor&#39;s Degree in Food Science is required - a Master&#39;s Degree is preferred</li>
	Experience Required
	<li>
		Candidates should have a minimum of 5-7 years of experience developing beverages from concept to commercialization</li>
	<li>
		Proficient in Microsoft Word, Excel, PowerPoint</li>
	<li>
		Effective communication skills (oral, written and presentation)</li>
	<li>
		Proven track record in developing beverages and ability to understand and apply the process of screening and combining flavors and juice concentrates for speed to market delivery of innovative and cost effective beverages</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1361', 'Senior Flavor Application Scientist', '2010-05-24 00:00:00', 6, '$70-110k + bonus + relocation assistance', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (74, 1, 7, '<p>
	<strong>Overview</strong></p>
<p>
	Senior Product Development Scientist to lead the research, development and commercialization of new food and beverage products. As a project leader or key member of a cross-functional team (Marketing, Procurement, Operations, Sales, Finance) the Senior Professional drives large-scale new product development programs.<br />
	<br />
	<strong>Principal Duties and Responsibilities</strong></p>
<ul>
	<li>
		Manage the development and commercialization of new food and beverage products (plans projects, designs experiments, collects data, and analyzes results)</li>
	<li>
		Identify and exploit new technologies to bring competitive advantage to Company</li>
	<li>
		Identify and implement process improvement, cost savings, and other opportunities related to product development</li>
	<li>
		Participate in evaluating potential suppliers to leverage their expertise</li>
	<li>
		Maintains specifications and documentation on projects under areas of responsibility</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		Bachelor&#39;s Degree in Food Science is required - a Master&#39;s Degree is preferred</li>
</ul>
<p>
	<br />
	<strong>Experience Required </strong></p>
<ul>
	<li>
		Candidates should have a minimum of 7 years of experience developing products and/or reformulating products in a food or beverage company.</li>
	<li>
		Candidates must have experience leading/participating in cross functional team environments. Proficiency in MS Word, Excel and PowerPoint is expected</li>
	<li>
		Candidates should have excellent communication skills (oral, written, presentation)</li>
	<li>
		It is also very important that candidates have the ability to plan for contingencies and be flexible when a project direction changes</li>
</ul>
<p>
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1362', 'Senior Product DevelopmentScientist', '2010-05-24 00:00:00', 6, '$70-110k + bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (75, 0, 3, '<p>
	<strong>Position Description</strong></p>
<ul>
	<li>
		This position will utilize engineering fundamentals to identify, analyze, and design cost effective, profitable processing technologies focusing on Bakery Applications</li>
	<li>
		Identify and implement manufacturing process improvement for existing manufacturing systems that result in annualized savings that exceed $750,000 per year</li>
	<li>
		Evaluate, develop, and implement breakthrough food processing technologies that can be applied in the Bakery category profitably and with competitive advantage</li>
	<li>
		Identify and develop the tools and methodology to effectively survey the food industry and identify emerging food process innovations that Company should consider in order to maintain our competitive advantage</li>
	<li>
		Design efficient and capable manufacturing processes for new products and increase return on net assets (RONA) by utilizing /modifying current lines to produce new, more profitable product or produce current products more profitably</li>
	<li>
		Provide appropriate direction regarding process engineering improvements consistent with the New Technologies strategy</li>
	<li>
		Strong track record of identifying and executing processing innovations</li>
	<li>
		Strong track record of technical leadership, project management, cross-functional alignment and technology development and transfers</li>
	<li>
		Demonstrated technical knowledge and ability to design manufacturing processes, conduct pilot plant trials and scale up processes for successful commercialization</li>
	<li>
		Ability to use statistical analysis, engineering economic analysis, and problem solvingtechniques to deliver business results in line with company strategy. Ability to influence decision making based on solid data and technical analysis</li>
	<li>
		Ability to work independently and with cross functional project teams</li>
	<li>
		Requires travel approximately 30% of the time</li>
</ul>
<p>
	<br />
	<strong>Education Required:</strong> BS, MS, or PhD in an Engineering discipline (prefer Food, Chemical, Mechanical)<br />
	<br />
	<strong>Experience Required:</strong> Minimum of 12 years experience (at the B.S. level) in food processing, pharmaceutical or chemical engineering.<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1364', 'Senior Process Developer', '2010-05-24 00:00:00', 2, '$83,200; Bonus: 15% to 30%', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (40, 0, 11, '<p>
	<strong>POSITION SUMMARY<br />
	</strong>Serve as Corporate trainer, technical resource/trouble-shooter, and auditor to domestic plants. Areas of expertise may include but are not limited to plant sanitation, product specification, USDA/FDA government compliance, food safety standards, product traceability and recovery, and continuous improvement. Provide leadership and support to plant quality assurance personnel and company management.<br />
	<br />
	<strong>MAJOR POSITION RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Collaborate with plants in implementation of company-wide quality assurance policies and guidelines related to microbiological issues or processing lethality</li>
	<li>
		Provide research, guidance and technical support to internal and external customers in the areas of microbiology, general food science, quality assurance practices (both general and proprietary) and food safety</li>
	<li>
		Works effectively to obtain Corporate and Plant support to accomplish the mission of the position</li>
	<li>
		Maintains the Corporate Sanitation Policy Manual, conducts Sanitation Policy Audits and Follow-up, and collaborates to develop and maintain training material for in-plant sanitarians</li>
	<li>
		Conducts Sanitary Design Audits of new and existing processing equipment. Serves as a liaison with Corporate Engineering to develop corrective actions and monitor plant activity with follow-up</li>
	<li>
		Review micro performance for Listeria monitoring programs and pre-operational results on a weekly basis</li>
	<li>
		Provides technical assistance to plant quality assurance personnel and sanitation to solve cleaning and microbiological issues and to assist in the continuous improvement of Sanitation crew effectiveness and performance</li>
	<li>
		Serve as liaison to customer Sanitation experts during 3rd party audits and other customer visits where plant sanitation is evaluated</li>
	<li>
		Serve as a liaison to sanitation vendors as well as 3rd party sanitation service providers</li>
	<li>
		Participates in the development, implementation and maintenance of the food safety emergency response program</li>
	<li>
		Participate in plant sanitation meetings as appropriate</li>
	<li>
		Provides technical resources, verifies environmental sampling plans when plants undergo structural changes/construction and provides associated follow-up</li>
	<li>
		Semi-annual Sanitation Conference organizer</li>
	<li>
		Conduct reviews and analysis of customer complaints related to product quality for the Corporate Insurance department</li>
	<li>
		Develop and maintain contacts within the meat industry in order to maintain the latest and most current information on the state of food safety, industry direction and food sanitation issues that affect the operations of the Company</li>
	<li>
		Responsible for sanitation section of a quality newsletter (when developed)</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		BS in microbiology, food science, animal science or related field required. An advanced degree preferred</li>
</ul>
<p>
	<strong>Experience Required</strong>:</p>
<ul>
	<li>
		Strong verbal/non-verbal and written communication skills</li>
	<li>
		Five to seven years in managing quality in a meat processing environment</li>
	<li>
		Thorough knowledge of HACCP, food safety and GMP principles</li>
	<li>
		Ability to travel a minimum of 50%</li>
</ul>
', '', '1331', 'Manager Technical Services/Sanitation', '2010-03-26 00:00:00', 8, '90-110k + 10% bonus + relocation assistance', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (33, 0, 6, '<p>
	<strong>SUMMARY<br />
	</strong>Responsible for leading process development projects that transform the way in which the company produces products. This includes developing &amp; optimizing new technologies and implementing them at factory scale. Projects will focus on cultured products, fluid milk products, &amp;/or non-dairy beverage products.<br />
	<br />
	<strong>REQUIRED EXPERIENCES</strong></p>
<ul>
	<li>
		Proven track record of developing new/improved technologies</li>
	<li>
		Working with experimental designs, statistics, and consumer testing to plan projects and make decisions</li>
	<li>
		Demonstrated ability to use strong technical insight and logic in making decisions</li>
	<li>
		Demonstrated strong project leadership &ndash; developing and following timeline plans in order to deliver objectives</li>
	<li>
		Proven track record of being a self starter and being able to work autonomously to plan, implement, monitor and deliver objectives</li>
	<li>
		Demonstrated ability to be a strong R&amp;D voice within cross-functional settings, using logical scientific arguments to influence others and make decisions</li>
	<li>
		Ability to communicate in a compelling fashion with junior and senior levels in the Supply Chain organization and in R&amp;D</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<strong>RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Conduct technical feasibility assessments and intellectual property plans for new technologies through lab and pilot plant trial experimentation</li>
	<li>
		Scale-up and implement new process technologies at factory level</li>
	<li>
		Create process design scopes to define manufacturing specifications and capital requirements</li>
	<li>
		Act as technical subject matter expert for the company</li>
	<li>
		Work directly with research institutes, suppliers, manufacturing facilities, and Supply Chain organization to achieve goals</li>
	<li>
		Facilitate communication and project alignment between Marketing, R&amp;D, and the Supply Chain organizations</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong>: Bachelor&rsquo;s degree in Chemical or Food Engineering or similar technical discipline <br />
	<br />
	<strong>Experience Required</strong>: 3-6 years experience in the Consumer Packaged Goods industry; R&amp;D process development experience; Experience with fluid thermal processing applications; Dairy products and/or soy beverages experience desired<br />
	<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1325', 'Engineer -- R&D Process Development', '2010-02-17 00:00:00', 9, '$60-85,000 + bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (35, 1, 7, '<p>
	<strong>JOB PURPOSE<br />
	</strong>This position is responsible for the design, development and commercialization of batter and breading formulas for use in food processing. This employee will work directly with key customers to successfully commercialize products through final application in customer&rsquo;s manufacturing facilities. This employee will also design, develop and commercialize products for Food Processing and Food Service customers, in the baking mix and dry beverage categories.<br />
	<br />
	<strong>RESPONSIBILITIES AND INFLUENCE </strong></p>
<ul>
	<li>
		Develops bench top formulations for new product development, product enhancement, optimization and process improvement</li>
	<li>
		Manages the project plan, schedule and resources to meet the development objective&nbsp;</li>
	<li>
		Manages the commercialization process through manufacturing and customer&rsquo;s application</li>
	<li>
		Presents new products, technical solutions and optimization opportunities to R&amp;D, sales and key customers</li>
	<li>
		Provides test directions and specifications on new products that measure key functional and sensory attributes</li>
	<li>
		Provides technical support to customers, sales &amp; manufacturing</li>
	<li>
		Maintains key account relationships</li>
	<li>
		Supports cost saving initiatives through ingredient, product &amp; process optimization</li>
	<li>
		Utilizes outside technical resources, information and vendors for innovation, optimization and improvements</li>
	<li>
		Ability to travel up to 35% of the time and work a flexible work schedule</li>
</ul>
<p>
	<strong>ESSENTIAL FUNCTIONS, SKILLS AND ATTRIBUTES<br />
	Leadership</strong></p>
<ul>
	<li>
		Creates an environment that encourages and rewards teamwork and collaboration, both internally and externally</li>
	<li>
		Whole problem solver, implements solutions to solve root cause problems. Strong analytically</li>
</ul>
<p>
	<strong>Technical Capability</strong></p>
<ul>
	<li>
		Ability to match/reverse engineer products in the marketplace</li>
	<li>
		Strong competence and technical background in flour, starch, leavening, hydrocolloids, fats &amp; oil, spices and flavorings</li>
	<li>
		Product development knowledge of batters and breading on a variety of substrates</li>
	<li>
		Strong desktop applications competence (Excel, Access, Word &amp; CM systems)</li>
	<li>
		Excellent project management skills</li>
	<li>
		Excellent decision making skills.</li>
	<li>
		Ability to balance service and cost while meeting or exceeding customer expectations</li>
</ul>
<p>
	<br />
	<strong>Education Required:</strong></p>
<ul>
	<li>
		B.S. or M.S in Food Science or related field</li>
</ul>
<p>
	<br />
	<strong>Experience Required</strong>:</p>
<ul>
	<li>
		5+ years progressive product development experience specializing in batter and breading development</li>
	<li>
		Working knowledge of Stage Gate commercialization process is desirable</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1328', 'Food Scientist', '2010-03-02 00:00:00', 3, '$70,000 - 80,000 + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (45, 0, 7, '<p>
	<strong>Responsibilities</strong></p>
<p>
	&nbsp;</p>
<ul>
	<li>
		Manages and conducts complex applied research projects to advance product development, process and technology platforms for company. Performs analyses, tests and experiments to develop and/or improve materials.</li>
	<li>
		Organizes, executes and interprets advanced technical research projects in product or process development through the application of advanced principles and practices in a scientific specialty with internal and external groups to resolve and provide solutions / improvements</li>
	<li>
		Ensures the work environment is sanitary, safe, and orderly Develops technical solutions to complex problems, functioning as an internal expert and troubleshooter in area of specialty</li>
	<li>
		As a member of a team, organizes advanced projects in product/process development through the application of advanced principles and practices on multiple interdisciplinary projects, establishing the acceptance criteria for research results. Works on individual assignment, conducts independent research in product or process development or specific area of expertise.</li>
	<li>
		Sets-up, operates and maintains pilot lab and research lab equipment</li>
	<li>
		Selects and evaluates raw materials</li>
	<li>
		Designs and conducts shelf life studies, including product and package performance under various conditions and makes recommendations for appropriate adjustments in product and/or package as required</li>
	<li>
		Influences the direction of projects based upon expertise and suggests new projects based on discoveries</li>
	<li>
		Makes presentations of results and recommendations to various groups, both internally and externally. Writes and edits reports and regular updates to provide concise summaries of project work.</li>
	<li>
		Works with outside labs, universities, ingredient suppliers, and equipment vendors as needed by project activity</li>
	<li>
		Manages and conducts multiple, independent and complex research and/or development projects. Defines project objectives, organizing and prioritizing tasks and conducting experiments and analyses</li>
	<li>
		Supplies technical inspiration and leadership to many projects/initiatives</li>
	<li>
		Maintains accurate, up to date records, laboratory notebooks and computer database that repeatable and reproducible</li>
	<li>
		Performs measurements and statistical analysis</li>
	<li>
		Invents new technical areas and unique approaches</li>
	<li>
		Translates technical knowledge and scientific information into product/process</li>
</ul>
<p>
	<br />
	<strong>Education Required:</strong> B.S. degree in Food Science or related field <br />
	<br />
	<strong>Experience Required</strong>: 6+ years experience; M.S. and 3 years or Ph.D and 2 years;<br />
	Experience expected to have resulted in a solid record of accomplishment such as demonstrated by products /process/ experimental design<br />
	<br />
	&nbsp;</p>
', '', '1338', 'Scientist - Bakery', '2010-04-05 00:00:00', 2, '$72,000 – 83,000 + 10% bonus', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (46, 1, 3, '<p>
	<strong>SUMMARY<br />
	</strong>The Process Development Group Leader will be responsible for day-to-day project work and the development of new manufacturing processes for new beverages. This position reports directly to the R&amp;D Process Development Manager.<br />
	<br />
	The launch of Product and current development of new beverages will utilize (and require) many new food/beverage processing technologies, such as granulation, sizing, spray drying, aromatization, coating, mixing &amp; blending. The Process Development Group Leader is the in-house expert for the identification and development of process technology, from pilot scale, scale-up, through commercial testing. Therefore, the successful candidate will have experience in dry processing, but in wet processing as well. This will require her/him to have a firm understanding of process microbiology and food stabilization processes such as acid/pasteurization and sterilization. New products will involve many diverse ingredients, including dairy, emulsifiers, flavors, food colors, sweeteners, nutraceuticals, and process aids. A sound understanding of food and physical chemistry is thus required.<br />
	<br />
	<strong>SUPERVISORY RESPONSIBILITIES </strong><br />
	Supervise Process Development Scientist(s) at a future date <br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Research and develop new processes for manufacturing new beverages. It is anticipated that there will be 8 new products annually</li>
	<li>
		Conduct equipment selection, pilot/scale-up tests, factory acceptance testing, process qualification</li>
	<li>
		Develop process specifications</li>
	<li>
		Identify and develop external contract manufacturing / suppliers</li>
	<li>
		Evaluate and qualify process technology / processing parameters leading to the ability to quickly produce new beverages</li>
	<li>
		Set-up and maintain laboratory facilities and support others to develop new products</li>
	<li>
		Assist Engineering in the selection, testing and start-up of new processing equipment</li>
	<li>
		Solve specialized technical problems</li>
	<li>
		Work with operations to ensure the successful production start-ups of new beverage products and to determine production equipment for new beverages is fully-functionalPartner with the Product Development Group to develop and test products</li>
	<li>
		Coach direct reports to enhance Process Development skill and in-house capacity to develop new beverages</li>
	<li>
		Carry out supervisory responsibilities in accordance with the organization&#39;s Principles, policies and applicable laws&nbsp;</li>
	<li>
		Accountable for communication, interviewing and hiring, training Product Development employees; planning, assigning and directing work, leveraging team and individual strengths, managing performance; rewarding and disciplining employees; addressing complaints and solving problems to ensure high performance results</li>
</ul>
<p>
	<br />
	<strong>OTHER NECESSARY FUNCTIONS</strong></p>
<ul>
	<li>
		Establishment and commitment to project timelines (factory start-up&rsquo;s and new product rollout&rsquo;s)</li>
	<li>
		Invention and/or adaptation of process technology and methods</li>
	<li>
		She/he will use employees, vendors and consultants to run the necessary experiments and tests to demonstrate a successful means for producing the new beverage</li>
	<li>
		Commitment in time to train new engineers and technicians</li>
	<li>
		Getting More Done with Less: This will require the Process Development Group Leader to find ways to execute projects with minimum resources. Initially, the position will have no direct reports. Conducting the required work to develop the new processes will require out-sourcing and the development of suitable R&amp;D partners</li>
	<li>
		Establishing a company Proprietary Multi-Purpose Pilot Plant: the Process Development Group Leader will need to specify, install, operate and maintain unit operations and associated systems</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		Degree in Chemical Engineering or Food Engineering, Advanced degree a plus</li>
</ul>
<p>
	<strong>Experience Required</strong>:</p>
<ul>
	<li>
		A minimum of 5 years of food or beverage Process Development is a must&nbsp;</li>
	<li>
		Experience at managing a group of a least 1-4, R&amp;D team preferred</li>
	<li>
		Beverage experience is highly desirable. Experience working with outside vendors (contract processors) is required</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<br />
	&nbsp;</p>
', '', '1339', 'Process Development Group Leader ', '2010-04-07 00:00:00', 2, '80-95k + 5% bonus and some relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (68, 1, 10, '<p>
	<strong>POSITION SUMMARY<br />
	</strong>Serve as Corporate trainer, technical resource/trouble-shooter, and auditor to domestic plants. Areas of expertise may include but are not limited to plant sanitation, product specification, USDA/FDA government compliance, food safety standards, product traceability and recovery, and continuous improvement. Provide leadership and support to plant quality assurance personnel and company management.<br />
	<br />
	<strong>MAJOR POSITION RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Collaborate with plants in implementation of company-wide quality assurance policies and guidelines related to microbiological issues or processing lethality</li>
	<li>
		Provide research, guidance and technical support to internal and external customers in the areas of microbiology, general food science, quality assurance practices (both general and proprietary) and food safety</li>
	<li>
		Works effectively to obtain Corporate and Plant support to accomplish the mission of the position</li>
	<li>
		Maintains the Corporate Sanitation Policy Manual, conducts Sanitation Policy Audits and Follow-up, and collaborates to develop and maintain training material for in-plant sanitarians</li>
	<li>
		Conducts Sanitary Design Audits of new and existing processing equipment. Serves as a liaison with Corporate Engineering to develop corrective actions and monitor plant activity with follow-up</li>
	<li>
		Review micro performance for Listeria monitoring programs and pre-operational results on a weekly basis</li>
	<li>
		Provides technical assistance to plant quality assurance personnel and sanitation to solve cleaning and microbiological issues and to assist in the continuous improvement of Sanitation crew effectiveness and performance</li>
	<li>
		Serve as liaison to customer Sanitation experts during 3rd party audits and other customer visits where plant sanitation is evaluated</li>
	<li>
		Serve as a liaison to sanitation vendors as well as 3rd party sanitation service providers</li>
	<li>
		Participates in the development, implementation and maintenance of the food safety emergency response program</li>
	<li>
		Participate in plant sanitation meetings as appropriate</li>
	<li>
		Provides technical resources, verifies environmental sampling plans when plants undergo structural changes/construction and provides associated follow-up</li>
	<li>
		Semi-annual Sanitation Conference organizer</li>
	<li>
		Conduct reviews and analysis of customer complaints related to product quality for the Corporate Insurance department</li>
	<li>
		Develop and maintain contacts within the meat industry in order to maintain the latest and most current information on the state of food safety, industry direction and food sanitation issues that affect the operations of the Company</li>
	<li>
		Responsible for sanitation section of a quality newsletter (when developed)</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		BS in microbiology, food science, animal science or related field required. An advanced degree preferred</li>
</ul>
<p>
	<strong>Experience Required</strong>:</p>
<ul>
	<li>
		Strong verbal/non-verbal and written communication skills</li>
	<li>
		Five to seven years in managing quality in a meat processing environment</li>
	<li>
		Thorough knowledge of HACCP, food safety and GMP principles</li>
	<li>
		Ability to travel a minimum of 50%</li>
</ul>
', '', '1331', 'Manager Technical Services,Sanitation', '2010-04-29 00:00:00', 8, '$90-110K + 10% Bonus', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (72, 1, 9, '<p>
	<strong>Position Summary </strong><br />
	The Commercialization Manager provides project leadership to cross functional teams that are responsible for execution of assigned projects (new product launches, line extensions, promotional packaging/pallet programs). The incumbent is also responsible for managing resources (time, people) to successfully execute team project goals. Communicates functional strategies to team, manages risk, executes approvals through change management process, and leads conflict resolution. This position provides management oversight for Operations project management, cost saving initiatives, and SKU rationalization management.<br />
	<br />
	<strong>Principal Duties and Responsibilities</strong></p>
<ul>
	<li>
		Leads cross functional teams responsible for assigned projects. Responsible for ensuring team meets overall project timeline &amp; critical path. Leads the team in Failure Mode and Effect Analysis and contingency plan creation. Responsible for managing the project through the PPPCA approval process and presenting status updates to key stakeholders and senior leadership. Manages team to create post activity assessments</li>
	<li>
		Ensures cross functional alignment at every stage of project. Provide conflict resolution to team members in order to achieve cross functional alignment. Ensures team members are contributing in a timely and appropriate manner.</li>
	<li>
		Manage and/or prepare project capital and POP2 funds</li>
	<li>
		Create improved speed to market by leveraging people, tools, key learning, and successes to create and institutionalize new methods to execute projects</li>
	<li>
		Provides management oversight and project leadership for Operations project management, CSI project management, and SKU rationalization management</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong><br />
	&bull; A Bachelor&rsquo;s Degree and 5-7 years of related experience is required<br />
	<br />
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Broad knowledge of Operational capabilities, processes, and systems</li>
	<li>
		Strong leadership, collaboration/peer relationship, influence, planning, business acumen, and problem solving skills</li>
	<li>
		Project management expertise with necessary IT skills (MS Project, Excel, SAP, etc) along with team building skills</li>
	<li>
		Excellent verbal and written communication skills</li>
</ul>
', '', '1360', 'Commercialization Manager', '2010-05-24 00:00:00', 6, '$90-110,000 + bonus + reloc allocation', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (52, 1, 7, '<p>
	<strong>Summary</strong> &ndash; Under direct supervision of the R&amp;D Manager; develop new products and improve or modify existing products in response to customer needs and market requirements. Establish processing procedures for manufacturing of new products and/or develops procedure changes to improve the quality and performance of existing products using scientific principles. <br />
	<br />
	<strong>Essential Duties and Responsibilities</strong></p>
<ul>
	<li>
		Works as member of research team assigned to specific development projects</li>
	<li>
		Creates and/or develops new products or improves/modifies existing products</li>
	<li>
		Documents all states of development and modifications in compliance with R&amp;D procedures</li>
	<li>
		Determines ingredients, nutritional and finished project specifications. Conducts sensory testing as needed for new products. Establishes test methods in collaboration with QA for ingredients and new finished products</li>
	<li>
		Oversees first production runs for new products to assure proper manufacturing, making adjustments as necessary so that product complies with finished product specifications.</li>
	<li>
		Interfaces with all major departments (purchasing, sales, production, marketing, QA/QC, vendors, etc.) as projects indicate</li>
	<li>
		Presents product to internal and external customers at interim stages of development</li>
	<li>
		Provides weekly reporting on projects. May also prepare scientific and technical reports as needed</li>
	<li>
		Must lead cross-functional teams during product development phase</li>
	<li>
		Travel as required to various Company locations and business related events</li>
	<li>
		Adhere to all company policies, procedures and safety rules as stated in the Employee</li>
	<li>
		Handbook and otherwise posted or communicated</li>
	<li>
		Exemplify the company core values of Partnership, Performance and Passion in all aspects of assigned duties</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong>: BS/MS from 4 year college <br />
	<br />
	<strong>Experience Required</strong>: 1-4 years experience in the food industry. Experience in food product development including and/or related to bakery mixes, fillings, and fruit fillings<br />
	<br />
	&nbsp;</p>
', '', '1343', 'Scientist I', '2010-04-15 00:00:00', 7, '$60-80K no bonus', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (82, 0, 7, '<p>
	<strong>Summary</strong></p>
<p>
	The Senior Research Scientist relates to a wide range of technical skills and many non-technical company functions. Applies scientific and engineering principles in research, development, production technology, quality control, packaging, processing, and utilization of foods by performing the following duties. As a fully competent scientist in all conventional aspects of the subject matter or the functional area of the assignments, plans and conducts work requiring a mastery of specialized techniques or ingenuity in selecting and evaluating approaches to unforeseen or novel problems. May be asked to lead technically complex and multi function project teams.</p>
<p>
	<strong>Responsibilities:</strong></p>
<ul>
	<li>
		Applies an analytical approach to the solution of a wide variety of problems and assimilates the details and significance of various scientific analyses, procedures, and tests</li>
	<li>
		Identify, evaluate and develop potential new business development opportunities</li>
	<li>
		Demonstrates initiative, creativity and thoroughness in the execution of complex projects</li>
	<li>
		Plans and conducts independent research projects and participates in the development of project objectives</li>
	<li>
		May lead cross-functional teams charged with the development of new business opportunities. Develops strong cross-functional relationships</li>
	<li>
		Conducts new product research and development of foods</li>
	<li>
		Contributes to the development of project strategies and recommends technical direction to management</li>
	<li>
		Fully understands food standards, safety and sanitary regulations, and good manufacturing practices</li>
	<li>
		Evaluates technical trends in their specific area of expertise or assignment, and makes recommendations for process or product improvements and identify opportunities for new or improved process or products</li>
	<li>
		Conducts or supervises the testing of new products in test kitchen, the development of specific processing methods in laboratory pilot plant and scaling products up in manufacturing facilities</li>
	<li>
		Maintains written technical documentation and product and process specifications</li>
	<li>
		Utilizes or directs internal (manufacturing, engineering, marketing, quality systems, procurement) and external (suppliers, consultants) functional experts to resolve issues</li>
	<li>
		May indirectly supervise one to two junior Scientists or technicians. Carries out supervisory responsibilities in accordance with the organization&#39;s policies and applicable laws. Responsibilities include interviewing, and training employees; planning, assigning, and directing work; appraising performance; rewarding and disciplining employees; addressing complaints and resolving problems</li>
</ul>
<p>
	<strong>Education and Experience Required</strong>: Bachelor degree (B.S.) in Food Science, or equivalent, and at least six years related experience; or Master degree (M.S.) or equivalent, and two to four years related experience; or Ph.D. degree with one to two years related experience. Process cheese, cheese foods, cheese spreads and cheese sauces experience preferred<br />
	<br />
	<br />
	&nbsp;</p>
', '', '1369', 'Senior Research Scientist', '2010-06-28 00:00:00', 9, '$80-95k + 12% + relocation assistance + visa application assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (79, 0, 2, '<p>
	<strong>SUMMARY</strong> <br />
	Directs and coordinates culinary activities by performing the following duties personally or through subordinates.<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Maintains and prioritizes the appropriate project mix (bench and customer support for various sales divisions and technical teams) for culinary team</li>
	<li>
		Conducts, or leads others within the team, to create new product and menu concepts, product applications, finished products and recipe.</li>
	<li>
		Provides cross-functional project leadership for designated product development or culinary driven projects</li>
	<li>
		Maintains and expands database of information about emerging culinary trends</li>
	<li>
		Provides external customer service to sales and marketing teams by customer site visits, problem solving, consultation and presentation</li>
	<li>
		Develops and maintains strong relationships with key customers and external culinary community</li>
	<li>
		Plans and formulates aspects of culinary proposals such as objective or purpose of project, costs of project, and equipment and human resource requirements</li>
	<li>
		Reviews and analyzes proposals submitted by others to determine if benefits derived and possible applications justify expenditures</li>
	<li>
		Approves and submits proposals considered feasible to management for consideration and allocation of funds or allocates funds from department budget</li>
	<li>
		Provides leadership in culinary demonstrations and training for internal and external audiences</li>
	<li>
		Develops and implements methods and procedures for monitoring projects such as preparation of records of expenditures and research findings, progress reports, and staff conferences, in order to inform management of current status of each project</li>
	<li>
		Initiates contacts with consulting firms to garner culinary support or culinary research for the department</li>
</ul>
<p>
	<br />
	<strong>SUPERVISORY RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Directly supervises 2 to 5 employees in the Research and Development Department. Carries out supervisory responsibilities in accordance with the organization&#39;s policies and applicable laws</li>
	<li>
		Responsibilities include interviewing, hiring, and training employees; planning, assigning, and directing work; appraising performance; rewarding and disciplining employees; addressing complaints and resolving problems</li>
</ul>
<p>
	<strong>Education Required:&nbsp; </strong>&nbsp;A.A.S, Culinary Arts degree and B.A or B.S. in Business or Natural Science field or related<br />
	<br />
	<strong>Experience Required:</strong> 15+ years of experience in a culinary position including at least five years either with a food manufacturer or restaurant chain business (&gt;50 stores)<br />
	<br />
	&nbsp;</p>
', '', '1365', 'Director of Culinary', '2010-06-09 00:00:00', 8, '$130-145,000 + 25% bonus + relocation', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (80, 0, 7, '<p>
	<strong>SUMMARY</strong> <br />
	Directs and coordinates culinary activities by performing the following duties personally or through subordinates.<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Maintains and prioritizes the appropriate project mix (bench and customer support for various sales divisions and technical teams) for culinary team</li>
	<li>
		Conducts, or leads others within the team, to create new product and menu concepts, product applications, finished products and recipe.</li>
	<li>
		Provides cross-functional project leadership for designated product development or culinary driven projects</li>
	<li>
		Maintains and expands database of information about emerging culinary trends</li>
	<li>
		Provides external customer service to sales and marketing teams by customer site visits, problem solving, consultation and presentation</li>
	<li>
		Develops and maintains strong relationships with key customers and external culinary community</li>
	<li>
		Plans and formulates aspects of culinary proposals such as objective or purpose of project, costs of project, and equipment and human resource requirements</li>
	<li>
		Reviews and analyzes proposals submitted by others to determine if benefits derived and possible applications justify expenditures</li>
	<li>
		Approves and submits proposals considered feasible to management for consideration and allocation of funds or allocates funds from department budget</li>
	<li>
		Provides leadership in culinary demonstrations and training for internal and external audiences</li>
	<li>
		Develops and implements methods and procedures for monitoring projects such as preparation of records of expenditures and research findings, progress reports, and staff conferences, in order to inform management of current status of each project</li>
	<li>
		Initiates contacts with consulting firms to garner culinary support or culinary research for the department</li>
</ul>
<p>
	<br />
	<strong>SUPERVISORY RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Directly supervises 2 to 5 employees in the Research and Development Department. Carries out supervisory responsibilities in accordance with the organization&#39;s policies and applicable laws</li>
	<li>
		Responsibilities include interviewing, hiring, and training employees; planning, assigning, and directing work; appraising performance; rewarding and disciplining employees; addressing complaints and resolving problems</li>
</ul>
<p>
	<strong>Education Required:&nbsp; </strong>&nbsp;A.A.S, Culinary Arts degree and B.A or B.S. in Business or Natural Science field or related<br />
	<br />
	<strong>Experience Required:</strong> 15+ years of experience in a culinary position including at least five years either with a food manufacturer or restaurant chain business (&gt;50 stores)<br />
	<br />
	&nbsp;</p>
', '', '1365', 'Director of Culinary', '2010-06-09 00:00:00', 8, '$130-145,000 + 25% bonus + relocation', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (54, 0, 10, '<p>
	<strong>Responsibilities</strong></p>
<ul>
	<li>
		Responsible for the administration of the company&rsquo;s quality and food safety system by planning, coordinating, and directing manufacturing plant quality assurance and food safety programs. Ensures continuous production of products consistent with established standards by performing te following duties personally or through subordinates.</li>
	<li>
		Researches, identifies, defines, and supports effective implementation of innovative or complex technical applications supporting strategic initiatives significantly affecting customer satisfaction, profitability, market leadership or other areas of comparable importance</li>
	<li>
		Establishes and maintains strong external relationships within the quality and food safety communities</li>
	<li>
		Effectively uses experience and strong internal and external relationships to anticipate and act on business and customer needs</li>
	<li>
		Provides leadership and direction for the development, interpretation and uniform application of FS/QA Systems throughout all manufacturing facilities</li>
	<li>
		Develops, implements, and maintains a system of policies and procedures to assure appropriate documentation and recording of essential processes, including Hazard Analysis Critical Control Point (HACCP)</li>
	<li>
		Plans, organizes, and supervises the work of a staff and cross-functional project teams</li>
	<li>
		Maintains Lab Quality System to generate accurate and legally defensible results</li>
	<li>
		Works with customers in establishing specifications, reviewing supplier agreements, and resolving quality concerns</li>
	<li>
		Explores, identifies, and defines improvement areas in order to improve quality and reduce total cost in support of strategic initiatives</li>
	<li>
		Reviews information systems and insures the are integrated across departments</li>
	<li>
		Leads the implementation of new QA systems</li>
	<li>
		Manages budgets for departments</li>
	<li>
		Directly supervises 5 Sr. Quality Managers. Indirectly supervises another 35-40 employees. Carries out supervisory responsibilities in accordance with the organization&#39;s policies and applicable laws. Responsibilities include interviewing, hiring, and training employees; planning, assigning, and directing work; appraising performance; rewarding and disciplining employees; addressing complaints and resolving problems</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<strong>Education</strong> </p>
<ul>
	<li>
		Bachelor&#39;s degree (B. S.) from four-year college or university in Food Science, Quality Management, or related science field</li>
	<li>
		Master&rsquo;s of Science Degree desirable</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<strong>Experience</strong></p>
<ul>
	<li>
		A minimum of 10 years of relevant, decision-making food quality and safety experience and ASQ Certified Manager of Quality / Organizational Excellence Certification</li>
	<li>
		Proficiency with Microsoft Suite applications (Word, Excel, Access, Visio, PowerPoint) required. Ability to become proficient with Controlled Documentum, Corporate Documentum, SAP, and Minitab. Expertise in SAP information systems and integration desirable</li>
</ul>
<p>
	&nbsp;</p>
<p>
	&nbsp;</p>
<p>
	<br />
	&nbsp;</p>
', '', '1351', 'Director Quality Assurance', '2010-04-28 00:00:00', 8, '$110-130k + 20% bonus', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (55, 1, 7, '                                        <p>
	<strong>SUMMARY</strong> <br />
	Directs and coordinates research and development technical activities for organizational products, services, or ideologies by performing the following duties personally or through subordinate supervisors.<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES </strong></p>
<ul>
	<li>
		Establishes current and long range objectives, plans and policies for department</li>
	<li>
		Communicates corporate priority for R&amp;D project mix (new product developments for various sales divisions, productivity, technical foundation building and early technology investigations)</li>
	<li>
		Collaborates with business division leadership to set direction to meet customer and consumer needs</li>
	<li>
		Support the culture of innovation across the department</li>
	<li>
		Creates and delivers technical budgets</li>
	<li>
		Allocates human resources and keeps their skills current with the needs of the organization and stakeholders</li>
	<li>
		Supports the developmental of Intellectual Property processes and the execution of contracts, agreements and patent development</li>
	<li>
		Develops and implements methods and procedures for improving department effectiveness and monitoring department activities</li>
	<li>
		Reviews operating results of the organization, compares them to established objectives, and takes steps to ensure that appropriate measures are taken to correct unsatisfactory results</li>
	<li>
		Establishes and maintains an effective system of communications throughout the department</li>
	<li>
		Analyzes new technologies and runs competitive analyses</li>
	<li>
		Provides external customer service to sales and marketing teams by customer site visits, problem solving, consultation and presentation, as needed</li>
	<li>
		Negotiates contracts with consulting firms to perform department services.</li>
	<li>
		Provides technical knowledge to Executive management with respect to Food/Dairy Science principles and product development techniques and processes</li>
	<li>
		Represents organization with external stakeholders</li>
</ul>
<p>
	<strong>SUPERVISORY RESPONSIBILITIES </strong></p>
<p>
	Directly supervises 4 to 7 employees in the Research and Development Department. Carries out supervisory responsibilities in accordance with the organization&#39;s policies and applicable laws. Responsibilities include interviewing, hiring, and training employees; planning, assigning, and directing work; appraising performance; rewarding and disciplining employees; addressing complaints and resolving problems.<br />
	<br />
	<strong>Education Required:</strong> Master&#39;s degree (M.S.) or equivalent; <br />
	<br />
	<strong>Experience Required:</strong> Six to ten years related experience and/or training; or equivalent combination of education and experience<br />
	&nbsp;</p>

                                    ', '', '1353', 'VP - R&D', '2010-04-28 00:00:00', 8, '$175 - 200K+ 30% bonus + car allowance        ', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (56, 0, 12, '<p>
	<strong>SUMMARY<br />
	</strong>Accountable for the region&rsquo;s overall performance in sales (commissioned, key account, and technical service representatives), margins, units and marketing efforts. Directs, manages and coordinates sale of Company products and services utilizing the approach, strategies and tactics prescribed by the Company. Leads assigned region to serve as a sustaining resource to the customers&#39; business by effective communication of Company&rsquo;s total product and service offerings. Follows and strengthens Company Sales Best Practices and overall sales strategies.<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<p>
	<strong>General Management</strong></p>
<ul>
	<li>
		Must speak Spanish</li>
	<li>
		Works in conjunction with other members of the Branch management group to develop the Branch Business Plan, including budget target strategies and action plans</li>
	<li>
		Recommends changes in structure and organization of sales group to ensure effective fulfillment of objectives assigned and to provide the flexibility to move swiftly in relation to market needs and opportunities</li>
	<li>
		Executes sales plans within the region, working through appropriate personnel.</li>
	<li>
		Manages the Branch retail and wholesale pricing strategy that will result in the optimal profitability and market share in all of the company&rsquo;s product lines</li>
	<li>
		Takes leadership role in the implementation of new and existing products at the Branch level working with and through the Branch General Management, Sales Reps and Key Account Sales Reps</li>
	<li>
		Participates in the organization and execution of Branch Sales Meetings as required</li>
	<li>
		Develops Sales Reps and Key Account Sales Associates. Completes performance evaluations and goal measurements of all sales personnel in assigned region</li>
	<li>
		Adhere to all company policies, procedures and safety rules as stated in the Employee Handbook and otherwise posted or communicated</li>
	<li>
		Exemplify the CSM core values of Partnership, Performance and Passion in all aspects of assigned duties</li>
</ul>
<p>
	<strong>Creating / Planning</strong></p>
<ul>
	<li>
		Works with General Management to ensure sales goals, share of market and profitability of the company&rsquo;s manufactured and resale products</li>
	<li>
		Oversees the Branch&rsquo;s promotional activities (in conjunction with overall Company marketing plan) with Company manufactured and resale product vendors</li>
	<li>
		Enforces Region&rsquo;s sales plans and programs to ensure profit growth and expansion of the company&rsquo;s manufactured products</li>
	<li>
		Implements all Company directed sales programs</li>
</ul>
<p>
	<strong>Financial</strong></p>
<ul>
	<li>
		Reviews operating results and compares them to established objectives, and takes steps to ensure that appropriate measures are taken achieve budget results and to meet Branch expectations.</li>
	<li>
		Supervises collection of customer payments with full accountability for Account&nbsp; Receivables</li>
</ul>
<p>
	<br />
	<strong>Education Required:</strong> Bachelor&#39;s degree<br />
	<br />
	<strong>Experience Required</strong></p>
<ul>
	<li>
		5-7 years of related experience and/or training; combination of education,</li>
	<li>
		experience and training</li>
	<li>
		Bakery experience a plus</li>
	<li>
		Participation in industry associations a plus</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<br />
	&nbsp;</p>
', '  ', '1354', 'Regional Sales Manager', '2010-05-04 00:00:00', 5, ' $90-105k + 20% bonus', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (57, 1, 12, '                                        <p>
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Responsible for the sales growth in the territory and achieving established budgets. Responsible for the sales execution of the company initiatives to promote Company&rsquo;s strategy of achieving the and maintaining the dominant market share position in the baking industry by taking steps necessary to identify and obtain orders for 100% of the supply needs of these customers.</li>
	<li>
		Develops budgets consistent with company expectations and territory potential. Analyzes performance in relationship to budget and develops sales plans necessary to meet desired results.</li>
	<li>
		Responsible for establishing a target account list. Compiles lists of prospective customers for use as sales leads, based on information from newspapers, business directories, and other sources. This list is to be well rounded to include but not limited to: restaurants, hotels, deli/cafes, bagel shops, schools, military bases, hospitals, prisons, specialty shops, bakeries, donut shops, ice cream manufacturers, etc., and any other group that needs supplies that are provided by Company</li>
	<li>
		Prepares territory analysis, pre-call planning, and on-time sales calls with the</li>
	<li>
		customer. Submits regular progress reports to Sales Management on status of target accounts, including estimated sales in dollars and units. Submits other reports as required</li>
	<li>
		Travels throughout assigned territory to call on regular and prospective customers to solicit orders and to generate interest on behalf of Company. The territory is to be assigned and subject to change at management discretion</li>
	<li>
		Displays and demonstrates product, using samples and product catalog Emphasizes saleable features of products and services utilizing a consultative selling approach</li>
	<li>
		Participates in product cuttings with customers to determine applicability of Company&rsquo;s products by tasting, smelling, and handling the product during the cutting. Presents company specials, promotions, and incentives to customers as directed by sales management.</li>
	<li>
		Maintains and quotes prices to customers. Maintains a pricing and margin structure as assigned by the Company.</li>
	<li>
		Maintains records of customer orders, current sales projects, and customer buying trends. Where allowed, prepares inventory of customers stock and compares to historic buying patterns to insure that customer order is sufficient to avoid customer from running out of inventory and requiring an emergency delivery</li>
	<li>
		Prepares and transmits orders via prescribed methodology in compliance with designated order cut-off times. Notifies customer of anticipated delivery date of ordered product, based on knowledge of Company&#39;s delivery schedules. Makes supplemental deliveries to customers, as needed</li>
	<li>
		Facilitates collection of customer payments with full accountability for accounts receivable activity with each account. Communicates and enforces company credit policy</li>
	<li>
		Analyzes customer and territory sales results. Develops actions to grow existing and or new business</li>
	<li>
		Notifies branch management of all competitive market information related the bakery ingredients industry. Communicates to Branch and Corporate management as instructed via telephone, in person, and email.</li>
	<li>
		Attends product and sales training as directed</li>
	<li>
		Perpetuates the growth of the Company brand to support company strategy</li>
	<li>
		Follows up on ALL customer requests and questions to ensure appropriate response is made and customer is satisfied. Treats all customers (both internal and external) with respect, courtesy, and kindness</li>
	<li>
		Adhere to all company policies, procedures and safety rules as stated in the Employee Handbook and otherwise posted or communicated</li>
	<li>
		Exemplify the CSM core values of Partnership, Performance and Passion in all aspects of assigned duties</li>
</ul>
<p>
	<br />
	<strong>Education Required:</strong> One year certificate from college or technical school<br />
	<br />
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Two years of hands-on bakery experience; two years of prior route sales experience, or equivalent combination of education and experience</li>
	<li>
		Prior Baking Industry experience highly desirable</li>
</ul>
<p>
	<br />
	&nbsp;</p>

                                    ', '', '1357', 'Sales Representative', '2010-05-04 00:00:00', 5, '$80-90k to start, commission only after 6-12 months; 120k potential', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (58, 0, 3, '<p>
	<strong>Function<br />
	</strong>Provide engineering and technical support for multiple production lines and production support functions to insure the efficient production of a quality product. Focus on maintaining reliable and safe manufacturing systems while improving production rates, efficiencies, yields, costs, and changeovers. Support, implement, and maintain food safety practices as required through SQF. Will be responsible for completing job duties in a manner that supports all plant safety, food safety, quality and environmental practices.<br />
	<br />
	<strong>Major Job Activities/Duties</strong></p>
<ul>
	<li>
		Apply standard engineering techniques in the analysis of existing production lines from raw materials to finished packages to provide safe and efficient manufacturing systems that meet quality, food safety, environmental and cost expectations</li>
	<li>
		Continually improve the rates, efficiencies, yields, and costs of manufacturing systems. Be actively involved in the development and implementation of the long-term improvement programs</li>
	<li>
		Initiate and cost justify capital equipment and system modifications to production lines in response to equipment performance and product quality issues</li>
	<li>
		Maintain a high level of equipment reliability utilizing maintenance, engineering, and appropriate resources to resolve equipment availability issues</li>
	<li>
		Maintain an up to date assessment of the production lines capabilities and restrictions</li>
	<li>
		Provide technical resources as required to other departments</li>
	<li>
		Provide training to production and maintenance personnel. Develop and implement standard operating procedures and parameters. Support and implement standard manufacturing practices across all production lines</li>
	<li>
		Provide a process engineering presence on the production floor to assure interaction with team members from all shifts and appropriate process engineering support and feedback for the teams</li>
	<li>
		Provide technical resources for incident investigation, root cause analysis and corrective action. Participate when requested in finished product and raw ingredient non-conformance process</li>
	<li>
		Provide night and weekend coverage as needed</li>
</ul>
<p>
	<br />
	<strong>Education Required</strong>: Bachelor of Science degree in Engineering. <br />
	<br />
	<strong>Experience Required</strong>:</p>
<ul>
	<li>
		Five or more years of engineering experience in a food processing plant environment</li>
	<li>
		Possess strong understanding of mechanical systems found in food manufacturing</li>
	<li>
		Experienced at analyzing process data and equipment performance data to improve product quality and optimize system throughput and reduce costs</li>
	<li>
		Knowledge of process improvement tools and techniques (Lean Manufacturing, Six Sigma, 5S, SPC, etc)</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1355', 'Process Engineer', '2010-05-04 00:00:00', 8, '$70-118k + 7.5% bonus + relocation assistance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (59, 0, 9, '<p>
	<strong>Summary</strong><br />
	Provide engineering and technical support for multiple production lines and production support functions to insure the efficient production of a quality product. Focus on maintaining reliable and safe manufacturing systems while improving production rates, efficiencies, yields, costs, and changeovers. Support, implement, and maintain food safety practices as required through SQF. Will be responsible for completing job duties in a manner that supports all plant safety, food safety, quality and environmental practices.<br />
	<br />
	<strong>Major Job Activities/Duties</strong></p>
<ul>
	<li>
		Apply standard engineering techniques in the analysis of existing production lines from raw materials to finished packages to provide safe and efficient manufacturing systems that meet quality, food safety, environmental and cost expectations</li>
	<li>
		Continually improve the rates, efficiencies, yields, and costs of manufacturing systems. Be actively involved in the development and implementation of the long-term improvement programs</li>
	<li>
		Initiate and cost justify capital equipment and system modifications to production lines in response to equipment performance and product quality issues</li>
	<li>
		Maintain a high level of equipment reliability utilizing maintenance, engineering, and appropriate resources to resolve equipment availability issues</li>
	<li>
		Maintain an up to date assessment of the production lines capabilities and restrictions.</li>
	<li>
		Provide technical resources as required to other departments</li>
	<li>
		Provide training to production and maintenance personnel. Develop and implement standard operating procedures and parameters. Support and implement standard manufacturing practices across all production lines</li>
	<li>
		Provide a process engineering presence on the production floor to assure interaction with team members from all shifts and appropriate process engineering support and feedback for the teams</li>
	<li>
		Provide technical resources for incident investigation, root cause analysis and corrective action. Participate when requested in finished product and raw ingredient non-conformance process</li>
	<li>
		Provide night and weekend coverage as needed</li>
</ul>
<p>
	<strong>Education Required:</strong> Bachelor of Science degree in Engineering. <br />
	<br />
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Five or more years of engineering experience in a food processing plant environment</li>
	<li>
		Possess strong understanding of mechanical systems found in food manufacturing</li>
	<li>
		Experienced at analyzing process data and equipment performance data to improve product quality and optimize system throughput and reduce costs</li>
	<li>
		Knowledge of process improvement tools and techniques (Lean Manufacturing, Six Sigma, 5S, SPC, etc)</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1355', 'Process Engineer', '2010-05-04 00:00:00', 8, '$70-118k + 7.5% bonus + relocation assistance', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (60, 0, 7, '<p>
	<strong>SCOPE OF POSITION</strong><br />
	Supervises technical activities directed at meeting project objectives with accountability for making recommendations on project design and direction. Plans and conducts project assignments. This is a project management role, not a personnel management role.<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Assume primary responsibility for major portions of product development projects and programs</li>
	<li>
		Assume a technical leadership role for assigned projects</li>
	<li>
		Supervise personnel that may be assigned to the project by department management</li>
	<li>
		Plan and conduct development activities, analyze and interpret results and recommend next steps. This position involves hands on development at the lab and plant level. Most tasks on project assignments will be conducted by the project leader</li>
	<li>
		Participate as a technical resource on multi functional project teams</li>
	<li>
		Effectively utilizes both internal and external resources to accomplish project objectives</li>
	<li>
		Communicate project status and recommend next steps to department management</li>
	<li>
		Provide input to department management on project timetables and resource needs</li>
</ul>
<p>
	<br />
	<strong>QUALIFICATIONS</strong></p>
<ul>
	<li>
		Coordinate and conduct project activities to meet assigned objectives</li>
	<li>
		Integrate project activities with the overall activities of the business team</li>
	<li>
		Formulate new products, design process procedures and conduct plant tests as appropriate providing all necessary documentation, analysis and follow up</li>
</ul>
<p>
	<strong>Education Required:</strong> BS/MS Food Science or equivalent<br />
	<br />
	<strong>Experience Required</strong></p>
<ul>
	<li>
		Minimum 5 years food product development experience from bench top to production start up is required</li>
	<li>
		Project/Program management: Minimum of 2 years of managing major segments of projects</li>
</ul>
<p>
	&nbsp;</p>
<p>
	<br />
	&nbsp;</p>
', '', '1345', 'Project Leader Product Development', '2010-05-05 00:00:00', 2, '$80-95k + bonus + relocation as needed', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (61, 0, 7, '<p>
	<strong>SCOPE OF POSITION</strong><br />
	Direct the technical programs and resource requirements for major business segments. Make technical and business recommendations to senior management to use as a basis for tactical and strategic business decisions. This position involves management of both technical programs and personnel. <br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Primary responsibility for the total product development programs for a segment of the business</li>
	<li>
		Primary responsibility for planning and implementation of product development programs to support identified business plan requirements</li>
	<li>
		Participate as an equal partner with Directors of other functional departments in identifying and evaluating business opportunities</li>
	<li>
		Ensure design and implementation of technically sound programs to meet business and strategic plan requirements</li>
	<li>
		Hands on development activities as required to meet project objectives. This will involve at times performing the tasks normally conducted by food technologists and project leaders</li>
	<li>
		Communicate effectively across diverse levels within and outside the organization</li>
	<li>
		Identify and document resource needs both internal and external to support agreed upon development programs. Effectively use all available resources</li>
	<li>
		Function as the key technical resource to the organization for a key business segment. Effectively influence the organization in consideration to technical requirements and expertise</li>
	<li>
		Primary responsibility for employee recruitment, training, performance evaluation and feedback and career development</li>
	<li>
		Identify and evaluate new areas of business and technical opportunities</li>
	<li>
		Lead multi functional teams</li>
	<li>
		Provide fact based input for administrative activities such as preparation and management of budgets, salary plans and resource plans</li>
</ul>
<p>
	<strong>QUALIFICATIONS</strong></p>
<ul>
	<li>
		Translating consumer needs and business objectives into actual products and processes that satisfy consumer needs and meet established business criteria</li>
	<li>
		Effectively combine sound technical knowledge and competence with managerial skills to successfully meet agreed upon business objectives with efficient use of available resources</li>
	<li>
		Participate in business decisions and impact company profitability through multi functional input on critical development and business programs</li>
</ul>
<p>
	<strong>Education Required</strong></p>
<ul>
	<li>
		BS/MS Food Science or equivalent</li>
</ul>
<p>
	<strong>Experience Required </strong></p>
<ul>
	<li>
		Minimum 10 to 12 years food product development experience from bench top to production start up is required</li>
	<li>
		Project/Program management: Minimum of 3 years of managing multiple projects across multiple technical programs</li>
	<li>
		People Management: Minimum 3 years of managing multiple personnel across multiple programs</li>
	<li>
		Business Management: Formal business education is a plus, minimum of 1 year of planning and managing budgets, salary plans and direct interaction with members of the non technical segment of the company</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1346', 'Director, Product Development', '2010-05-05 00:00:00', 2, '$120-130k + bonus + relocation as needed', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (62, 0, 7, '<p>
	<strong>SCOPE OF POSITION<br />
	</strong>Manage technical programs and resource requirements for major development activities. Make technical recommendations used as a basis for business decisions. This position primarily involves management of and active participation in technical programs and may involve management of limited personnel.</p>
<p>
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Assume primary responsibility for implementation of product development programs</li>
	<li>
		Assume primary responsibility for multiple development programs within a business unit</li>
	<li>
		Ensure an aggressive, technically sound product development approach to meeting business needs</li>
	<li>
		Communicate effectively across diverse levels within and outside the organization. Plan technical activities, determine resource requirements and make recommendations to department management</li>
	<li>
		Hands on development activities as required to meet project objectives. This will involve at times performing the tasks normally conducted by food technologists and project leaders</li>
	<li>
		Influence business and other functional groups in their area of technical expertise</li>
	<li>
		Recommend to department management project timetables with key deliverables to achieve project objectives within agreed upon parameters</li>
	<li>
		Effectively use all available resources. Manage the activities of the personnel that may be assigned by department management to specific projects</li>
	<li>
		Identify and explore new areas of technical opportunities</li>
</ul>
<p>
	<strong>QUALIFICATIONS</strong></p>
<ul>
	<li>
		Translate concepts into actual products and processes that satisfy consumer needs and low cost producer criteria</li>
	<li>
		Combine sound technical competence with project management skills to successfully meet agreed upon project objectives with allocated/available resources</li>
	<li>
		Influence business decisions and impact company profitability through multi functional input on critical development programs</li>
</ul>
<p>
	<strong>Education Required:</strong>&nbsp;&nbsp;&nbsp;&nbsp; BS/MS Food Science or equivalent</p>
<p>
	<strong>Experience Required:</strong></p>
<ul>
	<li>
		Minimum 6 years food product development experience from bench top to production start up is required</li>
	<li>
		Project/Program management: Demonstrated success on at least two projects where they had a lead role</li>
	<li>
		People Management: Preferred but not required</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1347', 'Manager, Product Development', '2010-05-05 00:00:00', 2, '$85-105K + bonus + relocation as needed', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (63, 1, 7, '<p>
	<strong>SCOPE OF POSITION<br />
	</strong>Independently plans and conducts multiple assigned project assignments.<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Demonstrated proficiency in product development</li>
	<li>
		Demonstrated proficiency and working knowledge of plant equipment, plant processes and facilities</li>
	<li>
		Independently design and execute experiments and tests using recognized procedures.</li>
	<li>
		Interpret test results and independently identify next steps</li>
	<li>
		Anticipate changing project needs and priorities</li>
	<li>
		Anticipate the needs of other functional departments to accomplish project objectives</li>
	<li>
		Act as a resource in training others and generating complete specifications utilizing on line specification system</li>
	<li>
		Handle multiple assignments</li>
	<li>
		Demonstrate technical competence across a range of product systems</li>
	<li>
		Maintain accurate and complete records</li>
	<li>
		Demonstrate initiative in seeking information and applications from outside resources</li>
	<li>
		Conduct and structure project presentations to department and brand management</li>
</ul>
<p>
	<strong>QUALIFICATIONS</strong></p>
<ul>
	<li>
		Develop/formulate and implement products and processes</li>
	<li>
		Determine project parameters to ensure anticipated product shelf life and maintain product quality</li>
	<li>
		Pursue a number of simultaneous projects</li>
	<li>
		Principal department resource for identifying and implementing new technologies</li>
	<li>
		Ensure awareness of technical trends and their potential application to company product lines</li>
</ul>
<p>
	<strong>Education Required</strong>: BS/MS Food Science or equivalent<br />
	<br />
	<strong>Experience Required</strong>:</p>
<ul>
	<li>
		Minimum 4 years food product development experience from bench top to production start up is required</li>
	<li>
		Project Experience: Demonstrated success on multiple projects where they had a lead role in the technical development</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1348', 'Senior Food Scientist', '2010-05-05 00:00:00', 2, '$70-85k + bonus + relocation assistance as needed', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (64, 0, 10, '<p>
	<strong>SUMMARY</strong> <br />
	Role is executive position responsible for all aspects of Research &amp; Product Development and Quality Assurance strategy and objectives. Key accountabilities include the establishment and execution of effective technical and quality plans, along with the development and realization of appropriate objectives, budgets, policies and infrastructure required to meet overall business expectations. Hands-on role manages and leads to meet or exceed objectives, by performing the following essential duties and responsibilities:<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Maintain laboratories, equipment, instruments and supplies, as well as other areas, which might become part of the technical work place, and upgrade capabilities as needed to achieve state-of-the-art testing and development</li>
	<li>
		Develop and implement product and/or process development systems including project approval process, project execution, timetables, cost estimate, budgets, and research test designs</li>
	<li>
		Interface with the Company Global technical community, research institutes and universities</li>
	<li>
		Monitor and report Quality and R&amp;D KPI metrics on a period and annual basis.</li>
	<li>
		Provide technical guidance in the areas of food safety, ingredient functionality, formulation methodologies and techniques, manufacturing techniques and other areas necessary for effective product development of products</li>
	<li>
		Oversee raw material formulas and procedures approval process. Insure formula documentation security and integrity</li>
	<li>
		Maintain, when needed, outside contacts with customers and suppliers. This includes obtaining customer information as needed and an awareness of supplier sources of ingredients and specifications, as well as some working knowledge of equipment and equipment source</li>
	<li>
		Directs and supervises the activities of the Quality Assurance, Quality Control and R &amp; D departments &amp; personnel on a daily basis. Develops technical and management skills of the staff</li>
	<li>
		Responsible for all manufacturing and distribution quality programs. Ensures that all products are processed and packed under strict sanitary conditions in accordance with FDA current Good Manufacturing Practices, Title 21 of the C.F.R. Part 110.</li>
	<li>
		Conducts outside Vendor and Supplier Quality Audits of facilities, equipment, sanitation, quality systems, and employee practices to insure that ingredients and packaging materials sold to QA Products are produced within the guidelines set forth by Title 21 of the C.F.R. for the safe manufacture of food products</li>
	<li>
		Designs the formalized training programs and methods, for GMP&#39;s, HACCP, Blood Borne Pathogens, Allergen Awareness, and others as required</li>
	<li>
		Manages the budgets of the Quality Assurance, Quality Control and R &amp; D departments and reviews them each period with the President</li>
	<li>
		Responsible for all Regulatory compliance labeling</li>
	<li>
		Manages all external inspections and audits such as BRC, AIB, ASI, NFPA-SAFE, OSHA, FDA, Rabbinical/Halal Supervision, and customer.</li>
	<li>
		Works with other Department heads to ensure alignment of all technical priorities across functions</li>
	<li>
		Fills requests for product samples including identifying appropriate production and/or laboratory formulations, producing small or large scale sample, recording processing and formulation information, appropriately identifying, labeling, documenting, and shipping sample submissions, and filing of identical retain samples</li>
	<li>
		Adhere to all company policies, procedures and safety rules as stated in the Employee Handbook and otherwise posted or communicated</li>
	<li>
		Exemplify the Company core values of Partnership, Performance and Passion in all aspects of assigned duties</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		Master&#39;s degree in science related field; PhD preferred</li>
</ul>
<p>
	<strong>Experience Required</strong></p>
<ul>
	<li>
		More than five years Bakery, Cereal, Confectionery or Food Science related experience and/or training</li>
	<li>
		General knowledge of HAACP and GMP required</li>
	<li>
		Minimum computer skills required are word processing (Word) and spreadsheet skills (Excel, Access)</li>
	<li>
		Must have understanding / working knowledge of statistical process control</li>
</ul>
<p>
	<br />
	&nbsp;</p>
', '', '1358', 'VP Quality and Technology', '2010-05-12 00:00:00', 5, '$175-$195K + 30% bonus opportunity and an $800/mo car allowance', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (65, 0, 2, '<p>
	<strong>SUMMARY</strong> <br />
	Role is executive position responsible for all aspects of Research &amp; Product Development and Quality Assurance strategy and objectives. Key accountabilities include the establishment and execution of effective technical and quality plans, along with the development and realization of appropriate objectives, budgets, policies and infrastructure required to meet overall business expectations. Hands-on role manages and leads to meet or exceed objectives, by performing the following essential duties and responsibilities:<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Maintain laboratories, equipment, instruments and supplies, as well as other areas, which might become part of the technical work place, and upgrade capabilities as needed to achieve state-of-the-art testing and development</li>
	<li>
		Develop and implement product and/or process development systems including project approval process, project execution, timetables, cost estimate, budgets, and research test designs</li>
	<li>
		Interface with the Company Global technical community, research institutes and universities</li>
	<li>
		Monitor and report Quality and R&amp;D KPI metrics on a period and annual basis.</li>
	<li>
		Provide technical guidance in the areas of food safety, ingredient functionality, formulation methodologies and techniques, manufacturing techniques and other areas necessary for effective product development of products</li>
	<li>
		Oversee raw material formulas and procedures approval process. Insure formula documentation security and integrity</li>
	<li>
		Maintain, when needed, outside contacts with customers and suppliers. This includes obtaining customer information as needed and an awareness of supplier sources of ingredients and specifications, as well as some working knowledge of equipment and equipment source</li>
	<li>
		Directs and supervises the activities of the Quality Assurance, Quality Control and R &amp; D departments &amp; personnel on a daily basis. Develops technical and management skills of the staff</li>
	<li>
		Responsible for all manufacturing and distribution quality programs. Ensures that all products are processed and packed under strict sanitary conditions in accordance with FDA current Good Manufacturing Practices, Title 21 of the C.F.R. Part 110.</li>
	<li>
		Conducts outside Vendor and Supplier Quality Audits of facilities, equipment, sanitation, quality systems, and employee practices to insure that ingredients and packaging materials sold to QA Products are produced within the guidelines set forth by Title 21 of the C.F.R. for the safe manufacture of food products</li>
	<li>
		Designs the formalized training programs and methods, for GMP&#39;s, HACCP, Blood Borne Pathogens, Allergen Awareness, and others as required</li>
	<li>
		Manages the budgets of the Quality Assurance, Quality Control and R &amp; D departments and reviews them each period with the President</li>
	<li>
		Responsible for all Regulatory compliance labeling</li>
	<li>
		Manages all external inspections and audits such as BRC, AIB, ASI, NFPA-SAFE, OSHA, FDA, Rabbinical/Halal Supervision, and customer.</li>
	<li>
		Works with other Department heads to ensure alignment of all technical priorities across functions</li>
	<li>
		Fills requests for product samples including identifying appropriate production and/or laboratory formulations, producing small or large scale sample, recording processing and formulation information, appropriately identifying, labeling, documenting, and shipping sample submissions, and filing of identical retain samples</li>
	<li>
		Adhere to all company policies, procedures and safety rules as stated in the Employee Handbook and otherwise posted or communicated</li>
	<li>
		Exemplify the Company core values of Partnership, Performance and Passion in all aspects of assigned duties</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		Master&#39;s degree in science related field; PhD preferred</li>
</ul>
<p>
	<strong>Experience Required</strong></p>
<ul>
	<li>
		More than five years Bakery, Cereal, Confectionery or Food Science related experience and/or training</li>
	<li>
		General knowledge of HAACP and GMP required</li>
	<li>
		Minimum computer skills required are word processing (Word) and spreadsheet skills (Excel, Access)</li>
	<li>
		Must have understanding / working knowledge of statistical process control</li>
</ul>
', '', '1358', 'VP Quality & Technology', '2010-05-12 00:00:00', 5, '$175-$195K + 30% bonus opportunity and an $800/mo car allowance', '1', '0');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (66, 0, 7, '<p>
	<strong>SUMMARY</strong> <br />
	Role is executive position responsible for all aspects of Research &amp; Product Development and Quality Assurance strategy and objectives. Key accountabilities include the establishment and execution of effective technical and quality plans, along with the development and realization of appropriate objectives, budgets, policies and infrastructure required to meet overall business expectations. Hands-on role manages and leads to meet or exceed objectives, by performing the following essential duties and responsibilities:<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Maintain laboratories, equipment, instruments and supplies, as well as other areas, which might become part of the technical work place, and upgrade capabilities as needed to achieve state-of-the-art testing and development</li>
	<li>
		Develop and implement product and/or process development systems including project approval process, project execution, timetables, cost estimate, budgets, and research test designs</li>
	<li>
		Interface with the Company Global technical community, research institutes and universities</li>
	<li>
		Monitor and report Quality and R&amp;D KPI metrics on a period and annual basis.</li>
	<li>
		Provide technical guidance in the areas of food safety, ingredient functionality, formulation methodologies and techniques, manufacturing techniques and other areas necessary for effective product development of products</li>
	<li>
		Oversee raw material formulas and procedures approval process. Insure formula documentation security and integrity</li>
	<li>
		Maintain, when needed, outside contacts with customers and suppliers. This includes obtaining customer information as needed and an awareness of supplier sources of ingredients and specifications, as well as some working knowledge of equipment and equipment source</li>
	<li>
		Directs and supervises the activities of the Quality Assurance, Quality Control and R &amp; D departments &amp; personnel on a daily basis. Develops technical and management skills of the staff</li>
	<li>
		Responsible for all manufacturing and distribution quality programs. Ensures that all products are processed and packed under strict sanitary conditions in accordance with FDA current Good Manufacturing Practices, Title 21 of the C.F.R. Part 110.</li>
	<li>
		Conducts outside Vendor and Supplier Quality Audits of facilities, equipment, sanitation, quality systems, and employee practices to insure that ingredients and packaging materials sold to QA Products are produced within the guidelines set forth by Title 21 of the C.F.R. for the safe manufacture of food products</li>
	<li>
		Designs the formalized training programs and methods, for GMP&#39;s, HACCP, Blood Borne Pathogens, Allergen Awareness, and others as required</li>
	<li>
		Manages the budgets of the Quality Assurance, Quality Control and R &amp; D departments and reviews them each period with the President</li>
	<li>
		Responsible for all Regulatory compliance labeling</li>
	<li>
		Manages all external inspections and audits such as BRC, AIB, ASI, NFPA-SAFE, OSHA, FDA, Rabbinical/Halal Supervision, and customer.</li>
	<li>
		Works with other Department heads to ensure alignment of all technical priorities across functions</li>
	<li>
		Fills requests for product samples including identifying appropriate production and/or laboratory formulations, producing small or large scale sample, recording processing and formulation information, appropriately identifying, labeling, documenting, and shipping sample submissions, and filing of identical retain samples</li>
	<li>
		Adhere to all company policies, procedures and safety rules as stated in the Employee Handbook and otherwise posted or communicated</li>
	<li>
		Exemplify the Company core values of Partnership, Performance and Passion in all aspects of assigned duties</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		Master&#39;s degree in science related field; PhD preferred</li>
</ul>
<p>
	<strong>Experience Required</strong></p>
<ul>
	<li>
		More than five years Bakery, Cereal, Confectionery or Food Science related experience and/or training</li>
	<li>
		General knowledge of HAACP and GMP required</li>
	<li>
		Minimum computer skills required are word processing (Word) and spreadsheet skills (Excel, Access)</li>
	<li>
		Must have understanding / working knowledge of statistical process control</li>
</ul>
', '', '1358', 'VP Quality & Technology', '2010-05-12 00:00:00', 5, '$175-$195K + 30% bonus opportunity and an $800/mo car allowance', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (67, 0, 11, '<p>
	<strong>SUMMARY</strong> <br />
	Role is executive position responsible for all aspects of Research &amp; Product Development and Quality Assurance strategy and objectives. Key accountabilities include the establishment and execution of effective technical and quality plans, along with the development and realization of appropriate objectives, budgets, policies and infrastructure required to meet overall business expectations. Hands-on role manages and leads to meet or exceed objectives, by performing the following essential duties and responsibilities:<br />
	<br />
	<strong>ESSENTIAL DUTIES AND RESPONSIBILITIES</strong></p>
<ul>
	<li>
		Maintain laboratories, equipment, instruments and supplies, as well as other areas, which might become part of the technical work place, and upgrade capabilities as needed to achieve state-of-the-art testing and development</li>
	<li>
		Develop and implement product and/or process development systems including project approval process, project execution, timetables, cost estimate, budgets, and research test designs</li>
	<li>
		Interface with the Company Global technical community, research institutes and universities</li>
	<li>
		Monitor and report Quality and R&amp;D KPI metrics on a period and annual basis.</li>
	<li>
		Provide technical guidance in the areas of food safety, ingredient functionality, formulation methodologies and techniques, manufacturing techniques and other areas necessary for effective product development of products</li>
	<li>
		Oversee raw material formulas and procedures approval process. Insure formula documentation security and integrity</li>
	<li>
		Maintain, when needed, outside contacts with customers and suppliers. This includes obtaining customer information as needed and an awareness of supplier sources of ingredients and specifications, as well as some working knowledge of equipment and equipment source</li>
	<li>
		Directs and supervises the activities of the Quality Assurance, Quality Control and R &amp; D departments &amp; personnel on a daily basis. Develops technical and management skills of the staff</li>
	<li>
		Responsible for all manufacturing and distribution quality programs. Ensures that all products are processed and packed under strict sanitary conditions in accordance with FDA current Good Manufacturing Practices, Title 21 of the C.F.R. Part 110.</li>
	<li>
		Conducts outside Vendor and Supplier Quality Audits of facilities, equipment, sanitation, quality systems, and employee practices to insure that ingredients and packaging materials sold to QA Products are produced within the guidelines set forth by Title 21 of the C.F.R. for the safe manufacture of food products</li>
	<li>
		Designs the formalized training programs and methods, for GMP&#39;s, HACCP, Blood Borne Pathogens, Allergen Awareness, and others as required</li>
	<li>
		Manages the budgets of the Quality Assurance, Quality Control and R &amp; D departments and reviews them each period with the President</li>
	<li>
		Responsible for all Regulatory compliance labeling</li>
	<li>
		Manages all external inspections and audits such as BRC, AIB, ASI, NFPA-SAFE, OSHA, FDA, Rabbinical/Halal Supervision, and customer.</li>
	<li>
		Works with other Department heads to ensure alignment of all technical priorities across functions</li>
	<li>
		Fills requests for product samples including identifying appropriate production and/or laboratory formulations, producing small or large scale sample, recording processing and formulation information, appropriately identifying, labeling, documenting, and shipping sample submissions, and filing of identical retain samples</li>
	<li>
		Adhere to all company policies, procedures and safety rules as stated in the Employee Handbook and otherwise posted or communicated</li>
	<li>
		Exemplify the Company core values of Partnership, Performance and Passion in all aspects of assigned duties</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		Master&#39;s degree in science related field; PhD preferred</li>
</ul>
<p>
	<strong>Experience Required</strong></p>
<ul>
	<li>
		More than five years Bakery, Cereal, Confectionery or Food Science related experience and/or training</li>
	<li>
		General knowledge of HAACP and GMP required</li>
	<li>
		Minimum computer skills required are word processing (Word) and spreadsheet skills (Excel, Access)</li>
	<li>
		Must have understanding / working knowledge of statistical process control</li>
</ul>
', '', '1358', 'VP Quality & Technology', '2010-05-12 00:00:00', 5, '$175-$195K + 30% bonus opportunity and an $800/mo car allowance', '1', '1');
insert into job_opportunity (id, version, category_id, description, desired_skills, job_code, position_title, posted_date, region_id, salary_range, visible, hide_from_home_page) values (81, 0, 7, '<p>
	<strong>SUMMARY</strong></p>
<ul>
	<li>
		This role provides technical product support for RD&amp;I initiatives</li>
	<li>
		The ongoing emphasis will be on the creation and innovation of new products</li>
	<li>
		On the technical side, this includes, but is not limited to, gold standard culinary development, bench-top flavor development and translation to commercial ingredients and processes, understanding and documenting key process conditions in a pilot plant setting, and translation to manufacturing facilities</li>
	<li>
		Work may also include research and experimentation of new and enabling technologies, product and process improvement initiatives, and other special projects with emphasis on product technology</li>
	<li>
		Management activities include coaching product developers on the product development process, developing project goals and objectives, approach and timetables, leading or participating in cross-functional project teams, and coordination of activities with technicians</li>
	<li>
		Work should be conducted in a collaborative manner with resources from culinary arts, sensory evaluation, Market Research, Supply Chain, QA, process/package technology and outside suppliers and experts</li>
	<li>
		Generally is responsible for researching, planning and designing experiments, coordinating research projects; evaluating results and providing recommendations to management</li>
	<li>
		Assignments tend to be complex, often involving new product development, innovative applied technology or research in unexplored scientific areas</li>
	<li>
		Aggressively pursues goals and special requests that may not have an obvious approach</li>
</ul>
<p>
	<strong>Education Required:</strong></p>
<ul>
	<li>
		B.S. or M.S. Food Science or related discipline</li>
	<li>
		Better Process Control School</li>
	<li>
		Thermal Processing School</li>
</ul>
<p>
	<strong>Experience Required:</strong></p>
<ul>
	<li>
		8+ years of product development experience at best-in-class food companies</li>
	<li>
		Expertise in product development, product formulation, flavor work, and ingredient function and interaction</li>
	<li>
		Knowledge in the areas of analytical methods, statistical design of experiments and analysis of data, and sensory evaluation</li>
	<li>
		Nice to have experience in retort, heat penetration data collection and analysis, and bean processing</li>
</ul>
<p>
	<br />
	<br />
	&nbsp;</p>
', '', '1344', 'Senior Food Scientist', '2010-06-22 00:00:00', 4, ' $80-90,000 + bonus + relocation assistance', '1', '0');
DROP TABLE jsec_permission;
CREATE TABLE jsec_permission ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, possible_actions VARCHAR(255) NOT NULL, type VARCHAR(255) NOT NULL, PRIMARY KEY (id), CONSTRAINT type UNIQUE (type) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE jsec_role;
CREATE TABLE jsec_role ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY (id), CONSTRAINT name UNIQUE (name) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into jsec_role (id, version, name) values (1, 0, 'Administrator');
DROP TABLE jsec_role_permission_rel;
CREATE TABLE jsec_role_permission_rel ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, actions VARCHAR(255) NOT NULL, permission_id BIGINT NOT NULL, role_id BIGINT NOT NULL, target VARCHAR(255) NOT NULL, PRIMARY KEY (id), INDEX FK6DF5807ACE88AE61 (role_id), INDEX FK6DF5807AF1EDA81 (permission_id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE jsec_user;
CREATE TABLE jsec_user ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, password_hash VARCHAR(255) NOT NULL, username VARCHAR(255) NOT NULL, PRIMARY KEY (id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into jsec_user (id, version, password_hash, username) values (1, 0, '6117e45ab57f8660d866a21ca5e9d2c31dbc1945', 'admin');
insert into jsec_user (id, version, password_hash, username) values (2, 0, '6117e45ab57f8660d866a21ca5e9d2c31dbc1945', 'admin');
DROP TABLE jsec_user_permission_rel;
CREATE TABLE jsec_user_permission_rel ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, actions VARCHAR(255) NOT NULL, permission_id BIGINT NOT NULL, target VARCHAR(255), user_id BIGINT NOT NULL, PRIMARY KEY (id), INDEX FK28FF6085F1EDA81 (permission_id), INDEX FK28FF608573B37241 (user_id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
DROP TABLE jsec_user_role_rel;
CREATE TABLE jsec_user_role_rel ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, role_id BIGINT NOT NULL, user_id BIGINT NOT NULL, PRIMARY KEY (id), INDEX FK238F64ACCE88AE61 (role_id), INDEX FK238F64AC73B37241 (user_id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
insert into jsec_user_role_rel (id, version, role_id, user_id) values (1, 0, 1, 1);
DROP TABLE region;
CREATE TABLE region ( id BIGINT NOT NULL AUTO_INCREMENT, version BIGINT NOT NULL, name VARCHAR(255) NOT NULL, PRIMARY KEY (id) ) ENGINE=MyISAM DEFAULT CHARSET=latin1;
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
