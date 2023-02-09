page 50300 "Material Forecast"
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
                field("Doucment Type"; Rec."Doucment Type")
                {
                    ApplicationArea = All;

                }
                field("Work Order No."; Rec."Work Order No.")
                {
                    ApplicationArea = All;
                }
                field("Site Name"; Rec."Site Name")
                {
                    ApplicationArea = All;
                }
                field("Sell to customer Name"; Rec."Sell to customer Name")
                {
                    ApplicationArea = All;
                }
                field("Sell to Customer No."; Rec."Sell to Customer No.")
                {
                    ApplicationArea = All;
                }
                field("Branch Name"; Rec."Branch Name")
                {
                    ApplicationArea = All;
                }
                field("GM Code"; Rec."GM Code")
                {
                    ApplicationArea = All;
                }
                field("Sales Person Code"; Rec."Sales Person Code")
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
                field("Total Sales"; Rec."Total Sales")
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