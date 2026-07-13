enum 50200 "OFL Work Mode Preference"
{
    Extensible = true;
    AssignmentCompatibility = true;

    value(0; office) { Caption = 'office'; }
    value(1; Remote) { Caption = 'Remote'; }
    value(2; Hybrid) { Caption = 'Hybrid'; }
}

enum 50201 "OFL Current Status"
{
    Extensible = True;
    AssignmentCompatibility = True;

    value(0; "Checked Out") { Caption = 'Checked Out'; }
    value(1; "Checked In") { Caption = 'Checked In'; }
    value(2; "On Leave") { Caption = 'On Leave'; }
}


enum 50202 "OFL Work Location"
{
    Extensible = true;

    value(0; Office) { Caption = 'Office'; }
    value(1; Home) { Caption = 'Home'; }
}

enum 50203 "OFL Leave Type"
{
    Extensible = True;


    value(0; Annual) { caption = 'Annual'; }
    value(1; sick) { caption = 'sick'; }
    value(2; compassionate) { caption = 'Compassionate'; }
    value(3; Maternity) { Caption = 'Maternity'; }
    value(4; Paternity) { Caption = 'Paternity'; }
}

enum 50204 "OFL Approval Status"
{
    Extensible = false; // Workflows usually shouldn't have random custom statuses injected

    value(0; Open) { Caption = 'Open'; }
    value(1; "Pending Approval") { Caption = 'Pending Approval'; }
    value(2; Approved) { Caption = 'Approved'; }
    value(3; Rejected) { Caption = 'Rejected'; }
}