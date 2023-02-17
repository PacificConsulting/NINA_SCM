tableextension 50304 "Inventroy Setup_SCM" extends "Inventory Setup"
{
    fields
    {
        // Add changes to table fields here
        field(50300; "TO Site to site"; Code[20])
        {
            DataClassification = ToBeClassified;
            TableRelation = "No. Series";
        }
    }

    var
        myInt: Integer;
}