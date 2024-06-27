page 50500 "Student Role Center"
{
    PageType = RoleCenter;
    Caption = 'Student';

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                // part(Part1; progressHeadlines)
                // {
                //     ApplicationArea = All;
                // }

                // part(Part2; SalesInvoiceCuePage)
                // {
                //     Caption = 'Invoices';
                // }
            }
        }
    }


    actions
    {
        area(Sections)
        {
            group(Emailing)
            {
                action("View Emails")
                {
                    Caption = 'View Emails';
                    Image = Email;
                    // Promoted = true;
                    // PromotedCategory = Process;
                    RunObject = page "Student Emails List";
                }
            }
            group(StudentDetails)
            {
                Caption = 'Student Details';
                Image = RegisteredDocs;
                action(StudentProfile)
                {
                    Caption = 'Profile Information';
                    ApplicationArea = all;
                    RunObject = page "Student Profile";
                }




            }
            group(MasomoPortal)
            {
                Caption = 'Masomo Portal';
                Image = RegisteredDocs;
                action("DashBoard")
                {
                    Caption = 'DashBoard';
                    ApplicationArea = all;
                    //     RunObject = page "Savings List";
                }
                group(MyCourses)
                {
                    Caption = 'My Courses';
                    action("Masomo Year 1")
                    {
                        Caption = 'Masomo Year 1';
                        ApplicationArea = All;
                    }
                    action("Masomo Year 2")
                    {
                        Caption = 'Masomo Year 2';
                        ApplicationArea = All;
                    }
                    action("Masomo Year 3")
                    {
                        Caption = 'Masomo Year 3';
                        ApplicationArea = All;
                    }
                    action("Masomo Year 4")
                    {
                        Caption = 'Masomo Year 4';
                        ApplicationArea = All;
                    }
                }
            }
            group(Academics)
            {
                Caption = 'Academics';
                Image = RegisteredDocs;
                action("Download Past Papers")
                {
                    Caption = 'Download Past Papers';
                    ApplicationArea = All;
                    RunObject = page "Past Papers";
                }
                action("E-Resourses")
                {
                    Caption = 'E-Resourses';
                    ApplicationArea = All;
                    // RunObject = page "Financial Transaction List";
                }
                action("Borrow Book/s")
                {
                    Caption = 'Borrow Book/s';
                    ApplicationArea = All;
                    // RunObject = page "Financial Transaction List";
                }
                action("Provisional Results")
                {
                    Caption = 'Provisional Results';
                    ApplicationArea = All;
                    // RunObject = page "Financial Transaction List";

                }
            }
        }

        area(Embedding)
        {

            action(LecturerEvaluation)
            {
                Caption = 'Lecturer Evaluation';
                // RunObject = Page "Sales list";
                ApplicationArea = All;
            }

            action(DownloadExamCard)
            {
                Caption = 'Download Exam Card';
                // RunObject = Page "Service list";
                ApplicationArea = All;

            }
            action("Apply Special Exam")
            {
                Caption = 'Apply Special Exam';
                // RunObject = Page "Service list";
                ApplicationArea = All;

            }
            action("Change Course")
            {
                Caption = 'Change Course';
                // RunObject = Page "Service list";
                ApplicationArea = All;

            }
            action("Submit Assignments")
            {
                Caption = 'Submit Assignments';
                // RunObject = Page "Service list";
                ApplicationArea = All;

            }


        }
        area(Creation)
        {
            action("Apply Special Exams")
            {
                Caption = 'Apply Special Exams';
                Image = NewInvoice;
                RunObject = Page "Sales Invoice";
                RunPageMode = Create;
            }
            action("Fees Payments")
            {
                Caption = 'Fees Payments';
                Image = NewInvoice;
                RunObject = Page "Sales Analysis View Card";

            }
        }

        area(Processing)
        {
            action(FeesBalance)
            {
                Caption = 'Check Fees Balance';
                RunObject = Page "AAD Application Card";
            }
            action("Check Borrowed Books")
            {
                Caption = 'Check Borrowed Books';
                RunObject = Page "Posted Sales Invoices";
            }
            action("Upcoming Events")
            {
                Caption = 'Upcoming Events';
                RunObject = Page "Posted Sales Invoices";
            }
            action("Report Corrupt Behavior")
            {
                Caption = 'Report Corrupt Behavior';
                RunObject = Page "Posted Sales Invoices";
            }
            action("News")
            {
                Caption = 'News';
                RunObject = Page "Posted Sales Invoices";
            }
            action("Transfer School")
            {
                Caption = 'Inter School Transfer';
                RunObject = Page "Posted Sales Invoices";
            }

        }


        area(Reporting)
        {
            action("Attendance Report")
            {
                Caption = 'Attendance Report';
                Image = "Report";
                RunObject = Report "Aged Accounts Payable";
            }
            action("Fees Statement")
            {
                Caption = 'Fees Statements';
                Image = "Report";
                RunObject = Report "Aged Accounts Payable";
            }
            action("Student Report")
            {
                Caption = 'Student Report';
                Image = "Report";
                RunObject = Report "Aged Accounts Payable";

            }

        }
    }
}

// Creates a profile that uses the Role Center
profile "Student Profile"
{
    ProfileDescription = 'Student Profile';
    RoleCenter = "Student Role Center";
    Caption = 'Student Role Center';
}