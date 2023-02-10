table 50300 "Material Forecast"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Work Order No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Forcast Date"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(3; "Tendor No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(4; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }

        field(5; Description; Text[30])
        {
            DataClassification = ToBeClassified;

        }
        field(6; "Description 2"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Work Order Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Balance Work ord Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(9; "Unit of Measure"; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Unit Price excl. vat"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Line excl.vat"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Forcast Quantity 1"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Forcast Quantity 2"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Forcast Quantity 3"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(15; "Forcast Sales  Value 1"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Forcast Sales  Value 2"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Forcast Sales  Value 3"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Previous Month Forecast Qty"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(19; "Previous Month Sales Qty"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(20; "Previous Month Forecast Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(21; "Previous Month Sales Amount"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(22; "Location Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(23; "Doucment Type"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(24; "Site Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(25; "Sell to Customer No."; code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Customer."No.";

            trigger OnValidate()
            var
                cust: Record 18;
            begin
                if cust.get(Rec."Sell to Customer No.") then;
                rec."Sell to customer Name" := cust.Name;
            end;

        }
        field(26; "Sell to customer Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(27; "Branch Name"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(28; "GM Code"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(29; "Sales Person Code"; code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(30; "Total Sales"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Work Order No.")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}