pageextension 50301 "User set_SCM" extends "User Setup" //OriginalId
{
    layout
    {
        addafter(PhoneNo)
        {
            field("SCM 1st Approver"; Rec."SCM 1st Approver")
            {
                ApplicationArea = All;
            }
            field("SCM 2nd Approver"; Rec."SCM 2nd Approver")
            {
                ApplicationArea = All;
            }


        }

    }

    actions
    {
    }
}