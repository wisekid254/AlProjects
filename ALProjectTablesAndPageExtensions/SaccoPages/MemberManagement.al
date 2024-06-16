page 50156 "Member Management"
{
    PageType = List;
    SourceTable = "Member";

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Member ID"; Rec."No.")
                {
                    ApplicationArea = All;
                }
                field("Name"; Rec."Name")
                {
                    ApplicationArea = All;
                }
                field("Address"; Rec."Address")
                {
                    ApplicationArea = All;
                }
                field("Phone No."; Rec."Phone No.")
                {
                    ApplicationArea = All;
                }
                field("Email"; Rec."Email")
                {
                    ApplicationArea = All;
                }
                field("Date of Birth"; Rec."Date of Birth")
                {
                    ApplicationArea = All;
                }
                field("Membership Date"; Rec."Membership Date")
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
            action(RegisterNewMember)
            {
                ApplicationArea = All;
                Caption = 'Register New Member';
                Promoted = true;
                PromotedCategory = Process;
                trigger OnAction()
                begin
                    PAGE.Run(PAGE::"Member Management");
                end;
            }
        }
    }
}
