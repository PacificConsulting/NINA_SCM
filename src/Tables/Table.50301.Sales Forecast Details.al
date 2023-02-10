table 50301 "Sales Forecast Details"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "Forcast Date"; Date)
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Document No."; Code[20])
        {
            DataClassification = ToBeClassified;
            //Editable = true;
        }
        field(3; "Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Site Name"; Text[30])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "GM Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "PM Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Project Cordinator"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Description 2"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(9; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(10; UOM; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Unit Price"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Final Qty Freeze"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(13; "New Reset Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Sales Forecast Material Adv"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(15; "New Reset Date"; Date)
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Document No.")
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