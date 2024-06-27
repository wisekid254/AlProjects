codeunit 50507 "Send Email Codeunit"
{
    SingleInstance = false;
    Subtype = Normal;

    procedure SendEmails(Subject: Text[100]; Body: Text[1000])
    var
        Email: Record "Emails";
        Student: Record "Student";
    begin
        if Student.FindSet() then begin
            repeat
                Email.Init();
                Email."Student ID" := Student."Student ID No";
                Email.Subject := Subject;
                Email.Body := Body;
                Email."Sent Date" := CurrentDateTime();
                Email.Insert();
            until Student.Next() = 0;
        end;

        Message('Emails have been sent to all students.');
    end;
}
