page 50501 "Student Profile"
{
    PageType = List;
    SourceTable = "Student";
    // ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Student ID No"; Rec."Student ID No")
                {
                }
                field("First Name"; Rec."First Name")
                {
                }
                field("Last Name"; Rec."Last Name")
                {
                }
                field("Email"; Rec."Email")
                {
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(NewStudent)
            {
                Caption = 'New Student';
                Image = New;
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    PAGE.RunModal(PAGE::"Student Card");
                end;
            }
        }
    }
}
