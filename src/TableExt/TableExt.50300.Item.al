tableextension 50300 "Item_SCM" extends Item
{
    fields
    {
        // Add changes to table fields here
        field(50300; "Forecast Item"; Boolean)
        {
            DataClassification = ToBeClassified;
        }
    }

    var
        myInt: Integer;
}