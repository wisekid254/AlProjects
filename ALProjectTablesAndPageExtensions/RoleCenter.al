page 50148 RoleCenterName
{
    PageType = RoleCenter;
    Caption = 'My Role Center try';

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
    }
}
profile DemoProfile
{
    ProfileDescription = 'Demo Profile';
    roleCenter = RoleCenterName;
    Caption = 'DemoProfile';
}