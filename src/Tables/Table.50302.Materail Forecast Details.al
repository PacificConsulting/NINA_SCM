table 50302 "Materials Forecast Details"
{
    DataClassification = ToBeClassified;

    fields
    {

        field(1; "Work Order No."; Code[20])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Job No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(3; "Branch Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Project Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(5; "Job Task No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(6; "Work Order Line No."; Integer)
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Forcast Date"; Date)
        {
            DataClassification = ToBeClassified;

        }

        field(8; "Item No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Item."No.";

            trigger OnValidate()
            var
                RecItem: Record 27;
            begin
                if RecItem.Get("Item No.") then;
                UOM := RecItem."Base Unit of Measure";
                Description := RecItem.Description;
            end;
        }
        field(9; Description; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(10; UOM; Code[10])
        {
            DataClassification = ToBeClassified;
        }
        field(11; Quantity; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(12; "Quantity Base"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(13; "Final Qty Freeze"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "New Reset Quantity"; Decimal)
        {
            DataClassification = ToBeClassified;
        }

        field(15; "New Reset Posting Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(16; "Constent of Material"; Decimal)
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Sales Forecast Material Adv"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(18; "New Reset Date"; Date)
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