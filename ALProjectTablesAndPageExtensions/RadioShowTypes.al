page 50144 "Radio Show Type"
{
    PageType = List;
    ApplicationArea = Basic;
    UsageCategory = Administration;
    SourceTable = "Radio Show Type";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field(Code; Rec.Code)
                {
                    ApplicationArea = Basic;

                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = Basic;
                }
            }
        }

    }
}