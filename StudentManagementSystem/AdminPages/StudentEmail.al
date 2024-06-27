page 50505 "Student Emails List"
{
    PageType = List;
    SourceTable = "Emails";
    // ApplicationArea = All;
    Caption = 'Student Emails';

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Email ID"; Rec."Email ID")
                {
                    ApplicationArea = All;
                }
                field("Student ID"; Rec."Student ID")
                {

                }
                field("Subject"; Rec."Subject")
                {
                }
                field("Body"; Rec."Body")
                {
                }
                field("Sent Date"; Rec."Sent Date")
                {
                }
            }
        }
    }

    var
        UserStudentMapping: Record "User Student Mapping";

    procedure SetStudentEmailFilter()
    begin
        if UserStudentMapping.Get(UserId()) then
            Rec.SetFilter("Student ID", UserStudentMapping."Student ID");
    end;

    trigger OnOpenPage()
    begin
        SetStudentEmailFilter();
    end;



}
