page 50103 "Financial Transaction List"
{
    PageType = List;
    SourceTable = "Financial Transaction";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Transaction ID"; Rec."Transaction ID")
                {
                    ApplicationArea = All;
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
            action(NewTransaction)
            {
                ApplicationArea = All;
                Caption = 'New Transaction';
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Financial Transaction Card");
                end;
            }
        }
    }
}
