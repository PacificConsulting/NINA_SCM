page 50303 "Advanced Material Forcast"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 50300;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;

                }
                field("Forcast Date"; Rec."Forcast Date")
                {
                    ApplicationArea = All;
                }
                field("Tendor No."; Rec."Tendor No.")
                {
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                }
                field("Work Order Quantity"; Rec."Work Order Quantity")
                {
                    ApplicationArea = All;
                }
                field("Balance Work ord Quantity"; Rec."Balance Work ord Quantity")
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure"; Rec."Unit of Measure")
                {
                    ApplicationArea = All;
                }
                field("Unit Price excl. vat"; Rec."Unit Price excl. vat")
                {
                    ApplicationArea = All;
                }
                field("Line excl.vat"; Rec."Line excl.vat")
                {
                    ApplicationArea = All;
                }
                field("Forcast Quantity 1"; Rec."Forcast Quantity 1")
                {
                    ApplicationArea = All;
                }
                field("Forcast Quantity 2"; Rec."Forcast Quantity 2")
                {
                    ApplicationArea = All;
                }
                field("Forcast Quantity 3"; Rec."Forcast Quantity 3")
                {
                    ApplicationArea = All;
                }
                field("Forcast Sales  Value 1"; Rec."Forcast Sales  Value 1")
                {
                    ApplicationArea = All;
                }
                field("Forcast Sales  Value 2"; Rec."Forcast Sales  Value 2")
                {
                    ApplicationArea = All;
                }
                field("Forcast Sales  Value 3"; Rec."Forcast Sales  Value 3")
                {
                    ApplicationArea = All;
                }
                field("Previous Month Forecast Qty"; Rec."Previous Month Forecast Qty")
                {
                    ApplicationArea = All;
                }
                field("Previous Month Forecast Amount"; Rec."Previous Month Forecast Amount")
                {
                    ApplicationArea = All;
                }
                field("Location Name"; Rec."Location Name")
                {
                    ApplicationArea = All;
                }
                field("Previous Month Sales Amount"; Rec."Previous Month Sales Amount")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}