function cmap = coolwarm(n)
%COOLWARM Generate coolwarm colormap.
%   COOLWARM is a diverging colormap which can be used as a heat map.
%   This works just like other colormaps in MATLAB.
%   Based on matplotlib's coolwarm colormap: https://matplotlib.org/stable/tutorials/colors/colormaps.html#diverging
% Examples:
%   cmap = COOLWARM; % is equvalent to COOLWARM(256)
%   cmap = COOLWARM(10);
if nargin < 1
    n = 256;
end

x = linspace(0, 1, n);
r = sin((x-0.22)*1.05*pi)/2.1+0.5;
g = sin((x-0.09)*1.3*pi)/2.4+0.45;
b = sin((x+0.17)*1.1*pi)/2+0.5;
cmap = [r.' g.' b.'];

end

