pageextension 50305 Purch_order_subform_indent extends "Purchase Order Subform"
{
    layout
    {
        // Add changes to page layout here
        addafter("Quantity Invoiced")
        {
            field("Indent No."; Rec."Indent No.")
            {
                ApplicationArea = All;
            }
            field("Indent Line No."; Rec."Indent Line No.")
            {
                ApplicationArea = All;
            }

        }
    }
    procedure GetIndentLines()
    begin
        RunIndent;
    end;

    procedure RunIndent()
    Begin
        CLEAR(GetIndent);
        PurchHeader1.RESET;
        PurchHeader1.SETRANGE(PurchHeader1."Document Type", PurchHeader1."Document Type"::Order);
        PurchHeader1.SETRANGE(PurchHeader1."No.", Rec."Document No.");
        IF PurchHeader1.FINDFIRST THEN BEGIN
            PurcIndnettLine.RESET;
            PurcIndnettLine.SETRANGE(PurcIndnettLine."Location Code", PurchHeader1."Location Code");
            //            PurcIndnettLine.SETRANGE(PurcIndnettLine.Approved, TRUE);
            //PurcIndnettLine.SETRANGE(PurcIndnettLine.Status,PurcIndnettLine.Status::Approved);
            // PurcIndnettLine.SETRANGE(PurcIndnettLine."Outstanding True", FALSE);
            GetIndent.SETTABLEVIEW(PurcIndnettLine);
            GetIndent.LOOKUPMODE := TRUE;
        END;
        GetIndent.EDITABLE(FALSE);
        GetIndent.SetPurchHeaderIndent(PurchHeader1);
        IF GetIndent.RUNMODAL <> ACTION::Cancel THEN;
    End;

    var
        PurchHeader1: Record 38;
        GetIndent: page 50333;
        PurcIndnettLine: Record 50304;
}