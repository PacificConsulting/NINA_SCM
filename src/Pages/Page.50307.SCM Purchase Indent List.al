page 50307 "SCM Purchase Indent List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 50303;
    CardPageId = 50306;
    SourceTableView = where("Department Type" = filter(SCM));

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
                field("Department Type"; Rec."Department Type")
                {
                    ApplicationArea = All;
                }
                field("Type of Indent"; Rec."Type of Indent")
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

    }

}