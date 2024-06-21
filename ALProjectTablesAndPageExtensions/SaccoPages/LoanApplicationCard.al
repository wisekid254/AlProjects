page 50116 "Loan Application Card"
{
    PageType = Card;
    SourceTable = "Loan Application";

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Application ID"; Rec."Application ID")
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
