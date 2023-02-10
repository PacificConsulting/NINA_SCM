table 50303 "Indent Header"
{
    DataClassification = ToBeClassified;

    fields
    {
        field(1; "MRWB Site Name Remark"; Text[50])
        {
            DataClassification = ToBeClassified;

        }
        field(2; "Type of Indent"; Enum "Type Of Indent")
        {
            DataClassification = ToBeClassified;
        }
        field(3; "Indent Type"; Enum "Indent Type")
        {
            DataClassification = ToBeClassified;
        }
        field(4; "Indent No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }

        field(5; "Location Code"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Location;
            trigger OnValidate()
            var
                Loc: Record 14;
            begin
                if Loc.Get("Location Code") then;
                "Location Name" := Loc.Name;
            end;
        }
        field(6; "Location Name"; Text[100])
        {
            DataClassification = ToBeClassified;
        }
        field(7; "Indent From Forecast Month"; Enum "Indent From Forcast Month")
        {
            DataClassification = ToBeClassified;
        }
        field(8; "Store Issue"; Boolean)
        {
            DataClassification = ToBeClassified;
            trigger OnValidate()
            begin
                if "Store Issue" then
                    "Store Issue Date" := Today;
            end;
        }
        field(9; "Store Issue Remarks"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(10; "Store Issue Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(11; "Transfer Issue"; Boolean)
        {
            DataClassification = ToBeClassified;

            trigger OnValidate()
            begin
                if "Transfer Issue" then
                    "Transfer Issue Date" := Today;
            end;
        }
        field(12; "Transfer Issue Remarks"; Text[250])
        {
            DataClassification = ToBeClassified;
        }
        field(13; "Transfer Issue Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(14; "Vendor No"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = Vendor."No.";
        }
        field(15; Status; enum "Indent status")
        {
            DataClassification = ToBeClassified;
        }
        field(16; "User ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(17; "Approval 1 Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(18; "Approval 1 User ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(19; "Approval 2 Date"; Date)
        {
            DataClassification = ToBeClassified;
        }
        field(20; "Approval 2 User ID"; Code[50])
        {
            DataClassification = ToBeClassified;
        }
        field(21; "Branch Code"; Code[20])
        {
            DataClassification = ToBeClassified;
        }

    }

    keys
    {
        key(Key1; "Indent No.", "Indent Type")
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        "User ID" := UserId;
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