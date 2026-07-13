page 50202 "OFL Leave Request List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "OFL Leave Request";
    Caption = 'Leave Requests';
    CardPageId = 50203;
    Editable = false;

    layout
    {
        area(content)
        {
            repeater(Control1)
            {
                field("Request No."; Rec."Request No.") { ApplicationArea = All; }
                field("Employee No."; Rec."Employee No.") { ApplicationArea = All; }
                field("Leave Type"; Rec."Leave Type") { ApplicationArea = All; }
                field("Start Date"; Rec."Start Date") { ApplicationArea = All; }
                field("End Date"; Rec."End Date") { ApplicationArea = All; }
                field("Duration (Days)"; Rec."Duration (Days)") { ApplicationArea = All; }
                field("Approval Status"; Rec."Approval Status") { ApplicationArea = All; }
            }
        }
    }
}