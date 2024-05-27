tableextension 50100 "Social Media" extends customer
{
    fields
    {
        field(50100; Facebook; Text[50])
        {
            Caption = 'Facebook';
            DataClassification = ToBeClassified;
        }
        field(50101; Instagram; Text[50])
        {
            Caption = 'Instagram';
            DataClassification = ToBeClassified;
        }
        field(50102; TwitterX; Text[50])
        {
            Caption = 'TwitterX';
            DataClassification = ToBeClassified;
        }
        field(50103; LinkedIn; Text[50])
        {
            Caption = 'LinkedIn';
            DataClassification = ToBeClassified;
        }
        field(50104; ""; )
        {
            Caption = '';
            DataClassification = ToBeClassified;
        }
    }
}
