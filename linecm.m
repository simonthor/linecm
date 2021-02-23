function handles = linecm(x, y, cmap)
%LINECM Plot a line with changing color according to a colormap
% x and y should at least have one dimension matching in size and the
% other one should be rescaleable to fit the other one.
% There is an edge case when this does not work like the normal LINE
% function, which is when size(x) == [n 1] and size(y) == [n n].
    arguments
        x (:, :) {mustBeNumeric}
        y (:, :) {mustBeNumeric}
        cmap function_handle
    end
    % If x is a row vector, make it a row vector for consistency in the
    % rest of the code.
    if size(x, 1) == 1
        x = x.';
        y = y.';
    end
    
    len = size(x, 1)-1;
    handles = cell(1, len);
    colors = cmap(len);
    for i=1:len
        handles{i} = line([x(i, :); x(i+1, :)], [y(i, :); y(i+1, :)], "Color", colors(i, :));
    end
end
