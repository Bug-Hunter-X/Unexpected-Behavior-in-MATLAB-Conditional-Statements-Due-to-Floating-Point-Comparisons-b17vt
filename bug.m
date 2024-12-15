function result = myFunction(input)
  % Some code here...
  if input > 10
    result = input * 2; 
  else
    result = input / 2; 
  end
end

% Example usage where the error might not be apparent immediately
input = 10; 
result = myFunction(input);
disp(result);  % Output: 5

input = 11; % Slight change in input
result = myFunction(input);
disp(result); % Output: 22

input = 10.1; % another slight change in input
result = myFunction(input);
disp(result); % Output: 20.2