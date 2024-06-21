pageextension 50120 "Loan Card Extension" extends "Loan Card"
{
    actions
    {
        addfirst(processing)
        {
            action(DisburseLoan)
            {
                Caption = 'Disburse Loan';
                Image = MoneyTransfer;
                trigger OnAction()
                begin
                    if Rec.Status <> Rec.Status::paid then
                        Error('Only active loans can be disbursed.');

                    // Logic to disburse the loan
                    DisburseLoanAmount(Rec."Loan Amount");

                    Rec.Status := Rec.Status::"Payment Pending";
                    Rec.Modify(true);
                end;
            }
        }
    }

    local procedure DisburseLoanAmount(LoanRec: Record "Loan")
    var
        GenJnlLine: Record "Gen. Journal Line";
    begin
        GenJnlLine.Init();
        GenJnlLine."Document Type" := GenJnlLine."Document Type"::Payment;
        GenJnlLine."Account Type" := GenJnlLine."Account Type"::Customer;
        GenJnlLine."Account No." := LoanRec."Member ID";
        GenJnlLine.Amount := LoanRec."Loan Amount";
        GenJnlLine."Bal. Account Type" := GenJnlLine."Bal. Account Type"::BankAccount;
        GenJnlLine."Bal. Account No." := 'BANK1'; // Assuming 'BANK1' is the bank account used for disbursement
        GenJnlLine."Document No." := LoanRec."Loan ID";
        GenJnlLine."Posting Date" := WorkDate();
        GenJnlLine.Insert(true);

        GenJnlPostLine.RunWithCheck(GenJnlLine);
    end;
}
