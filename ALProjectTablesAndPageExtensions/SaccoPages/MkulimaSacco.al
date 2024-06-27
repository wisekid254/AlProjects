page 50155 "Sacco Role Center"
{
    PageType = RoleCenter;
    Caption = 'Mkulima SACCO Role Center';

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(Part1; progressHeadlines)
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
                action("Member Registation")
                {
                    Caption = 'Member Registation';
                    RunObject = Page "Member Management";
                    ApplicationArea = All;
                }

                action("Acccount Management")
                {
                    Caption = 'Acccount Management';
                    RunObject = Page "Member Management";
                    ApplicationArea = All;
                }

                group(LoanManagement)
                {
                    Caption = 'Loan Management';
                    action("Loan Application")
                    {
                        Caption = 'Loan Application';
                        ApplicationArea = All;
                        RunObject = page "Loan List";
                    }
                    action("Loan Payment")
                    {
                        Caption = 'Loan Payment';
                        ApplicationArea = All;
                        RunObject = page "Loan List";
                    }
                }
            }
            group(SavingManagement)
            {
                Caption = 'Savings Management';
                Image = RegisteredDocs;
                action("Savings Application")
                {
                    Caption = 'Savings Application';
                    ApplicationArea = all;
                    RunObject = page "Savings List";
                }
                group(Savings)
                {
                    Caption = 'Savings';
                    action("Savings Deposit")
                    {
                        Caption = 'Savings Deposit';
                        ApplicationArea = All;
                    }
                    action("Savings Withdrawal")
                    {
                        Caption = 'Savings Withdrawal';
                        ApplicationArea = All;
                    }
                    action("Saving Interest")
                    {
                        Caption = 'Saving Interest';
                        ApplicationArea = All;
                    }
                }
            }
            group(FinancialManagement)
            {
                Caption = 'Financial Management';
                Image = RegisteredDocs;
                action("Financial Statement")
                {
                    Caption = 'Financial Statement';
                    ApplicationArea = All;
                    RunObject = page "Financial Transaction List";
                }
                action("General Ledger")
                {
                    Caption = 'General Ledger';
                    ApplicationArea = All;
                    RunObject = page "Financial Transaction List";
                }
                action("Account Payable")
                {
                    Caption = 'Account Payable';
                    ApplicationArea = All;
                    RunObject = page "Financial Transaction List";
                }
                action("Account Receivable")
                {
                    Caption = 'Account Receivable';
                    ApplicationArea = All;
                    RunObject = page "Financial Transaction List";

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
            action(NewMember)
            {
                Caption = 'New Member';
                RunObject = Page "Member Management";
            }
            action("New Deposit")
            {
                Caption = 'New Deposit';
                RunObject = Page "Posted Sales Invoices";
            }
            action("New Withdrawal")
            {
                Caption = 'New Withdrawal';
                RunObject = Page "Posted Sales Invoices";
            }
            action("New Loan Application")
            {
                Caption = 'New Loan Application';
                RunObject = Page "Posted Sales Invoices";
            }
            action("Disburse Loan")
            {
                Caption = 'Disburse Loan';
                RunObject = Page "Posted Sales Invoices";
            }
            action("Send Notification")
            {
                Caption = 'Send Notification';
                RunObject = Page "Posted Sales Invoices";
            }

        }

        area(Creation)
        {
            action("Find Entries")
            {
                Caption = 'Find Entries';
                Image = NewInvoice;
                RunObject = Page "Sales Invoice";
                RunPageMode = Create;
            }
            action("Notify Delayed Loan Payments")
            {
                Caption = 'Notify Delayed Loan Payments';
                Image = NewInvoice;
                RunObject = Page "Sales Analysis View Card";

            }
        }

        area(Reporting)
        {
            action("Member Reports")
            {
                Caption = 'Member';
                Image = "Report";
                RunObject = Report "Aged Accounts Payable";
            }
            action("Savings Report")
            {
                Caption = 'Savings Report';
                Image = "Report";
                RunObject = Report "Aged Accounts Payable";
            }
            action("Financial Report")
            {
                Caption = 'Financial Report';
                Image = "Report";

            }
            action("Compliance Report")
            {
                Caption = 'Compliance Report';
                Image = "Report";

            }
            action("Loan Report")
            {
                Caption = 'Loan Report';
                Image = "Report";

            }
        }
    }
}

// Creates a profile that uses the Role Center
profile Mkulima
{
    ProfileDescription = 'Mkulima SACCO';
    RoleCenter = "Sacco Role Center";
    Caption = 'Mkulima SACCO';
}