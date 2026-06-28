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
        }

        field(3; "Employee Name"; Text[100])
        {
            FieldClass = FlowField;
            CalcFormula = lookup(Employee."First Name" where("No." = field("Employee No.")));
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