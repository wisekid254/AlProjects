page 50503 "Past Papers"
{
    PageType = List;
    SourceTable = "Past Papers";
    // ApplicationArea = All;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Course Code"; Rec."Course Code")
                {
                }
                field("Course Name"; Rec."Course Name")
                {
                }
                field("Year"; Rec."Year")
                {
                }
                field("Semester"; Rec."Semester")
                {
                }
                field("File Path"; Rec."File Path")
                {
                    ApplicationArea = all;
                    trigger OnDrillDown()
                    begin
                        Hyperlink('File Path');
                    end;
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Download)
            {
                Caption = 'Download';
                Promoted = true;
                PromotedCategory = Process;

                trigger OnAction()
                begin
                    // Add download logic here
                end;
            }
        }
    }
}
