function D = PandO(V, I)
% MPPT controller based on the Perturb & Observe algorithm.
%
% D output = Reference for DC link voltage (Vdc_ref)
% V input = PV array terminal voltage (V)
% I input = PV array current (A)

Dinit = 260;    % Initial value for Vdc_ref
Dmax = 290;     % Maximum value for Vdc_ref
Dmin = 230;     % Minimum value for Vdc_ref
deltaD = 0.03;  % Increment used to increase/decrease Vdc_ref

persistent Vold Pold Dold;

if isempty(Vold)
    Vold = 0;
    Pold = 0;
    Dold = Dinit;
end

P = V * I;
dV = V - Vold;
dP = P - Pold;

if dP ~= 0
    if dP < 0
        if dV < 0
            D = Dold + deltaD;
        else
            D = Dold - deltaD;
        end
    else
        if dV < 0
            D = Dold - deltaD;
        else
            D = Dold + deltaD;
        end
    end
else
    D = Dold;
end

if D >= Dmax || D <= Dmin
    D = Dold;
end

Dold = D;
Vold = V;
Pold = P;
end
