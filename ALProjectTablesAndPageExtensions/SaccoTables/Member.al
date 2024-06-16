table 50156 "Member"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "No."; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Member ID';
            Editable = true;
        }
        field(2; "Name"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Name';
        }
        field(3; "Address"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Address';
        }
        field(4; "Phone No."; Text[30])
        {
            DataClassification = CustomerContent;
            Caption = 'Phone No.';
        }
        field(5; "Email"; Text[100])
        {
            DataClassification = CustomerContent;
            Caption = 'Email';
        }
        field(6; "Date of Birth"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Date of Birth';
        }
        field(7; "Membership Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Membership Date';
        }
        // Add other fields as needed
    }

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        // Automatically generate a Member ID if not specified
        if "No." = '' then
            "No." := STRSUBSTNO('%1', FORMAT(CREATEGUID()));
    end;

    // You can add more triggers or procedures as needed
}
