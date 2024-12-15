function result = myFunctionImproved(input, tolerance)
  % Improved function with tolerance for floating-point comparisons
  if abs(input - 10) < tolerance
    result = input / 2; % Handle the case where input is close to 10
  elseif input > 10
    result = input * 2;
  else
    result = input / 2;
  end
end

% Example usage with tolerance
tolerance = 0.001; % Define a small tolerance
input = 10;
result = myFunctionImproved(input, tolerance); 
disp(result); % Output: 5

input = 11;
result = myFunctionImproved(input, tolerance); 
disp(result); % Output: 22

input = 10.0001; % this will now work correctly
result = myFunctionImproved(input, tolerance);
disp(result); % Output: 5