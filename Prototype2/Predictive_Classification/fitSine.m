function [fitresult, gof] = fitSine(t, gY1)
%CREATEFIT(T,GY1)
%  Create a fit.
%
%  Data for 'untitled fit 1' fit:
%      X Input: t
%      Y Output: gY1 from forearm
%  Output:
%      fitresult : a fit object representing the fit.
%      gof : structure with goodness-of fit info.
%
%  See also FIT, CFIT, SFIT.

%  Auto-generated by MATLAB on 18-Feb-2024 17:19:34


%% Fit: 'untitled fit 1'.
[xData, yData] = prepareCurveData( t, gY1 );

% Set up fittype and options.
ft = fittype( 'sin5' );
opts = fitoptions( 'Method', 'NonlinearLeastSquares' );
opts.Display = 'Off';
opts.Lower = [-Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf -Inf 0 -Inf];
opts.StartPoint = [134.350147757648 0.00326970566652358 1.9971745145272 126.934505364908 0.00356695163620754 -1.66390717162313 126.74825383865 0.00371557462104952 -1.89920637379138 96.6097153492094 0.00341832865136556 -1.74288253693526 92.0108011805049 0.0031210826816816 -0.742025427963987];

% Fit model to data.
[fitresult, gof] = fit( xData, yData, ft, opts );

% Plot fit with data.
figure( 'Name', 'untitled fit 1' );
h = plot( fitresult, xData, yData );
legend( h, 'gY1 vs. t', 'untitled fit 1', 'Location', 'NorthEast', 'Interpreter', 'none' );
% Label axes
xlabel( 't', 'Interpreter', 'none' );
ylabel( 'gY1', 'Interpreter', 'none' );
grid on

