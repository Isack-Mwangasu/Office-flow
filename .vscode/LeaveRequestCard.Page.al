page 50203 "OFL Leave Request Card"
{
    PageType = Card;
    SourceTable = "OFL Leave Request";
    Caption = 'Leave Request Card';

    layout
    {
        area(content)
        {
            group(General)
            {
                Caption = 'General Information';

                field("Request No."; Rec."Request No.")
                {
                    ApplicationArea = All;
                }
                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                }
            }
            group(Details)
            {
                Caption = 'Leave Details';

                field("Leave Type"; Rec."Leave Type") { ApplicationArea = All; }
                field("Start Date"; Rec."Start Date") { ApplicationArea = All; }
                field("End Date"; Rec."End Date") { ApplicationArea = All; }

                field("Duration (Days)"; Rec."Duration (Days)")
                {
                    ApplicationArea = All;
                    ToolTip = 'Calculates the total days requested for leave automatically.';
                }

                field("Reason for Leave"; Rec."Reason for Leave") { ApplicationArea = All; MultiLine = true; }
                field("Approval Status"; Rec."Approval Status") { ApplicationArea = All; }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Approve)
            {
                ApplicationArea = All;
                Caption = 'Approve';
                Image = Approve;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Approve this leave request.';

                trigger OnAction()
                begin
                    Rec."Approval Status" := Rec."Approval Status"::Approved;
                    Rec.Modify(true);
                    Message('Leave request has been successfully approved.');
                end;
            }

            action(Reject)
            {
                ApplicationArea = All;
                Caption = 'Reject';
                Image = Reject;
                Promoted = true;
                PromotedCategory = Process;
                ToolTip = 'Reject this leave request.';

                trigger OnAction()
                begin
                    Rec."Approval Status" := Rec."Approval Status"::Rejected;
                    Rec.Modify(true);
                    Message('Leave request has been rejected.');
                end;
            }
        }
    }
}