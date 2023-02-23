page 50306 "SCM Purchase Indent"
{
    PageType = Card;
    // ApplicationArea = All;
    // UsageCategory = Administration;
    SourceTable = 50303;
    DelayedInsert = true;
    MultipleNewLines = true;
    SaveValues = true;
    AutoSplitKey = true;

    layout
    {
        area(Content)
        {
            group(General)
            {
                field("Indent No."; Rec."Indent No.")
                {
                    ApplicationArea = All;
                    trigger OnAssistEdit()
                    begin
                        if rec.AssistEdit(xRec) then
                            CurrPage.Update();
                    end;
                }
                field("Indent Type"; Rec."Indent Type")
                {
                    ApplicationArea = All;
                }
                field("Department Type"; Rec."Department Type")
                {
                    ApplicationArea = All;
                }

                field("Location Code"; Rec."Location Code")
                {
                    ApplicationArea = All;
                }
                field("Indent From Forecast Month"; Rec."Indent From Forecast Month")
                {
                    ApplicationArea = All;
                }
                field("MRWB Site Name Remark"; Rec."MRWB Site Name Remark")
                {
                    ApplicationArea = All;
                }

                field("Store Issue"; Rec."Store Issue")
                {
                    ApplicationArea = All;
                }
                field("Store Issue Remarks"; Rec."Store Issue Remarks")
                {
                    ApplicationArea = All;
                }
                field("Store Issue Date"; Rec."Store Issue Date")
                {
                    ApplicationArea = All;
                }
                field("Transfer Issue"; Rec."Transfer Issue")
                {
                    ApplicationArea = All;
                }
                field("Transfer Issue Date"; Rec."Transfer Issue Date")
                {
                    ApplicationArea = All;
                }
                field("Transfer Issue Remarks"; Rec."Transfer Issue Remarks")
                {
                    ApplicationArea = All;
                }
                field("Vendor No"; Rec."Vendor No")
                {
                    ApplicationArea = All;
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                }
                field("Approval 2 User ID"; Rec."Approval 2 User ID")
                {
                    ApplicationArea = All;
                }
                field("Approval 2 Date"; Rec."Approval 2 Date")
                {
                    ApplicationArea = All;
                }
                field("Approval 1 User ID"; Rec."Approval 1 User ID")
                {
                    ApplicationArea = All;
                }
                field("Approval 1 Date"; Rec."Approval 1 Date")
                {
                    ApplicationArea = All;
                }

            }
            part("Indent Line"; 50308)
            {
                Caption = 'Indent Line"';
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
                    if rec."Type of Indent" <> rec."Type of Indent"::MRWB then begin
                        UserSet.TestField("SCM Indent 1st Approver");
                        rec.Status := rec.Status::"Pending For Approval";
                        rec."Approval 1 Date" := Today;
                        rec."Approval 1 User ID" := UserSet."SCM Indent 1st Approver";
                        Rec.Modify();
                        CurrPage.Close();
                    end
                    ELSE begin
                        rec.Status := rec.Status::Approved;
                        rec."Approved Date" := today;
                        rec."Approved User ID" := Userid;
                        Rec.Modify();
                        CurrPage.Close();
                    end;

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
                    Rec.TestField(Status, rec.Status::"Pending For Approval");
                    UserSet.TestField("SCM Indent 1st Approver");
                    rec.Status := rec.Status::"Final Pending For Approval";
                    rec."Approval 2 Date" := Today;
                    rec."Approval 2 User ID" := UserSet."SCM Indent 2nd Approver";
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
                    UserSet.TestField("SCM Indent 1st Approver");
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
                    Rec.TestField(Status, rec.Status::"Final Pending For Approval");
                    UserSet.TestField("SCM Indent 2nd Approver");
                    rec.Status := rec.Status::Approved;
                    rec."Approved Date" := today;
                    rec."Approved User ID" := Userid;
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
                    rec.Status := rec.Status::Reject;
                    rec."Approval 2 Date" := 0D;
                    rec."Approval 2 User ID" := '';
                    Rec.Modify();
                    CurrPage.Close();
                end;
            }
            action("Approve Material Forecast")
            {
                ApplicationArea = All;
                Image = Approve;

                trigger OnAction();
                var
                    UserSet: Record 91;
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to Approve Material Forecast', TRUE) THEN
                        EXIT;
                    Rec.TestField("Approved Forecast Material");
                    rec.Status := rec.Status::Approved;
                    rec."Approved Forecast Date" := Today;
                    rec."Approved Forecast User ID" := UserId;
                    Rec.Modify();
                    CurrPage.Close();
                end;
            }
            action("Unapprove Material Forecast")
            {
                ApplicationArea = All;
                Image = Cancel;

                trigger OnAction();
                var
                    UserSet: Record 91;
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to UnApprove Material Forecast', TRUE) THEN
                        EXIT;
                    Rec.TestField("Approved Forecast Material");
                    rec.TestField("Approved Forecast User ID");
                    rec.Status := rec.Status::Open;
                    rec."Approved Forecast Date" := 0D;
                    rec."Approved Forecast User ID" := '';
                    rec."Approved Forecast Material" := false;
                    Rec.Modify();
                    CurrPage.Close();
                end;
            }
            action("Co&mments")
            {
                ApplicationArea = Comments;
                Caption = 'Co&mments';
                Image = ViewComments;
                RunObject = Page "Indent Comment List";
                RunPageLink = "Department Type" = FIELD("Department Type"),
                                  "No." = FIELD("Indent No."),
                                  "Document Line No." = CONST(0);
                ToolTip = 'View or add comments for the record.';
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

    trigger OnInsertRecord(BelowxRec: Boolean): Boolean
    begin
        rec."Department Type" := rec."Department Type"::PNM;
    end;


}