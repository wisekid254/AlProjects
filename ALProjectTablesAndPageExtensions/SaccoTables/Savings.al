table 50158 "Savings"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Savings ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Savings ID';
            Editable = true;
        }
        field(2; "Member ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Member ID';
            TableRelation = "Member"."No.";
        }
        field(3; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';
        }
        field(4; "Savings Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Savings Date';
        }
    }

    keys
    {
        key(PK; "Savings ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if "Savings ID" = '' then
            "Savings ID" := STRSUBSTNO('%1', FORMAT(CREATEGUID()));
    end;

}
