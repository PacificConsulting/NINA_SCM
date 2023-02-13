page 50308 "Purchase Indent Subform"
{
    PageType = ListPart;
    // ApplicationArea = All;
    // UsageCategory = Lists;
    SourceTable = 50304;


    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;

                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Item Category"; Rec."Item Category")
                {
                    ApplicationArea = All;
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Indent Quantity"; Rec."Indent Quantity")
                {
                    ApplicationArea = All;
                }
                field("Inedent UOM"; Rec."Inedent UOM")
                {
                    ApplicationArea = All;
                }
                field("New Indent Qty 1"; Rec."New Indent Qty 1")
                {
                    ApplicationArea = All;
                }
                field("New Indent Qty 2"; Rec."New Indent Qty 2")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
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