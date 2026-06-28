tableextension 50200 "OFL Employee Ext" extends Employee
{
    fields
    {
        field(50200; "OFL Work Mode Preference"; enum "OFL Work Mode Preference")
        {
            Caption = 'Work Mode Preference';
            DataClassification = CustomerContent;
        }
        field(50201; "OFL Current Status"; enum "OFL Current Status")
        {
            Caption = 'Current Status';
            DataClassification = CustomerContent;
        }
    }
}