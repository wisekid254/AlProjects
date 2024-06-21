page 50101 "Loan List"
{
    PageType = List;
    SourceTable = "Loan";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Loan No."; Rec."Loan id")
                {
                    ApplicationArea = All;
                }
                field("Member ID"; Rec."Member ID")
                {
                    ApplicationArea = All;
                }
                field("Loan Amount"; Rec."Loan Amount")
                {
                    ApplicationArea = All;
                }
                field("Loan Date"; Rec."Loan Date")
                {
                    ApplicationArea = All;
                }
                field("Due Date"; Rec."Due Date")
                {
                    ApplicationArea = All;
                }
                field("Interest Rate"; Rec."Interest Rate")
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
            action(NewLoan)
            {
                ApplicationArea = All;
                Caption = 'New Loan';
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Loan Card");
                end;
            }
        }
    }
}
