page 50158 "Savings List"
{
    PageType = List;
    SourceTable = "Savings";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Savings ID"; Rec."Savings ID")
                {
                    ApplicationArea = All;
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
            action(NewSavings)
            {
                ApplicationArea = All;
                Caption = 'New Savings';
                Image = New;
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Savings Card");
                end;
            }
        }
    }
}
