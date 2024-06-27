page 50506 "Send Email Dialog"
{
    PageType = StandardDialog;
    // ApplicationArea = All;
    Caption = 'Send Email to Students';

    layout
    {
        area(content)
        {
            group(Group)
            {
                field(Subject; Subject)
                {
                    ApplicationArea = All;
                }
                field(Body; Body)
                {
                    ApplicationArea = All;
                    MultiLine = true;
                }
            }
        }
    }

    actions
    {
        area(processing)
        {
            action(Send)
            {

                Caption = 'Send';
                Image = Email;
                // Promoted = true;
                // PromotedCategory = Process;

                trigger OnAction()
                var
                    EmailCodeunit: Codeunit "Send Email Codeunit";
                begin
                    EmailCodeunit.SendEmails(Subject, Body);
                    CurrPage.Close();
                end;
            }
        }
    }

    var
        Subject: Text[100];
        Body: Text[1000];
}
