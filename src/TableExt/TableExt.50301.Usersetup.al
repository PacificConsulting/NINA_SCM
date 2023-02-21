tableextension 50301 "User Setup_SCM" extends "User Setup"
{
    fields
    {
        // Add changes to table fields here
        field(50300; "Forecast 1st Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(50301; "Forecast 2nd Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(50302; "SCM Indent 1st Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(50303; "SCM Indent 2nd Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(50304; "Project Indent 1st Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(50305; "Project Indent 2nd Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(50306; "PNM Indent 1st Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(50307; "PNM Indent 2nd Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
    }

    var
        myInt: Integer;
}