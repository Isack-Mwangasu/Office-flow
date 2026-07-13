table 50201 "OFL Employee Check-In Log"
{
    DataClassification = CustomerContent;
    Caption = 'Employee Check-In Log';

    fields
    {
        field(1; "Entry No."; Integer)
        {
            AutoIncrement = true;
        }

        field(2; "Employee No."; Code[20])
        {
            TableRelation = Employee;

            trigger OnValidate()
            var
                EmployeeRec: Record Employee;
            begin
                // If the user clears the Employee No., clear the name too
                if "Employee No." = '' then
                    "Employee Name" := ''
                else if EmployeeRec.Get("Employee No.") then
                    // This copies the physical first and last name into your table
                    "Employee Name" := EmployeeRec."First Name" + ' ' + EmployeeRec."Last Name";
            end;
        }

        field(3; "Employee Name"; Text[100])
        {
            Editable = false;
        }
        field(4; "Check-In Date"; Date) { }
        field(5; "Check-In Time"; Time) { }
        field(6; "Check-Out Time"; Time) { }
        field(7; "Work Location"; enum "OFL Work Location")
        {
            Caption = 'Work Location';
        }
    }

    keys { key(PK; "Entry No.") { Clustered = true; } }
}