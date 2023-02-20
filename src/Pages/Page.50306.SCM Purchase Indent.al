page 50306 "SCM Purchase Indent"
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
                field("MRWB Site Name Remark"; Rec."MRWB Site Name Remark")
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
                field("Store Issue Date"; Rec."Store Issue Date")
                {
                    ApplicationArea = All;
                }
                field("Transfer Issue"; Rec."Transfer Issue")
                {
                    ApplicationArea = All;
                }
                field("Transfer Issue Date"; Rec."Transfer Issue Date")
                {
                    ApplicationArea = All;
                }
                field("Transfer Issue Remarks"; Rec."Transfer Issue Remarks")
                {
                    ApplicationArea = All;
                }
                field("Vendor No"; Rec."Vendor No")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Approval 2 User ID"; Rec."Approval 2 User ID")
                {
                    ApplicationArea = All;
                }
                field("Approval 2 Date"; Rec."Approval 2 Date")
                {
                    ApplicationArea = All;
                }
                field("Approval 1 User ID"; Rec."Approval 1 User ID")
                {
                    ApplicationArea = All;
                }
                field("Approval 1 Date"; Rec."Approval 1 Date")
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

    // actions
    // {
    //     area(Processing)
    //     {
    //         action(ActionName)
    //         {
    //             ApplicationArea = All;

    //             trigger OnAction()
    //             begin

    //             end;
    //         }
    //     }
    // }

    var
        myInt: Integer;
}