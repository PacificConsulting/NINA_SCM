tableextension 50302 "Transfer Header_SCM" extends "Transfer Header"
{
    fields
    {
        // Add changes to table fields here
        field(50300; "Ex work applicable"; Enum "Ex Work Applicable")
        {
            DataClassification = ToBeClassified;
        }
        field(50301; "Transport Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
            trigger onvalidate()
            var
                myInt: Integer;
            begin
                if recVend.GET(rec."Transport Vendor No.") then;
                rec."Transport Vendor Name" := recVend.name;
            end;
        }
        field(50302; "Transport Vendor Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(50303; "LR Applicable"; Enum "LR Applicable")
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "LR Applicable" = "LR Applicable"::Applicable then
                    Rec.TestField("LR NO.");
            end;
        }
        field(50304; "LR NO."; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50305; "LR Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(50306; "E-way Bill Applicable"; Enum "LR Applicable")
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "LR Applicable" = "LR Applicable"::Applicable then
                    Rec.TestField("E-Way Bill No");
            end;
        }
        field(50307; "E-Way Bill No"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50308; "Vehicle Applicable"; enum "Vehicle Apllicable")
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                // if "Vehicle Applicable" = "Vehicle Applicable"::Transporter then
                //     Rec.TestField("SCM Vehicle No.");
            end;
        }
        // field(50309; "SCM Vehicle No."; Code[20])
        // {
        //     DataClassification = ToBeClassified;
        // }
        field(50310; "Add Transport Vendor No."; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Additional Transport Vendor No.';
            TableRelation = Vendor."No.";
        }
        field(50311; "Add Transport Vendor Desc"; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Additional Transporter Vendor Description';
        }
        field(50312; "Port Load"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        recVend: record 23;

}