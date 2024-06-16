page 50102 "Loan Card"
{
    PageType = Card;
    SourceTable = "Loan";

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Loan No."; Rec."Loan No.")
                {
                    ApplicationArea = All;
                    Editable = false;
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
