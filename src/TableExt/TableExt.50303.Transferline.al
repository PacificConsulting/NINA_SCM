tableextension 50303 "Tranfser Line_SCM" extends "Transfer Line"
{
    fields
    {
        // Add changes to table fields here
        field(50300; "Indent No."; Code[20])
        {
            DataClassification = ToBeClassified;
            trigger OnLookup()
            var
                IndentHEad: Record 50300;
            begin
                // IndentHEad.Reset();
                // IndentHEad.SetRange(IndentHEad.app);
            end;
        }
        field(50301; "To Job No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
        field(50302; "To Task No."; Code[20])
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}