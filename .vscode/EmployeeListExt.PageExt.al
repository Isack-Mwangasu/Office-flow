pageextension 50204 "OfficeFlowEmpListExt" extends "Employee List"
{
    layout
    {
        // 'Control1' is the standard internal name for the grid/repeater on the Employee List page
        addlast(Control1)
        {
            field("OFL Work Mode Preference"; Rec."OFL Work Mode Preference")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the current attendance status of the employee.';
            }
            field("OFL Current Status"; Rec."OFL Current Status")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies if the employee is Remote, Hybrid, or Onsite.';
            }
        }
    }
}