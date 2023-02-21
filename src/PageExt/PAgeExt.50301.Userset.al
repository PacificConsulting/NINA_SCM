pageextension 50301 "User set_SCM" extends "User Setup" //OriginalId
{
    layout
    {
        addafter(PhoneNo)
        {
            field("Forecast 2nd Approver"; Rec."Forecast 2nd Approver")
            {
                ApplicationArea = All;
            }
            field("Forecast 1st Approver"; Rec."Forecast 1st Approver")
            {
                ApplicationArea = All;
            }
            field("SCM Indent 1st Approver"; Rec."SCM Indent 1st Approver")
            {
                ApplicationArea = All;
            }
            field("SCM Indent 2nd Approver"; Rec."SCM Indent 2nd Approver")
            {
                ApplicationArea = All;
            }
            field("Project Indent 1st Approver"; Rec."Project Indent 1st Approver")
            {
                ApplicationArea = All;
            }
            field("Project Indent 2nd Approver"; Rec."Project Indent 2nd Approver")
            {
                ApplicationArea = All;
            }
            field("PNM Indent 1st Approver"; Rec."PNM Indent 1st Approver")
            {
                ApplicationArea = All;
            }
            field("PNM Indent 2nd Approver"; Rec."PNM Indent 2nd Approver")
            {
                ApplicationArea = All;
            }
        }

    }

}