pageextension 50304 "Purchase order Indent" extends "Purchase Order"
{
    layout
    {
        addlast(General)
        {
            field("EX-WORKS"; Rec."EX-WORKS")
            {
                ApplicationArea = All;
            }

        }

    }
    actions
    {
        Addafter("Remove From Job Queue")
        {
            action("Get Indent Line")
            {
                Image = Process;
                Promoted = true;
                PromotedIsBig = true;
                ApplicationArea = all;

                trigger OnAction();
                begin
                    PHEader.RESET;
                    PHEader.SETRANGE(PHEader."Document Type", PHEader."Document Type"::Order);
                    PHEader.SETRANGE("No.", Rec."No.");
                    IF PHEader.FINDFIRST THEN BEGIN
                        // CurrPage.PurchLines.PAGE.GetIndentLines;
                    END;
                end;
            }
        }
    }
    Var
        PHEader: record 38;

}