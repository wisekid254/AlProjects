page 50118 "Loan Payment Card"
{
    PageType = Card;
    SourceTable = "Loan Payment";

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Payment ID"; Rec."Payment ID")
                {
                    ApplicationArea = All;
                    Editable = false;
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
            action(Save)
            {
                ApplicationArea = All;
                Caption = 'Save';
                Image = Save;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    CurrPage.Update();
                end;
            }
        }
    }
}
