page 50308 "SCM Purchase Indent Subform"
{
    PageType = ListPart;
    // ApplicationArea = All;
    // UsageCategory = Lists;
    SourceTable = 50304;
    AutoSplitKey = true;
    Caption = 'Lines';
    DelayedInsert = true;
    LinksAllowed = false;
    MultipleNewLines = true;

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
                field("Item substitution  no."; Rec."Item substitution  no.")
                {
                    ApplicationArea = All;
                }
                field("Item Substitution UOM"; Rec."Item Substitution UOM")
                {
                    ApplicationArea = All;

                }
                field("Inventory at Banglore"; Rec."Inventory at Banglore")
                {
                    ApplicationArea = All;
                }
                field("Inventory at Haryana"; Rec."Inventory at Haryana")
                {
                    ApplicationArea = All;
                }
                field("Inventory at Bhiwandi"; Rec."Inventory at Bhiwandi")
                {
                    ApplicationArea = All;
                }
                field("Inventory at HYD"; Rec."Inventory at HYD")
                {
                    ApplicationArea = All;
                }
                field("Inventory at Pune"; Rec."Inventory at Pune")
                {
                    ApplicationArea = All;
                }
                field("Inventory at Uran"; Rec."Inventory at Uran")
                {
                    ApplicationArea = All;
                }
                field("Original Indent Qty."; Rec."Original Indent Qty.")
                {
                    ApplicationArea = All;
                }
                field("Cost Amount"; Rec."Cost Amount")
                {
                    ApplicationArea = All;
                }

            }
        }

    }

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction();
    //             begin

    //             end;
    //         }
    //     }
    // }
}