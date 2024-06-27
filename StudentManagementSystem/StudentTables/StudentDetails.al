table 50501 "Student"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Student ID No"; Code[30])
        {
            DataClassification = SystemMetadata;
        }
        field(2; "First Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Last Name"; Text[50])
        {
            DataClassification = ToBeClassified;
        }
        // field(4; "Date of Birth"; Date)
        // {
        //     DataClassification = ToBeClassified;
        // }
        field(5; "Email"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        // field(6; "Phone Number"; Text[20])
        // {
        //     DataClassification = ToBeClassified;
        // }
        // field(7; "Address"; Text[100])
        // {
        //     DataClassification = ToBeClassified;
        // }
    }

    keys
    {
        key(PK; "Student ID No")
        {
            Clustered = true;
        }
    }

    // triggers
    // {
    //     // Add triggers if needed
    // }
}
