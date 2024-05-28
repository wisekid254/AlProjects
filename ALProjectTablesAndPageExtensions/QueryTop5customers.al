query 50149 "Top 5 Customers"
{
    QueryType = Normal;
    TopNumberOfRows = 5;
    Caption = 'Top 5 customers';
    OrderBy = descending(Sales__LCY_sum);
    QueryCategory = 'Customer List';

    elements
    {
        dataitem(Cust__Ledger_Entry; "Cust. Ledger Entry")
        {
            column(Customer_No_; "Customer No.")
            {

            }

            column(Customer_Name; "Customer Name")
            {

            }
            column(Sales__LCY_sum; "Sales (LCY)")
            {
                Method = Sum;
            }
            filter(Posting_Date; "Posting Date")
            {

            }
        }
    }

    var
        myInt: Integer;

    trigger OnBeforeOpen()
    begin

    end;
}