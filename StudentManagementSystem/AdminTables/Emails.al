table 50505 "Emails"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Email ID"; Integer)
        {
            DataClassification = SystemMetadata;
            AutoIncrement = true;
        }
        field(2; "Student ID"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Subject"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Body"; Text[1000])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Sent Date"; DateTime)
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(PK; "Email ID")
        {
            Clustered = true;
        }
    }
}
