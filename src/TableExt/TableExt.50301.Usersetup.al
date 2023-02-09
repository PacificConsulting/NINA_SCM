tableextension 50301 "User Setup_SCM" extends "User Setup"
{
    fields
    {
        // Add changes to table fields here
        field(50300; "SCM 1st Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
        field(50301; "SCM 2nd Approver"; Code[50])
        {
            DataClassification = ToBeClassified;
            TableRelation = User."User Name";
        }
    }

    var
        myInt: Integer;
}