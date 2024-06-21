page 50111 "Loan Payment List"
{
    PageType = List;
    SourceTable = "Loan Payment";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Payment ID"; Rec."Payment ID")
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
                field("Payment Amount"; Rec."Payment Amount")
                {
                    ApplicationArea = All;
                }
                field("Payment Date"; Rec."Payment Date")
                {
                    ApplicationArea = All;
                }
                field("Remaining Balance"; Rec."Remaining Balance")
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
            action(NewLoanPayment)
            {
                ApplicationArea = All;
                Caption = 'New Loan Payment';
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Loan Payment Card");
                end;
            }
        }
    }
}
