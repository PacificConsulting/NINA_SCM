pageextension 50302 "Inventory Setup_SCM" extends "Inventory Setup" //OriginalId
{
    layout
    {
        addafter("Posted Transfer Shpt. Nos.")
        {
            field("TO Site to site"; Rec."TO Site to site")
            {
                ApplicationArea = All;
            }

        }

    }

    actions
    {
    }
}