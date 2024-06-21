table 50103 "Financial Transaction"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Transaction ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Transaction ID';
            Editable = true;
        }
        field(2; "Member ID"; Code[20])
        {
            DataClassification = CustomerContent;
            Caption = 'Member ID';
            TableRelation = "Member"."No.";
        }
        field(3; "Transaction Date"; Date)
        {
            DataClassification = CustomerContent;
            Caption = 'Transaction Date';
        }
        field(4; "Amount"; Decimal)
        {
            DataClassification = CustomerContent;
            Caption = 'Amount';
        }
        field(5; "Transaction Type"; Option)
        {
            DataClassification = CustomerContent;
            Caption = 'Transaction Type';
            OptionMembers = Deposit,Withdrawal;
        }
    }

    keys
    {
        key(PK; "Transaction ID")
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
        if "Transaction ID" = '' then
            "Transaction ID" := STRSUBSTNO('%1', FORMAT(CREATEGUID()));
    end;
}
