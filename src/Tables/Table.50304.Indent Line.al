table 50304 "Indent Line"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Indent No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Import Item"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item."No.";

            trigger OnValidate()
            var
                recitem: Record 27;
                IndeHdr: Record 50303;
            begin
                if recitem.Get("Item No.") then;
                recitem.CalcFields("Last Direct Cost");
                if IndeHdr.get("Indent No.") then;
                Description := recitem.Description;
                "Item Category" := recitem."Item Category Code";
                rec."Inedent UOM" := recitem."Base Unit of Measure";
                rec."Direct Unit Cost" := recitem."Last Direct Cost";
                rec."Location Code" := IndeHdr."Location Code";
            end;
        }
        field(4; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Indent Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Inedent UOM"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Line No"; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Item substitution  no."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Item Substitution UOM"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Quantity to be Reduce From BOQ"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Inventory at Bhiwandi"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Inventory at Haryana"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = field("Item No."), "Location Code" = FILTER('Haryana')));
            Editable = false;
        }
        field(14; "Inventory at HYD"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = field("Item No."), "Location Code" = FILTER('HYD')));
            Editable = false;

        }
        field(15; "Inventory at Pune"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = field("Item No."), "Location Code" = FILTER('Pune')));
            Editable = false;
        }
        field(16; "Inventory at Uran"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = field("Item No."), "Location Code" = FILTER('Uran')));
            Editable = false;
        }
        field(17; "Inventory at Banglore"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = field("Item No."), "Location Code" = FILTER('Banglore')));
            Editable = false;
        }
        field(18; "Total Inventroy"; Decimal)
        {
            FieldClass = FlowField;
            CalcFormula = sum("Item Ledger Entry"."Remaining Quantity" WHERE("Item No." = field("Item No.")));
        }
        field(19; "New Indent Qty 1"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(20; "New Indent Qty 2"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(21; "Location Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(22; "Original Indent Qty."; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        Field(23; "Direct Unit Cost"; Decimal)
        {
            DataClassification = ToBeClassified;

        }
        field(24; "Cost Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Item Category"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }
    keys
    {
        key(Key1; "Indent No.", "Line No")
        {
            Clustered = true;
        }
    }
    procedure InsertPurchLineFromIndentLine(var PurchLine: Record 39);
    var
        PurchInvHeader: Record 38;
        PurchOrderHeader: Record 38;
        PurchOrderLine: Record 39;
        TempPurchLine: Record 39;
        PurchSetup: Record 312;
        TransferOldExtLines: Codeunit 379;
        ItemTrackingMgt: Codeunit 6500;
        NextLineNo: Integer;
        ExtTextLine: Boolean;
        "**sh": Integer;
        //IndentPO: Record 50025;
        IndentHeader: Record 50303;
        outstandqty: Decimal;
    begin
        Rec.SETRANGE("Indent No.", "Indent No.");
        TempPurchLine := PurchLine;
        IF PurchLine.FIND('+') THEN
            NextLineNo := PurchLine."Line No." + 10000
        ELSE
            NextLineNo := 10000;

        IF PurchInvHeader."No." <> TempPurchLine."Document No." THEN
            PurchInvHeader.GET(TempPurchLine."Document Type", TempPurchLine."Document No.");

        PurchLine.INIT;
        REPEAT
            PurchLine."Line No." := NextLineNo;
            PurchLine."Document Type" := TempPurchLine."Document Type";
            PurchLine."Document No." := TempPurchLine."Document No.";
            PurchLine.Type := PurchLine.Type::Item;
            PurchLine.VALIDATE(PurchLine."No.", rec."Item No.");
            PurchLine.Description := rec.Description;
            //PurchLine."Description 2" := rec.desc
            PurchLine.VALIDATE("Unit of Measure Code", rec."Inedent UOM");
            PurchLine.VALIDATE("Location Code", rec."Location Code");
            // PurchLine."Material Requisition" := "Material Requisitioned";
            // PurchLine."FA Component Category" := "FA Component Category";
            // PurchLine."Variant Code" := "Variant Code"; // VK
            //                                             //>>PCPL-Sourav
            // PurchLine.VALIDATE("Shortcut Dimension 1 Code", "FA Sub Category");
            // PurchLine.VALIDATE("Shortcut Dimension 2 Code", "Main Category");
            //             CALCFIELDS("PO Qty");
            outstandqty := rec."Indent Quantity";// - "PO Qty";
            PurchLine.VALIDATE(PurchLine.Quantity, outstandqty); // Tolerance System
            PurchLine.VALIDATE("Indent QTY", rec."Indent Quantity");
            PurchLine."Indent No." := rec."Indent No.";
            PurchLine.VALIDATE(PurchLine."Indent Line No.", rec."Line No");
            IF outstandqty <> 0 THEN BEGIN
                PurchLine.INSERT;
            END ELSE BEGIN
                EXIT;
            END;
            NextLineNo := NextLineNo + 10000;
        UNTIL PurchLine.NEXT = 0;
    end;

    procedure ShowLineComments()
    var
        IndentCommentLine: Record 50307;
    begin
        rec.TestField("Indent No.");
        rec.TestField("Line No");
        //IndentCommentLine.ShowComments("Department Type".AsInteger(), "Indent No.", "Line No");
        IndentCommentLine.ShowComments("Indent No.", "Line No");
    end;

    var
        IndeHdr: Record 50303;


}