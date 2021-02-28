function cmap = bwr(n)
%BWR Generate bwr colormap.
%   BWR stands for blue white red, and is a diverging colormap with 3 colors.
%   This works just like other colormaps in MATLAB.
%   Based on matplotlib's bwr colormap: https://matplotlib.org/stable/tutorials/colors/colormaps.html#diverging
% Examples:
%   cmap = BWR;
%   cmap = BWR(10);
if nargin < 1
    n = 256;
end

if mod(n,2) == 0
    base = linspace(0, 1, n/2)';
else
    base = (0:2/(n-1):1)';
    base = base(1:end-1);
end

halfones = ones(size(base));

if mod(n, 2) == 0
    cmap = [halfones base base;
            flip(base) flip(base) halfones];
else
    cmap = [halfones base base;
            ones([1 3]);
            flip(base) flip(base) halfones];
end
