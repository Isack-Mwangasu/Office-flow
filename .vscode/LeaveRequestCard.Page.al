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
                field("Reason for Leave"; Rec."Reason for Leave") { ApplicationArea = All; MultiLine = true; }
                field("Approval Status"; Rec."Approval Status") { ApplicationArea = All; }
            }
        }
    }
}