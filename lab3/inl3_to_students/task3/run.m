
load('../task1_and_2/FaceNonFace.mat');
nbr_examples = length(Y);

nbr_trials = 2;
err_rates_test = zeros(nbr_trials);
e_r_test = 0;
e_r_train = 0;

err_rates_train = zeros(nbr_trials);
%for trail = 1:nbr_trials
    
part = cvpartition(nbr_examples, 'HoldOut', 0.20);
    
X_train = X(:, part.training);
X_test = X(:, part.test);
Y_train = Y(:, part.training);
Y_test = Y(:, part.test);
nbr_train_examples = length(Y_train);
nbr_test_examples = length(Y_test);

model = trainSimpleCNN(X_train, Y_train);

res = predictSimpleCNN(model,X_test);


diff = res - Y_test;
%err_rates_test(i) = nnz(diff);
e_r_test = nnz(diff)

res_training = predictSimpleCNN(model,X_train);
diff_train = res_training - Y_train;
e_r_train = nnz(diff_train)     

%end

%mean_err_rate_test = mean(err_rates_test, 1);
disp("TEST")
disp(e_r_test)
disp("TRAIN")
disp(e_r_train)