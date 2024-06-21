page 50146 SalesInvoiceCuePage
{
    PageType = CardPart;
    UsageCategory = Administration;
    ApplicationArea = all;
    SourceTable = SalesInvoiceCueTable;

    layout
    {
        area(content)
        {
            cuegroup(SalesCueContainer)
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
            cuegroup(SalesActionontainer)
            {
                Caption = 'New Sales Invoice';

                actions
                {

                    action(ActionName)
                    {
                        RunObject = page "Sales Invoice";
                        Image = TileNew;

                        trigger OnAction()
                        begin

                        end;
                    }
                }
            }
        }
    }

    trigger OnOpenPage();
    begin
        Rec.Reset();
        if not Rec.Get() then begin
            Rec.Init();
            Rec.Insert();
        end;
    end;
}