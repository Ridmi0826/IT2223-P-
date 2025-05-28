gpa = zeros(1,5);
m = zeros(1,5);

for i = 1:5
m(i)=input(['Enter your marks for subject: ']);

    if m(i)<0 || m(i)>100
         disp('Invalid')
    
    elseif m(i)>=80
        disp('Your grade is A+')
        gpa(i)=4.0;
    
    elseif m(i)>=75
         disp('Your grade is A')
          gpa(i)=4.0;
    
    elseif m(i)>=70
         disp('Your grade is A-')
          gpa(i)=3.7;
    
    elseif m(i)>=65
         disp('Your grade is B+')
          gpa(i)=3.3;
    
    elseif m(i)>=60
         disp('Your grade is B')
          gpa(i)=3.0;
    
    elseif m(i)>=55
         disp('Your grade is B-')
          gpa(i)=2.7;
    
    elseif m(i)>=50
         disp('Your grade is C+')
          gpa(i)=2.3;
    
    elseif m(i)>=45
         disp('Your grade is C')
          gpa(i)=2.0;
    
    elseif m(i)>=40
         disp('Your grade is C-')
          gpa(i)=1.7;
    
    elseif m(i)>=35
         disp('Your grade is D+')
          gpa(i)=1.3;
    
    elseif m(i)>=30
         disp('Your grade is D')
          gpa(i)=1.0;
    
    else
        disp('Your grade is E')
         gpa(i)=0.0;
    end
end

GPA=mean(gpa);
fprintf('Your GPA is : %.2f\n',GPA);