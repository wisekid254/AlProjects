table 50110 "Loan Application"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Application ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Application ID';
            Editable = false;
        }
        field(2; "Loan ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Loan ID';
            TableRelation = "Loan"."Loan ID";
        }
        field(3; "Member ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Member ID';
            TableRelation = "Member"."No.";
        }
        field(4; "Requested Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Requested Amount';
        }
        field(5; "Interest Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Interest Rate';
        }
        field(6; "Loan Term"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Loan Term (months)';
        }
        field(7; "Application Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Application Date';
        }
        field(8; "Status"; Option)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
            OptionMembers = Pending,Approved,Rejected;
        }
    }

    keys
    {
        key(PK; "Application ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if "Application ID" = '' then
            "Application ID" := STRSUBSTNO('%1', FORMAT(CREATEGUID()));
    end;
}
