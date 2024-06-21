table 50111 "Loan Payment"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Payment ID"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment ID';
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
        field(4; "Payment Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Amount';
        }
        field(5; "Payment Date"; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Payment Date';
        }
        field(6; "Remaining Balance"; Decimal)
        {
            DataClassification = ToBeClassified;
            Caption = 'Remaining Balance';
        }
    }

    keys
    {
        key(PK; "Payment ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if "Payment ID" = '' then
            "Payment ID" := STRSUBSTNO('%1', FORMAT(CREATEGUID()));
    end;
}
