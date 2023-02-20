page 50330 "PNM Indent"
{
    PageType = Card;
    // ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = 50303;

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
                field("Location Name"; Rec."Location Name")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field("Approval 1 Date"; Rec."Approval 1 Date")
                {
                    ApplicationArea = All;
                }
                field("Approval 1 User ID"; Rec."Approval 1 User ID")
                {
                    ApplicationArea = All;
                }
                field("Approval 2 Date"; Rec."Approval 2 Date")
                {
                    ApplicationArea = All;
                }
                field("Approval 2 User ID"; Rec."Approval 2 User ID")
                {
                    ApplicationArea = All;
                }
            }
            part("indent line"; "Project Indent Subform")
            {
                Caption = 'Priject Indent Line';
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