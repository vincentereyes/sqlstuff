select SUM(amount) as revenue, MONTHNAME(charged_datetime) as month from billing
WHERE charged_datetime like "%2012-03%";

SELECT client_id, SUM(amount) as total_revenue from billing
WHERE client_id = 2;

SELECT domain_name as website, client_id from sites
WHERE client_id = 10;

SELECT client_id, count(domain_name) as number_of_websites, monthname(created_datetime) as month, year(created_datetime) as year from sites
WHERE client_id = 1 or client_id = 20
group by domain_name;

SELECT sites.domain_name as website, COUNT(leads.leads_id) as number_of_leads, date_format(leads.registered_datetime, "%M %d %Y" ) as date_generated from sites
JOIN leads on sites.site_id = leads.site_id
WHERE leads.registered_datetime between '2011-01-01' and '2011-02-15'
group by leads.leads_id;

SELECT CONCAT(clients.first_name, " ", clients.last_name) as client_name, COUNT(leads.leads_id) from clients
JOIN sites on clients.client_id = sites.client_id
JOIN leads on sites.site_id = leads.site_id
WHERE leads.registered_datetime between '2011-01-01' and '2011-12-31'
group by client_name;

-- seven goes here



SELECT CONCAT(clients.first_name, " ", clients.last_name) as client_name, sites.domain_name as website, COUNT(leads.leads_id) as number_of_leads, date_format(leads.registered_datetime, "%M %d %Y" ) as date_generated from clients
JOIN sites on clients.client_id = sites.client_id
JOIN leads on sites.site_id = leads.site_id
WHERE leads.registered_datetime between '2011-01-01' and '2011-12-31'
group by website;

-- nine goes here

SELECT CONCAT(clients.first_name, " ", clients.last_name) as client_name, group_concat(distinct sites.domain_name
ORDER BY sites.domain_name ASC separator ' / ') as sites from clients
JOIN sites on clients.client_id = sites.client_id
group by client_name