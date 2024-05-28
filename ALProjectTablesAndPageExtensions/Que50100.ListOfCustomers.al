query 50104 "List Of Customers"
{
    Caption = 'List Of Customers';
    QueryType = Normal;
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Customer; Customer)
        {
            column(Address; Address)
            {
            }
            column(Amount; Amount)
            {
            }
            column(Balance; Balance)
            {
            }
            column(Comment; Comment)
            {
            }
            column(Contact; Contact)
            {
            }
            column(City; City)
            {
            }
            column(CountryRegionCode; "Country/Region Code")
            {
            }
            column(EMail; "E-Mail")
            {
            }
            column(Image; Image)
            {
            }
            column(Name; Name)
            {
            }
            column(PartnerType; "Partner Type")
            {
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
