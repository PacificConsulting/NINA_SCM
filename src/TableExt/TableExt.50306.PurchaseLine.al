tableextension 50306 "Purchase Line_SCM" extends "Purchase Line"
{
    fields
    {
        // Add changes to table fields here
        field(50300; "Indent No."; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(50301; "Indent Line No."; Integer)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate();
            begin
                TestStatusOpen;
            end;
        }
        field(50302; "MRWB Site Name"; text[250])
        {
            DataClassification = ToBeClassified;
        }
        // field(50303; "GST Group"; Code[20])
        // {
        //     DataClassification = ToBeClassified;
        // }
        // field(50304; "HSN Code"; Code[20])
        // {
        //     DataClassification = ToBeClassified;
        // }
        field(50305; "PAN India Qty."; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50306; "Idle Qty"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50307; "Consumed Qty."; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(50308; "Indent QTY"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        // modify("No.")
        // {
        //  trigger OnBeforeValidate()
        //       begin
        //     if ItemRec.Get("No.") then;
        //     // "GST Group" := ItemRec."Gen. Prod. Posting Group"
        //     // "HSN Code" := ItemRec.hs

        //  end;

    }

    var
        myInt: Integer;
}