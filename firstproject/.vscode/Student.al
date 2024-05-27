table 50112 Student
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; sId; Integer)
        {
            DataClassification = ToBeClassified;

        }
        field(5; sName; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(10; sPhoneNo; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(15; sClass; Text[15])
        {
            DataClassification = ToBeClassified;
        }
        field(20; sAddress; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    keys
    {
        key(Key1; sId)
        {
            Clustered = true;
        }
        key(newKey; sPhoneNo)
        {

        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    trigger OnInsert()
    begin
        Message('Student details inserted');
    end;

    trigger OnModify()
    begin
        Message('Student details modified');
    end;

    trigger OnDelete()
    begin
        Message('Student detail deleted');
    end;

    trigger OnRename()
    begin
        Message('Student detail renamed');
    end;

}