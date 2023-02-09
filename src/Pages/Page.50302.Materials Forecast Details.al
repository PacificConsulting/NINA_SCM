page 50302 "Materials Forecast Details"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Materials Forecast Details";

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
                field("Work Order Line No."; Rec."Work Order Line No.")
                {
                    ApplicationArea = All;
                }
                field("Job No."; Rec."Job No.")
                {
                    ApplicationArea = All;
                }
                field("Branch Code"; Rec."Branch Code")
                {
                    ApplicationArea = All;
                }
                field("Project Code"; Rec."Project Code")
                {
                    ApplicationArea = All;
                }
                field("Job Task No."; Rec."Job Task No.")
                {
                    ApplicationArea = All;
                }
                field("Forcast Date"; Rec."Forcast Date")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field(UOM; Rec.UOM)
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field("Quantity Base"; Rec."Quantity Base")
                {
                    ApplicationArea = All;
                }
                field("Final Qty Freeze"; Rec."Final Qty Freeze")
                {
                    ApplicationArea = All;
                }
                field("New Reset Posting Date"; Rec."New Reset Posting Date")
                {
                    ApplicationArea = All;
                }
                field("New Reset Quantity"; Rec."New Reset Quantity")
                {
                    ApplicationArea = All;
                }
                field("Constent of Material"; Rec."Constent of Material")
                {
                    ApplicationArea = All;
                }
                field("Sales Forecast Material Adv"; Rec."Sales Forecast Material Adv")
                {
                    ApplicationArea = All;
                }
                field("New Reset Date"; Rec."New Reset Date")
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