balance = 1000;

while true
    fprintf('1) Deposit\n');
    fprintf('2) Withdraw\n');
    fprintf('3) Balance Inquiry\n');
    fprintf('4) Exit\n');

    choice = input('Select an option from 1 - 4 : ');

    switch choice
        case 1
            amount = input('Enter amount to deposit: ');
            if amount > 0
                balance = balance + amount;
                fprintf('You have successfully deposited $%.2f.\n', amount);
            else
                fprintf('Please enter a positive value.\n')
            end

        case 2
            amount = input('Enter the amount to withdraw: ');
            if amount > 0
                if amount <= balance
                    balance = balance - amount;
                    fprintf('You have successfully withdrawn $%.2f.\n', amount);
                else
                    fprintf('Insufficient amount. Your current balance is $%.2f.\n', balance);
                end
            else
                fprintf('Please enter a positive amount.\n');
            end
 
        case 3   
            fprintf('Your current balance is $%.2f.\n', balance);
            
        case 4 
            fprintf('Thank you. Goodbye!\n');
            break; 
            
        otherwise
            fprintf('Invalid selection. Please select a valid option (1-4).\n');
    end
end