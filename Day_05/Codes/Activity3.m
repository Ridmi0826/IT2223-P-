clc;
clear;

numVoters = input('Enter the total number of voters: ');

votes = zeros(1, 4);  

 
for i = 1:numVoters
   
    fprintf('1. Candidate A\n');
    fprintf('2. Candidate B\n');
    fprintf('3. Candidate C\n');
    fprintf('4. Candidate D\n');
    
    choice = input('Enter your choice (1-4): ');
    
    
    switch choice
        case 1
            votes(1) = votes(1) + 1; % Candidate A
        case 2
            votes(2) = votes(2) + 1; % Candidate B
        case 3
            votes(3) = votes(3) + 1; % Candidate C
        case 4
            votes(4) = votes(4) + 1; % Candidate D
        otherwise
            fprintf('Invalid vote! Please enter a number between 1 and 4.\n');
    end
end

fprintf('Candidate A: %d votes\n', votes(1));
fprintf('Candidate B: %d votes\n', votes(2));
fprintf('Candidate C: %d votes\n', votes(3));
fprintf('Candidate D: %d votes\n', votes(4));

[~, winnerIndex] = max(votes);
candidates = {'Candidate A', 'Candidate B', 'Candidate C', 'Candidate D'};
fprintf('The winner is: %s\n', candidates{winnerIndex});

while true
    fprintf('\nVisualization Menu:\n');
    fprintf('1. Show Bar Chart of Votes\n');
    fprintf('2. Show Pie Chart of Votes\n');
    fprintf('3. Show Scatter Plot (for creative visualization)\n');
    fprintf('4. Exit\n');
    
    visualChoice = input('Enter your choice (1-4): ');
    
    switch visualChoice
        case 1
            % Bar Chart
            figure;
            bar(votes);
            title('Vote Counts for Each Candidate');
            xlabel('Candidates');
            ylabel('Number of Votes');
            set(gca, 'XTickLabel', candidates);
            grid on;
            legend('Votes');
            
        case 2
            % Pie Chart
            figure;
            pie(votes, candidates);
            title('Vote Distribution Among Candidates');
            grid on;
            
        case 3
            % Scatter Plot
            figure;
            x = 1:4; % X-axis for candidates
            y = votes; % Y-axis for votes
            scatter(x, y, 100, 'filled');
            title('Scatter Plot of Votes');
            xlabel('Candidates');
            ylabel('Number of Votes');
            set(gca, 'XTick', x, 'XTickLabel', candidates);
            grid on;
            
        case 4
          
            fprintf('Exiting the visualization menu.\n');
            break;
            
        otherwise
            fprintf('Invalid choice! Please enter a number between 1 and 4.\n');
    end
end