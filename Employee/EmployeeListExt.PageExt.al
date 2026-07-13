pageextension 50204 "OfficeFlowEmpListExt" extends "Employee List"
{
    layout
    {
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