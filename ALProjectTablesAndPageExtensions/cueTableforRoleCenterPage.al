table 50146 SalesInvoiceCueTable
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; PrimaryKey; Code[250])
        {

            DataClassification = ToBeClassified;
        }
        field(2; SalesInvoicesOpen; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type" = Filter(Invoice), Status = FILTER(Open)));

        }
        field(3; NoOfSalesQuotes; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type" = Filter(Invoice), Status = FILTER(Open)));

        }
        field(4; NoOfSalesOrder; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count("Sales Header" where("Document Type" = Filter(Invoice), Status = FILTER(Open)));

        }
    }

    keys
    {
        key(PK; PrimaryKey)
        {
            Clustered = true;
        }
    }
}