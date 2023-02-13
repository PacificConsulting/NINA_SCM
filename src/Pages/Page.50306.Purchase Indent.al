page 50306 "Purchase Indent"
{
    PageType = Card;
    // ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = 50303;
    DelayedInsert = true;
    MultipleNewLines = true;
    SaveValues = true;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            group(General)
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
                field("Store Issue"; Rec."Store Issue")
                {
                    ApplicationArea = All;
                }
                field("Store Issue Remarks"; Rec."Store Issue Remarks")
                {
                    ApplicationArea = All;
                }
                field("Transfer Issue"; Rec."Transfer Issue")
                {
                    ApplicationArea = All;
                }
            }
            part("Indent Line"; 50308)
            {
                Caption = 'Indent Line"';
                SubPageLink = "Indent No." = field("Indent No.");
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

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}