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
                field("Forcast Date"; Rec."Forcast Date")
                {
                    ApplicationArea = All;
                }
                field("Tendor No."; Rec."Tendor No.")
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

    }

    actions
    {
        area(Processing)
        {
            action("Send for Approval")
            {
                ApplicationArea = All;
                Image = Approval;

                trigger OnAction();
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to send for approval', TRUE) THEN
                        EXIT;
                    UserSet.TestField("Forecast 1st Approver");
                    SalesForDet.Reset();
                    SalesForDet.SetRange("Document No.", Rec."Work Order No.");
                    if not SalesForDet.FindFirst() then begin
                        ForecastMgmnt.CreateSalesForecastEntry(Rec);
                    end;
                end;
            }
        }
    }
    var
        UserSet: Record 91;
        SalesForDet: Record 50301;
        ForecastMgmnt: Codeunit 50300;
}