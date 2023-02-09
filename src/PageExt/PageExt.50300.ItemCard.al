pageextension 50300 "SCM_Item card" extends "Item Card"
{
    layout
    {
        // Add changes to page layout here
        addafter("Cost is Adjusted")
        {
            field("Forecast Item"; Rec."Forecast Item")
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        // Add changes to page actions here
    }

    var
        myInt: Integer;
}