table 50503 "Past Papers"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Paper ID"; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
        }
        field(2; "Course Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Course Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Year"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Semester"; Option)
        {
            OptionMembers = "Semester 1","Semester 2";
            DataClassification = ToBeClassified;
        }
        field(6; "File Path"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Paper ID")
        {
            Clustered = true;
        }
    }

    // triggers
    // {
    //     // Add triggers if needed
    // }
}
