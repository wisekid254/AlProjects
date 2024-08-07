table 50111 Employe
{
    Caption = 'Employee Table';

    DataClassification = ToBeClassified;

    fields
    {
        field(1; "emp code"; Code[10])
        {
            DataClassification = ToBeClassified;

        }
        field(10; "emp name"; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(20; salary; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(30; DOJ; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(40; City; Option)
        {
            OptionMembers = Chenai,Coinbatore,Mangalore,Mumbai;
            DataClassification = ToBeClassified;
        }
        field(50; gender; option)
        {
            OptionMembers = M,F,Notwillingtosay,T;
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "emp code")
        {
            Clustered = true;
        }
        key(sk; City)
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    trigger OnInsert()
    begin
        Message('Data Inserted');
    end;

    trigger OnModify()
    begin
        Message('Data modified');
    end;

    trigger OnDelete()
    begin
        Message('Data deleted');
    end;

    trigger OnRename()
    begin
        Message('Data renamed');
    end;

}