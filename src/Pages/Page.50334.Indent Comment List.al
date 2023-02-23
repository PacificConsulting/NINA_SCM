page 50334 "Indent Comment List"
{
    Caption = 'Comment List';
    DataCaptionFields = "Department Type", "No.";
    Editable = false;
    LinksAllowed = false;
    PageType = List;
    SourceTable = "Indent Comment Line";

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                ShowCaption = false;
                field("No."; Rec."No.")
                {
                    ApplicationArea = Comments;
                    ToolTip = 'Specifies the number of the involved entry or record, according to the specified number series.';
                }
                field(Date; rec.Date)
                {
                    ApplicationArea = Comments;
                    ToolTip = 'Specifies the date the comment was created.';
                }
                field(Comment; rec.Comment)
                {
                    ApplicationArea = Comments;
                    ToolTip = 'Specifies the comment itself.';
                }
            }
        }
    }

    actions
    {
    }
}

