marks = zeros(1, 5);

for i = 1:5
    marks(i) = input(['Enter marks for student ' num2str(i) ' : ']);

    while marks(i) < 0 || marks(i) > 100
        fprintf('Error: Please enter a valid mark between 0 and 100.\n');
        marks(i) = input(['Enter marks for student ' num2str(i) ' : ']);
    end

    if marks(i) >= 90
        grade = 'A';
    elseif marks(i) >= 80
        grade = 'B';
    elseif marks(i) >= 70
        grade = 'C';
    elseif marks(i) >= 60
        grade = 'D';
    else
        grade = 'F';
    end
    
    fprintf('Student %d: Marks = %.2f, Grade = %s\n', i, marks(i), grade);
end

while true

    fprintf('1) Show all marks as a bar chart\n');
    fprintf('2) Show average marks\n');
    fprintf('3) Exit\n');
    

    choice = input('Please select an option (1-3): ');
    

    switch choice
        case 1
            figure;
            bar(marks);
            title('Marks of Students');
            xlabel('Students');
            ylabel('Marks');
            xticks(1:5);
            xticklabels({'Student 1', 'Student 2', 'Student 3', 'Student 4', 'Student 5'});
            grid on;
            
        case 2
            average_marks = mean(marks);
            fprintf('The average marks of the students is: %.2f\n', average_marks);
            
        case 3
            fprintf('Thank you. Goodbye!\n');
            break;
            
        otherwise
            fprintf('Invalid selection. Please choose a valid option (1-3).\n');
    end
end