table 50202 "OFL Leave Request"
{
    DataClassification = CustomerContent;
    Caption = 'Leave Request';

    fields
    {
        field(1; "Request No."; Code[20])
        {
            Caption = 'Request No.';
        }
        field(2; "Employee No."; Code[20])
        {
            TableRelation = Employee;
            Caption = 'Employee No.';
        }
        field(3; "Start Date"; Date)
        {
            Caption = 'Start Date';
        }
        field(4; "End Date"; Date)
        {
            Caption = 'End Date';
        }
        field(5; "Leave Type"; enum "OFL Leave Type")
        {
            Caption = 'Leave Type';
        }
        field(6; "Approval Status"; enum "OFL Approval Status")
        {
            Editable = false;
            Caption = 'Approval Status';
        }
        field(7; "Reason for Leave"; Text[250])
        {
            Caption = 'Reason for Leave';
        }
    }

    keys
    {
        key(PK; "Request No.")
        {
            Clustered = true;
        }
    }
}