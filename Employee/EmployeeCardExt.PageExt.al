pageextension 50200 "OFL Employee Card Ext" extends "Employee Card"
{
    layout
    {
        addlast(General)
        {
            field("OFL Work Mode Preference"; Rec."OFL Work Mode Preference")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the preferred hybrid work structure for this employee.';
            }
            field("OFL Current Status"; Rec."OFL Current Status")
            {
                ApplicationArea = All;
                ToolTip = 'Displays whether the employee is currently clocked in, out, or away on leave.';
            }
        }
    }

}