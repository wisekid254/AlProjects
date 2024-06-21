page 50106 "Financial Transaction Card"
{
    PageType = Card;
    SourceTable = "Financial Transaction";

    layout
    {
        area(content)
        {
            group(Group)
            {
                field("Transaction ID"; Rec."Transaction ID")
                {
                    ApplicationArea = All;
                    Editable = false;
                }
                field("Member ID"; Rec."Member ID")
                {
                    ApplicationArea = All;
                }
                field("Transaction Date"; Rec."Transaction Date")
                {
                    ApplicationArea = All;
                }
                field("Amount"; Rec."Amount")
                {
                    ApplicationArea = All;
                }
                field("Transaction Type"; Rec."Transaction Type")
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
