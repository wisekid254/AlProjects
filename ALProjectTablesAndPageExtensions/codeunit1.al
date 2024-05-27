codeunit 50122 MyCodeunit
{
    trigger OnRun()
    begin
        num1 := 10;
        num2 := 11;
        add(num1, num2);

    end;

    procedure add(num1: Integer; num2: integer)
    var
        tot: Integer;
    begin
        tot := num1 + num2;
        Message('Sum of two numbers  %1, %2, %3 is ', num1, num2, tot);
    end;

    var
        num1: Integer;
        num2: Integer;
}