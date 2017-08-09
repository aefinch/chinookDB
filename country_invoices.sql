/*country_invoices.sql: Provide a query that shows the # of invoices per country. HINT: GROUP BY*/
select
	BillingCountry,
	Count(*)
from [Invoice]
Group by BillingCountry