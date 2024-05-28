page 50100 additionPage
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    actions
    {
        area(Processing)
        {
            action(Addition)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Mycode.Run();
                end;
            }
        }
    }

    var
        Mycode: Codeunit MyCodeunit;
}