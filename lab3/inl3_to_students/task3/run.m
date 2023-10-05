% Clear up
clc;
close all;
clearvars;


load('../task1_and_2/FaceNonFace.mat');
nbr_examples = length(Y);

nbr_trials = 25;
err_rates_test = zeros(nbr_trials,1);
err_rates_train = zeros(nbr_trials, 1);


err_rates_train = zeros(nbr_trials);
for trail = 1:nbr_trials
        
    part = cvpartition(nbr_examples, 'HoldOut', 0.20);
        
    X_train = X(:, part.training);
    X_test = X(:, part.test);
    Y_train = Y(:, part.training);
    Y_test = Y(:, part.test);
    nbr_train_examples = length(Y_train);
    nbr_test_examples = length(Y_test);
    
    model = trainSimpleCNN(X_train, Y_train);

    predictions_test = zeros(1, nbr_test_examples);
    for j = 1 : nbr_test_examples
        predictions_test(j) = predictSimpleCNN(model, X_test(:,j));
    end
    
    
    predictions_train = zeros(1, nbr_train_examples);
    for j = 1 : nbr_train_examples
        predictions_train(j) = predictSimpleCNN(model, X_train(:,j));
    end


    %res = predictSimpleCNN(model,X_test);
    pred_test_diff = predictions_test - Y_test;
    pred_train_diff = predictions_train - Y_train;
    err_rate_test = nnz(pred_test_diff)/nbr_test_examples;
    err_rate_train = nnz(pred_train_diff)/nbr_train_examples;
    
    err_rates_test(trail, 1) = err_rate_test;
    err_rates_train(trail, 1) = err_rate_train;
         

end

%mean_err_rate_test = mean(err_rates_test, 1);
disp("TEST")
mean_err_rate_test = mean(err_rates_test);
disp(mean_err_rate_test)
disp("TRAIN")
mean_err_rate_train = mean(err_rates_train);
disp(mean_err_rate_train)


