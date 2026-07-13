page 50201 "OFL Employee Check-In Log"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "OFL Employee Check-In Log";
    Caption = 'Employee Check-In Logs';
    Editable = true;

    layout
    {
        area(content)
        {
            repeater(Group)
            {
                field("Entry No."; Rec."Entry No.")
                {
                    ApplicationArea = All;
                    Visible = false; // Keep the auto-increment number hidden by default to keep it clean
                }
                field("Employee No."; Rec."Employee No.")
                {
                    ApplicationArea = All;
                }
                field("Employee Name"; Rec."Employee Name")
                {
                    ApplicationArea = All;
                }
                field("Check-In Date"; Rec."Check-In Date")
                {
                    ApplicationArea = All;
                }
                field("Check-In Time"; Rec."Check-In Time")
                {
                    ApplicationArea = All;
                }
                field("Check-Out Time"; Rec."Check-Out Time")
                {
                    ApplicationArea = All;
                }
                field("Work Location"; Rec."Work Location")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}