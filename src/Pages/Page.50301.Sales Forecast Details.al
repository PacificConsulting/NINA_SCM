page 50301 "Sales Forecast Details"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Sales Forecast Details";

    layout
    {
        area(Content)
        {
            repeater(GroupName)
            {
                field("Document No."; Rec."Document No.")
                {
                    ApplicationArea = All;

                }
                field("Forcast Date"; Rec."Forcast Date")
                {
                    ApplicationArea = All;
                }

                field("Line No."; Rec."Line No.")
                {
                    ApplicationArea = All;
                }

                field("Site Name"; Rec."Site Name")
                {
                    ApplicationArea = All;
                }
                field("GM Code"; Rec."GM Code")
                {
                    ApplicationArea = All;
                }
                field("PM Code"; Rec."PM Code")
                {
                    ApplicationArea = All;
                }
                field("Description 2"; Rec."Description 2")
                {
                    ApplicationArea = All;
                }
                field(Quantity; Rec.Quantity)
                {
                    ApplicationArea = All;
                }
                field(UOM; Rec.UOM)
                {
                    ApplicationArea = All;
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    ApplicationArea = All;
                }
                field("Final Qty Freeze"; Rec."Final Qty Freeze")
                {
                    ApplicationArea = All;
                }
                field("Sales Forecast Material Adv"; Rec."Sales Forecast Material Adv")
                {
                    ApplicationArea = All;
                }
                field("New Reset Quantity"; Rec."New Reset Quantity")
                {
                    ApplicationArea = All;
                }
                field("New Reset Date"; Rec."New Reset Date")
                {
                    ApplicationArea = All;
                }
            }
        }
        area(Factboxes)
        {

        }
    }

    actions
    {
        area(Processing)
        {
            action(Approver)
            {
                ApplicationArea = All;
                Image = Approve;

                trigger OnAction();
                begin
                    if UserSet.Get(UserId) then;
                    if NOT CONFIRM('Do you want to send for approval', TRUE) THEN
                        EXIT;
                    UserSet.TestField("Forecast 1st Approver");
                    MAtForDetails.Reset();
                    MAtForDetails.SetRange("Work Order No.", Rec."Document No.");
                    if not MAtForDetails.FindFirst() then begin
                        //ForecastMgmnt.CreateMatrialForDetEntry();
                    end;
                end;
            }
        }
    }
    var
        UserSet: Record 91;
        MAtForDetails: Record 50302;
        ForecastMgmnt: Codeunit 50300;

}