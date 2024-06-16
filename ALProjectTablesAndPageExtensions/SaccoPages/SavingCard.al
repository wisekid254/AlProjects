page 50104 "Savings Card"
{
    PageType = Card;
    SourceTable = "Savings";

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Savings ID"; Rec."Savings ID")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Member ID"; Rec."Member ID")
                {
                    ApplicationArea = All;
                }
                field("Amount"; Rec."Amount")
                {
                    ApplicationArea = All;
                }
                field("Savings Date"; Rec."Savings Date")
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
