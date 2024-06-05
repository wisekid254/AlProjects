page 50148 RoleCenterName
{
    PageType = RoleCenter;
    Caption = 'My Role Center try';
    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(Part1; RoleCenterHeadline)
                {
                    ApplicationArea = All;
                }

                part(Part2; SalesInvoiceCuePage)
                {
                    Caption = 'Invoices';
                }

            }
            group(Group2)
            {
                part(Part3; "Customer Sales History")
                {
                    Caption = 'Customer Sale History';
                    ApplicationArea = all;
                }
            }
        }
    }

    actions
    {

        area(Sections)
        {
            group(PostedInvoices)
            {
                Caption = 'Posted Invoices';
                action(PostedServiceInvoices)
                {
                    Caption = 'Posted Service Invoices';
                    RunObject = Page "Posted Service Invoices";
                    ApplicationArea = all;
                }

                action(PostedSalesInvoices)
                {
                    Caption = 'Posted Sales Invoice';
                    RunObject = page "Posted Sales Invoice";
                    ApplicationArea = all;
                }
            }
        }
        area(Embedding)
        {
            action(EmbeddingAction)
            {
                Caption = 'Sales';
                RunObject = Page "Sales List";
                ApplicationArea = all;
            }

            action(Purchase)
            {
                Caption = 'Purchase List';
                RunObject = page "Purchase List";
                ApplicationArea = all;
            }
            action(Inventory)
            {
                Caption = 'Inventory List';
                RunObject = page "Inventory Comment List";
                ApplicationArea = all;
            }
        }
        area(Creation)
        {
            action(AddSalesInvoice)
            {
                Caption = 'Add Sales Invoice';
                RunObject = page "Sales Invoice";
                ApplicationArea = all;
                RunPageMode = Create;
            }
            action(AddPurchaseOrder)
            {
                Caption = 'Add Purchase Order';
                RunObject = page "Purchase Order";
                ApplicationArea = all;
                RunPageMode = Create;
            }
        }
        area(Processing)
        {
            action(SalesInvoiceProcess)
            {
                Caption = 'Sales Invoice';
                RunObject = page "Sales Invoice";
                ApplicationArea = all;
            }
            action(PurchaseInvoice)
            {
                Caption = 'Purchase Invoice';
                RunObject = page "Purchase Invoice";
                ApplicationArea = all;
            }
        }
        area(Reporting)
        {
            action(SalesInvoiceReport)
            {
                Caption = 'Sales Invoice Report';
                RunObject = report "Standard Sales - Invoice";
                ApplicationArea = all;
                Image = Report;
            }
        }
    }
}
profile DemoProfile
{
    ProfileDescription = 'Demo Profile';
    roleCenter = RoleCenterName;
    Caption = 'DemoProfile';
}