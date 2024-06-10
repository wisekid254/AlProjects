page 50151 PristaProductsListPage
{
    PageType = List;
    SourceTable = PristaProductsTable;

    layout
    {
        area(Content)
        {
            repeater(group)
            {
                field(No; Rec.No)
                {
                    ApplicationArea = All;

                }
                field(ProductType; Rec.ProductType)
                {
                    ApplicationArea = All;

                }
                field(Name; Rec.Name)
                {
                    ApplicationArea = All;

                }
                field(CustomerName; Rec.CustomerName)
                {
                    ApplicationArea = All;

                }
                field(AverageSalesPerProduct; Rec.AverageSalesPerProduct)
                {
                    ApplicationArea = All;

                }
                field(AdvertisingRevenue; Rec.AdvertisingRevenue)
                {
                    ApplicationArea = All;

                }
                field(ShippingCost; Rec.ShippingCost)
                {
                    ApplicationArea = All;

                }
            }
        }
    }

}