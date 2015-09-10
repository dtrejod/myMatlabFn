function c = angle_vector(a,b)
if nargin < 2, 
    error('proj:Input', 'Requires exactly two input arguments.'); 
end

% Check dimensions
if any(size(a) ~= size(b)),
   error('MATLAB:proj:InputSizeMismatch', 'A and B must be same size.');
end
CosTheta = dot(a,b)/(norm(a)*norm(b));
c = acos(CosTheta)*180/pi;

