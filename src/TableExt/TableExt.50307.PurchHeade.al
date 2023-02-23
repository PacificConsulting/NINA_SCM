tableextension 50307 "Purch Head" extends "Purchase Header"
{
    fields
    {
        // Add changes to table fields here
        field(50300; "Ex Work Applicable"; Enum "Purchase Ex Work Applicable")
        {
            DataClassification = ToBeClassified;
        }
        field(50301; "Ex Work PO"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(50302; "Address"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(50303; "Address 2"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(50307; "EX-WORKS"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
        field(50308; "Post Code"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Post Code";
        }
        field(50309; City; code[20])
        {
            DataClassification = ToBeClassified;
            //TableRelation = city

        }
        field(50310; "Country"; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "Country/Region";
        }
        field(50311; "Transport Vendor No."; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";

            trigger OnValidate()
            var
                Vend: Record 23;
            begin
                IF Vend.get("Transport Vendor No.") then;
                rec."Transport Vendor Name" := Vend.Name;
            end;
        }
        field(50312; "Part Load"; Boolean)
        {
            DataClassification = ToBeClassified;

        }
        field(50313; "Transport Vendor Name"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(50314; "LR Applicable"; Enum "Purchase LR Applicable")
        {
            DataClassification = ToBeClassified;
        }
        field(50315; "LR No."; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50316; "E-Way Bill Applicable"; Enum "Purchase E-Way Applicable")
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}