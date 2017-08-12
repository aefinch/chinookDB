/*invoices_line_item_count.sql: Provide a query that shows all Invoices but includes the # of invoice line items.*/
select
	Invoice.*,
	Count(*)
from [InvoiceLine]
join [Invoice] on Invoice.InvoiceId = InvoiceLine.InvoiceId
Group by InvoiceLine.InvoiceId