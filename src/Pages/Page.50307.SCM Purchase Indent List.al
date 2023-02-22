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
    //     trigger OnQueryClosePage(CloseAction: Action): Boolean;
    // begin
    //     IF CloseAction = ACTION::LookupOK THEN
    //         LookupOKOnPush;
    // end;

    //     local procedure LookupOKOnPush();
    // begin
    //     //IF (Rec.Quantity - Rec."PO Qty") <> 0 THEN BEGIN
    //     IF (Rec.Quantity) <> 0 THEN BEGIN
    //         CurrPage.SETSELECTIONFILTER(Rec);
    //         SetPurchHeaderIndent(PurchHeader);
    //         CreateIndentLines(Rec);
    //     END ELSE BEGIN
    //         ERROR('%1', 'Please select the records having Outstanding Qty');
    //     END;
    // end;

    // procedure SetPurchHeaderIndent(var PurchHeader2: Record 38);
    // begin
    //     PurchHeader.RESET;
    //     PurchHeader.SETRANGE(PurchHeader."Document Type", PurchHeader2."Document Type");
    //     PurchHeader.SETRANGE(PurchHeader."No.", PurchHeader2."No.");
    //     PurchHeader.SETRANGE(PurchHeader."Location Code", PurchHeader2."Location Code");
    //     IF PurchHeader.FINDFIRST THEN;
    //     /*
    //     PurchHeader.GET(PurchHeader2."Document Type", PurchHeader2."No.");
    //     PurchHeader.TESTFIELD("Document Type",PurchHeader."Document Type"::Order);
    //     */
    //     //PurchHeader.TESTFIELD("Document Type",PurchHeader."Document Type"::Order);
    // end;

    // procedure CreateIndentLines(var PurchIndentLine2: Record 50023);
    // var
    //     TransferLine: Boolean;
    //     DimMgt: Codeunit 408;
    // begin
    //     WITH PurchIndentLine2 DO BEGIN
    //         SETFILTER(Quantity, '<>0');
    //         IF FIND('-') THEN BEGIN
    //             purchline.LOCKTABLE;
    //             purchline.SETRANGE("Document Type", PurchHeader."Document Type");
    //             purchline.SETRANGE("Document No.", PurchHeader."No.");
    //             purchline."Document Type" := PurchHeader."Document Type";
    //             purchline."Document No." := PurchHeader."No.";
    //             REPEAT
    //                 PurcIndnettLine := PurchIndentLine2;
    //                 PurcIndnettLine.InsertPurchLineFromIndentLine(purchline);
    //             // DimMgt.MoveTempFromDimToTempToDim(TempFromLineDim,TempToLineDim);
    //             UNTIL NEXT = 0;
    //             //  DimMgt.TransferTempToDimToDocDim(TempToLineDim);
    //         END;
    //     END;
    // end;

}
    
}