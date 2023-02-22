pageextension 50303 "Purchase Payablle_SCM" extends "Purchases & Payables Setup"
{
    layout
    {
        // Add changes to page layout here
        addafter("Posted Credit Memo Nos.")
        {
            field("SCM Indent No."; Rec."SCM Indent No.")
            {
                ApplicationArea = All;
            }
            field("Project Indent No."; Rec."Project Indent No.")
            {
                ApplicationArea = All;
            }
            field("PNM Indent No."; Rec."PNM Indent No.")
            {
                ApplicationArea = All;
            }

        }
    }


}