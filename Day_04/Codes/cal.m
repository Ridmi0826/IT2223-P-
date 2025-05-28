n1 = input('Enter number 1: ');
n2 = input('Enter number 2: ');
opr = input('Enter the operator (+,-,*,/): ','s');

switch opr
    case '+'
        disp(n1+n2);
    case '-'
        disp(n1-n2);
    case '*'
        disp(n1*n2);
    case '/'
        if n2 ~=0
            result=n1/n2;
            fprintf('Result: %.2f\n',result)
        else
            disp('Error: Division by zero')
        end
    otherwise
        disp('Invalid Operator');
end