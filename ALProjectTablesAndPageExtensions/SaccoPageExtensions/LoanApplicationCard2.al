pageextension 50116 "LoanAppCardExtension" extends "Loan Application Card"
{
    actions
    {
        addfirst(processing)
        {
            action(ApproveLoan)
            {
                Caption = 'Approve Loan';
                Image = Approve;
                trigger OnAction()
                begin
                    if Rec.Status = Rec.Status::Approved then
                        Error('Loan application is already approved.');

                    Rec.Status := Rec.Status::Approved;
                    Rec.Modify(true);

                    CreateLoanFromApplication(Rec);
                end;
            }

            action(RejectLoan)
            {
                Caption = 'Reject Loan';
                Image = Cancel;
                trigger OnAction()
                begin
                    if Rec.Status = Rec.Status::Rejected then
                        Error('Loan application is already rejected.');

                    Rec.Status := Rec.Status::Rejected;
                    Rec.Modify(true);
                end;
            }
        }
    }

    local procedure CreateLoanFromApplication(ApplicationRec: Record "Loan Application")
    var
        LoanRec: Record "Loan";
    begin
        LoanRec.Init();
        LoanRec."Loan ID" := ApplicationRec."Loan ID";
        LoanRec."Member ID" := ApplicationRec."Member ID";
        LoanRec."Loan Amount" := ApplicationRec."Requested Amount";
        LoanRec."Interest Rate" := ApplicationRec."Interest Rate";
        LoanRec."Loan Term" := ApplicationRec."Loan Term";
        LoanRec."Disbursement Date" := WorkDate();
        LoanRec.Status := LoanRec.Status::paid;
        LoanRec.Insert(true);
    end;
}
