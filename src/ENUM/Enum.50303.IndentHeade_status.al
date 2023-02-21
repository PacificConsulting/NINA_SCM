enum 50303 "Indent status"
{
    Extensible = true;

    value(0; Open)
    {
        Caption = 'Open';
    }
    value(1; "Pending For Approval")
    {
        Caption = 'Pending For Approval';
    }
    value(2; "Final Pending For Approval")
    {
        Caption = 'Final Pending For Approval';
    }
    value(3; Approved)
    {
        Caption = 'Approved';
    }
    value(4; Reject)
    {
        Caption = 'Reject';
    }
}