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

            trigger OnValidate()
            begin
                CalculateDuration();
            end;
        }
        field(4; "End Date"; Date)
        {
            Caption = 'End Date';

            trigger OnValidate()
            begin
                CalculateDuration();
            end;
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
        field(8; "Duration (Days)"; Integer)
        {
            Editable = false;
            Caption = 'Duration (Days)';
        }
    }

    keys
    {
        key(PK; "Request No.")
        {
            Clustered = true;
        }
    }

    // This handles the validation logic in one central place
    local procedure CalculateDuration()
    begin
        if ("Start Date" <> 0D) and ("End Date" <> 0D) then begin
            if "End Date" < "Start Date" then
                Error('End Date cannot be earlier than the Start Date.');

            "Duration (Days)" := ("End Date" - "Start Date") + 1;
        end else begin
            "Duration (Days)" := 0;
        end;
    end;
}