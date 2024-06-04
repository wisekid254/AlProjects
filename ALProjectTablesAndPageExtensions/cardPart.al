page 50145 "Customer Sales History"
{
    PageType = CardPart;
    SourceTable = SalesInvoiceCueTable;

    layout
    {
        area(Content)
        {
            cuegroup(overview)
            {
                field(SalesInvoicesOpen; Rec.SalesInvoicesOpen)
                {
                    Caption = 'open';
                    ApplicationArea = all;
                    DrillDownPageId = "Sales Invoice List";
                }
                field(NoOfSalesQuotes; Rec.NoOfSalesQuotes)
                {
                    Caption = 'open';
                    ApplicationArea = all;
                    DrillDownPageId = "Sales Quotes";
                }
                field(NoOfSalesOrders; Rec.NoOfSalesOrder)
                {
                    Caption = 'open';
                    ApplicationArea = all;
                    DrillDownPageId = "Customer List";
                }

            }
        }
    }

}