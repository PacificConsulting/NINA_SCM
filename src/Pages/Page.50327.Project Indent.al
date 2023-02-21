page 50327 "Project Indent"
{
    PageType = Card;
    // ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = 50303;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Indent No."; Rec."Indent No.")
                {
                    ApplicationArea = All;
                }
                field("Location Name"; Rec."Location Name")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("User ID"; Rec."User ID")
                {
                    ApplicationArea = All;
                }
                field("Approval 1 Date"; Rec."Approval 1 Date")
                {
                    ApplicationArea = All;
                }
                field("Approval 1 User ID"; Rec."Approval 1 User ID")
                {
                    ApplicationArea = All;
                }
                field("Approval 2 Date"; Rec."Approval 2 Date")
                {
                    ApplicationArea = All;
                }
                field("Approval 2 User ID"; Rec."Approval 2 User ID")
                {
                    ApplicationArea = All;
                }
            }
            part("indent line"; "Project Indent Subform")
            {
                Caption = 'Priject Indent Line';
                SubPageLink = "Indent No." = field("Indent No.");
            }
        }
    }
    actions
    {
        area(Processing)
        {
            action("Send for Approval")
            {
                ApplicationArea = All;
                Image = SendApprovalRequest;
                Visible = vAppVisible;

                trigger OnAction();
                var
                    UserSet: Record 91;
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to send for approval', TRUE) THEN
                        EXIT;
                    Rec.TestField(Status, rec.Status::Open);
                    UserSet.TestField("Project Indent 1st Approver");
                    rec.Status := rec.Status::"Pending For Approval";
                    rec."Approval 1 Date" := Today;
                    rec."Approval 1 User ID" := UserSet."Project Indent 1st Approver";
                    Rec.Modify();
                    CurrPage.Close();
                end;
            }
            action("Final Pending for Approval")
            {
                ApplicationArea = All;
                Image = SendApprovalRequest;
                Visible = Pendvisible;

                trigger OnAction();
                var
                    UserSet: Record 91;
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to Final Pending for approval', TRUE) THEN
                        EXIT;
                    Rec.TestField(Status, rec.Status::Open);
                    UserSet.TestField("Project Indent 1st Approver");
                    rec.Status := rec.Status::"Final Pending For Approval";
                    rec."Approval 2 Date" := Today;
                    rec."Approval 2 User ID" := UserSet."Project Indent 2nd Approver";
                    Rec.Modify();
                    CurrPage.Close();
                end;
            }
            action("Cancel Approval Request")
            {
                ApplicationArea = All;
                Image = Cancel;
                Visible = vAppVisiblePost;

                trigger OnAction();
                var
                    UserSet: Record 91;
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to cancel approval request', TRUE) THEN
                        EXIT;
                    Rec.TestField(Status, rec.Status::"Pending For Approval");
                    UserSet.TestField("Project Indent 1st Approver");
                    rec.Status := rec.Status::Open;
                    rec."Approval 1 Date" := 0D;
                    rec."Approval 1 User ID" := '';
                    Rec.Modify();
                    CurrPage.Close();
                end;
            }
            action("Approve")
            {
                ApplicationArea = All;
                Image = Approve;
                Visible = vAppVisiblePost;

                trigger OnAction();
                var
                    UserSet: Record 91;
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to approve', TRUE) THEN
                        EXIT;
                    Rec.TestField(Status, rec.Status::"Pending For Approval");
                    UserSet.TestField("Project Indent 2nd Approver");
                    rec.Status := rec.Status::Approved;
                    Rec.Modify();
                    CurrPage.Close();
                end;
            }
            action("Reject")
            {
                ApplicationArea = All;
                Image = Reject;

                trigger OnAction();
                var
                    UserSet: Record 91;
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to reject', TRUE) THEN
                        EXIT;
                    Rec.TestField(Status, rec.Status::Approved);
                    rec.Status := rec.Status::Approved;
                    rec."Approval 2 Date" := Today;
                    rec."Approval 2 User ID" := UserSet."Project Indent 2nd Approver";
                    Rec.Modify();
                    CurrPage.Close();
                end;
            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        vAppVisible := FALSE;
        IF Rec.Status = Rec.Status::Open THEN
            vAppVisible := TRUE
        ELSE
            vAppVisible := FALSE;

        vAppVisiblePost := FALSE;
        IF (Rec.Status = Rec.Status::"Final Pending For Approval") THEN
            vAppVisiblePost := TRUE
        ELSE
            vAppVisiblePost := FALSE;

        Pendvisible := FALSE;
        IF (Rec.Status = Rec.Status::"Pending For Approval") THEN
            Pendvisible := TRUE
        ELSE
            Pendvisible := FALSE;

        rejVisible := FALSE;
        IF Rec.Status = Rec.Status::Approved THEN
            rejVisible := TRUE
        ELSE
            rejVisible := FALSE;
    end;

    var
        vAppVisible: Boolean;
        vAppVisiblePost: Boolean;
        rejVisible: Boolean;
        Pendvisible: Boolean;

}