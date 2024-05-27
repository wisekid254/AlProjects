page 50115 "Employee page"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Employe;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field(empcode; Rec."emp code")
                {
                    ApplicationArea = All;

                }
                field("emp name"; Rec."emp name")
                {
                    ApplicationArea = All;

                }
                field(salary; Rec.salary)
                {
                    ApplicationArea = All;

                }

            }

            group("Other Information")
            {

                field(DOJ; Rec.DOJ)
                {
                    ApplicationArea = All;

                }
                field(city; Rec.city)
                {
                    ApplicationArea = All;

                }
                field(gender; Rec."gender")
                {
                    ApplicationArea = All;

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Test)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    Message('Data saved in the table successfully');
                end;
            }
        }
    }

    var
        myInt: Integer;
}