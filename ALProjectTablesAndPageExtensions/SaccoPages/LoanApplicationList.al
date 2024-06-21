page 50110 "Loan Application List"
{
    PageType = List;
    SourceTable = "Loan Application";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Application ID"; Rec."Application ID")
                {
                    ApplicationArea = All;
                }
                field("Loan ID"; Rec."Loan ID")
                {
                    ApplicationArea = All;
                }
                field("Member ID"; Rec."Member ID")
                {
                    ApplicationArea = All;
                }
                field("Requested Amount"; Rec."Requested Amount")
                {
                    ApplicationArea = All;
                }
                field("Interest Rate"; Rec."Interest Rate")
                {
                    ApplicationArea = All;
                }
                field("Loan Term"; Rec."Loan Term")
                {
                    ApplicationArea = All;
                }
                field("Application Date"; Rec."Application Date")
                {
                    ApplicationArea = All;
                }
                field("Status"; Rec."Status")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(NewLoanApplication)
            {
                ApplicationArea = All;
                Caption = 'New Loan Application';
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Loan Application Card");
                end;
            }
        }
    }
}
