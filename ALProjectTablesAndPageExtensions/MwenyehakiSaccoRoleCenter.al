page 50155 "Sacco Role Center"
{
    PageType = RoleCenter;
    Caption = 'My Role Center';

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
        }
    }


    actions
    {
        area(Sections)
        {
            group(MemberManagement)
            {
                Caption = 'Member Management';
                Image = RegisteredDocs;
                action(PostedServiceInvoices)
                {
                    Caption = 'Registation';
                    RunObject = Page "Posted Service Invoices";
                    ApplicationArea = All;
                }

                action(PostedSalesInvoices)
                {
                    Caption = 'Acccount Management';
                    RunObject = Page "Posted Sales Invoices";
                    ApplicationArea = All;
                }

                group(LoanManagement)
                {
                    Caption = 'Loan Management';
                    action("Loan Application")
                    {
                        Caption = 'Loan Application';
                        ApplicationArea = All;
                        RunObject = page "Sales Document Entity";
                    }
                    action("Loan Payment")
                    {
                        Caption = 'Loan Payment';
                        ApplicationArea = All;
                        RunObject = page "Sales Document Line Entity";
                    }
                }
            }
        }

        area(Embedding)
        {

            action(Home)
            {
                Caption = 'Home';
                RunObject = Page "Sales list";
                ApplicationArea = All;
            }

            action(Notification)
            {
                Caption = 'Notification';
                RunObject = Page "Service list";
                ApplicationArea = All;

            }
            action(Search)
            {
                Caption = 'Search';
                RunObject = Page "Service list";
                ApplicationArea = All;

            }
            action(Settings)
            {
                Caption = 'Settings';
                RunObject = Page "Service list";
                ApplicationArea = All;

            }
            action(Help)
            {
                Caption = 'Help';
                RunObject = Page "Service list";
                ApplicationArea = All;

            }


        }

        area(Processing)
        {
            action(SeeSalesInvoices)
            {
                Caption = 'See Sales Invoices';
                RunObject = Page "Posted Sales Invoices";
            }

        }

        area(Creation)
        {
            action(AddSalesInvoice)
            {
                Caption = 'Add Sales Invoice';
                Image = NewInvoice;
                RunObject = Page "Sales Invoice";
                RunPageMode = Create;
            }
        }

        area(Reporting)
        {
            action(SalesInvoicesReport)
            {
                Caption = 'Sales Invoices Report';
                Image = "Report";
                RunObject = Report "Aged Accounts Payable";
            }
        }
    }
}

// Creates a profile that uses the Role Center
profile MwenyeHaki
{
    ProfileDescription = 'Sample Profile';
    RoleCenter = "Sacco Role Center";
    Caption = 'My profile';
}