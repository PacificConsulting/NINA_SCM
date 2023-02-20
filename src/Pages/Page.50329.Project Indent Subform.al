page 50329 "Project Indent Subform"
{
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 50304;

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Indent No."; Rec."Indent No.")
                {
                    ApplicationArea = All;
                }
                field("Line No"; Rec."Line No")
                {
                    ApplicationArea = All;
                }
                field("Item No."; Rec."Item No.")
                {
                    ApplicationArea = All;
                }
                field("Direct Unit Cost"; Rec."Direct Unit Cost")
                {
                    ApplicationArea = All;
                }
                field("Item Category"; Rec."Item Category")
                {
                    ApplicationArea = All;
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                }
                field("Indent Quantity"; Rec."Indent Quantity")
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