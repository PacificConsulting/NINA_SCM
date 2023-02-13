page 50307 "Purchase Indent List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 50303;
    CardPageId = 50306;

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
                field("Indent Type"; Rec."Indent Type")
                {
                    ApplicationArea = All;
                }
                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("Indent From Forecast Month"; Rec."Indent From Forecast Month")
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