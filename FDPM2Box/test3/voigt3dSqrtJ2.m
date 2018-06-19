function [sqrtj2,dsqrtj2,ddsqrtj2] = voigt3dSqrtJ2(s)
%voigt3dSqrtJ2
% sqrt(J2(s))
%

[j2,dj2,ddj2] = voigt3dJ2(s);

% sqrt(J2)
sqrtj2 = sqrt(j2);

if nargout > 1
    dsqrtj2 = 0.5 / sqrtj2 * dj2;
end

if nargout > 2
    ddsqrtj2 = 0.5 / sqrtj2 * (-(dj2*dj2')/(2*j2) + ddj2);
end




return
end



