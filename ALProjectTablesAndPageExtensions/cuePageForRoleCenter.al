page 50146 SalesInvoiceCuePage
{
    PageType = CardPart;
    SourceTable = SalesInvoiceCueTable;

    layout
    {
        area(content)
        {
            cuegroup(SalesCueContainer)
            {
                Caption = 'Sales Invoices';
                // CuegroupLayout=Wide;
                field(SalesCue; Rec.SalesInvoicesOpen)
                {
                    Caption = 'Open';
                    DrillDownPageId = "Sales Invoice List";
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