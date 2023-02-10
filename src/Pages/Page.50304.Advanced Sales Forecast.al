page 50304 "Advanced Sales Forecast"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 50301;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;

                }
                field("Forcast Date"; Rec."Forcast Date")
                {
                    ApplicationArea = All;
                }
                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }
                field("Site Name"; Rec."Site Name")
                {
                    ApplicationArea = All;
                }
                field("GM Code"; Rec."GM Code")
                {
                    ApplicationArea = All;
                }
                field("PM Code"; Rec."PM Code")
                {
                    ApplicationArea = All;
                }
                field("Project Cordinator"; Rec."Project Cordinator")
                {
                    ApplicationArea = All;
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(UOM; Rec.UOM)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Final Qty Freeze"; Rec."Final Qty Freeze")
                {
                    ApplicationArea = All;
                }
                field("New Reset Date"; Rec."New Reset Date")
                {
                    ApplicationArea = All;
                }
                field("New Reset Quantity"; Rec."New Reset Quantity")
                {
                    ApplicationArea = All;
                }
                field("Sales Forecast Material Adv"; Rec."Sales Forecast Material Adv")
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