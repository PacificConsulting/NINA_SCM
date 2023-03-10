page 50331 "PNM Indent List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 50303;
    CardPageId = 50330;
    SourceTableView = where("Department Type" = filter(PNM));

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
                field("Department Type"; Rec."Department Type")
                {
                    ApplicationArea = All;
                }
                field("Type of Indent"; Rec."Type of Indent")
                {
                    ApplicationArea = All;
                }
                field("Indent From Forecast Month"; Rec."Indent From Forecast Month")
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