CREATE DATABASE `foodcareers_dev`;
CREATE DATABASE `foodcareers_test`;
CREATE DATABASE `foodcareers_prod`;

CREATE USER 'foodcareers'@'localhost' IDENTIFIED BY 'foodcareers';

GRANT USAGE ON * . * TO 'foodcareers'@'localhost' IDENTIFIED BY 'foodcareers' WITH MAX_QUERIES_PER_HOUR 0 MAX_CONNECTIONS_PER_HOUR 0 MAX_UPDATES_PER_HOUR 0 MAX_USER_CONNECTIONS 0 ;

GRANT ALL PRIVILEGES ON `foodcareers\_%` . * TO 'foodcareers'@'localhost';


--SET PASSWORD FOR 'foodcareers'@'localhost' = PASSWORD('cfc139771a');

