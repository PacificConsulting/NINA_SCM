tableextension 50305 "Purch Payable_SCM" extends "Purchases & Payables Setup"
{
    fields
    {
        // Add changes to table fields here
        field(50300; "SCM Indent No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50301; "Project Indent No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
        field(50302; "PNM Indent No."; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    var
        myInt: Integer;
}