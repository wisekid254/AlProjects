table 50157 "Loan"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Loan id"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Loan ID';
            Editable = true;
        }
        field(2; "Member ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Member ID';
            TableRelation = "Member"."No.";
        }
        field(3; "Loan Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Loan Amount';
        }
        field(4; "Loan Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Loan Date';
        }
        field(5; "Due Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Due Date';
        }
        field(6; "Interest Rate"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Interest Rate (%)';
        }
        // Add other fields as needed
        field(7; "Loan Term"; Integer)
        {
            DataClassification = ToBeClassified;
            Caption = 'Loan Term';
        }
        field(8; "Disbursement Date"; date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Disbursement Date';
        }
        field(9; Status; Option)
        {
            DataClassification = ToBeClassified;
            OptionMembers = "paid","Payment Pending";
            Caption = 'Statu';
        }
    }

    keys
    {
        key(PK; "Loan id")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        // Automatically generate a Loan ID if not specified
        if "Loan id" = '' then
            "Loan id" := STRSUBSTNO('%1', FORMAT(CREATEGUID()));
    end;
}
