page 50333 "Indent Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = 50304;

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

    trigger OnQueryClosePage(CloseAction: Action): Boolean;
    begin
        IF CloseAction = ACTION::LookupOK THEN
            LookupOKOnPush;
    end;

    local procedure LookupOKOnPush();
    begin
        //IF (Rec.Quantity - Rec."PO Qty") <> 0 THEN BEGIN
        IF (Rec."Indent Quantity") <> 0 THEN BEGIN
            CurrPage.SETSELECTIONFILTER(Rec);
            SetPurchHeaderIndent(PurchHeader);
            CreateIndentLines(Rec);
        END ELSE BEGIN
            ERROR('%1', 'Please select the records having Outstanding Qty');
        END;
    end;

    procedure SetPurchHeaderIndent(var PurchHeader2: Record 38);
    begin
        PurchHeader.RESET;
        PurchHeader.SETRANGE(PurchHeader."Document Type", PurchHeader2."Document Type");
        PurchHeader.SETRANGE(PurchHeader."No.", PurchHeader2."No.");
        PurchHeader.SETRANGE(PurchHeader."Location Code", PurchHeader2."Location Code");
        IF PurchHeader.FINDFIRST THEN;
    end;

    procedure CreateIndentLines(var PurchIndentLine2: Record 50304);
    var
        TransferLine: Boolean;
        DimMgt: Codeunit 408;
    begin
        WITH PurchIndentLine2 DO BEGIN
            SETFILTER("Indent Quantity", '<>0');
            IF FIND('-') THEN BEGIN
                purchline.LOCKTABLE;
                purchline.SETRANGE("Document Type", PurchHeader."Document Type");
                purchline.SETRANGE("Document No.", PurchHeader."No.");
                purchline."Document Type" := PurchHeader."Document Type";
                purchline."Document No." := PurchHeader."No.";
                REPEAT
                    PurcIndnettLine := PurchIndentLine2;
                    PurcIndnettLine.InsertPurchLineFromIndentLine(purchline);
                // DimMgt.MoveTempFromDimToTempToDim(TempFromLineDim,TempToLineDim);
                UNTIL NEXT = 0;
                //  DimMgt.TransferTempToDimToDocDim(TempToLineDim);
            END;
        END;
    end;

    var
        purchline: Record 39;
        PurchHeader: record 38;
        PurcIndnettLine: Record 50304;
}