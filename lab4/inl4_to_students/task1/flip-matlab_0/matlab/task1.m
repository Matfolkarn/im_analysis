im = imread('../../michelangelo_colorshift.jpg');
im_correct = imread('../../michelangelo_correct.jpg');
im_git = imread('../../result.jpg');


subplot(141);
imshow(im);
%Gray world

averageColor = mean(im, [1,2]);
greyScalingFactors = 128 ./ averageColor;
greycorrectedImage = uint8(double(im) .* greyScalingFactors);


subplot(142);
imshow(greycorrectedImage);

%White world
whiteScalingFactor = 255 ./averageColor;
whitecorrectedImage = uint8(double(im) .* whiteScalingFactor);


subplot(143)
imshow(whitecorrectedImage)

subplot(144)
imshow(im_git)


%PSNR
[grey_peaksnr, grey_snr] = psnr(greycorrectedImage, im_correct);
[white_peaksnr, white_snr] = psnr(whitecorrectedImage, im_correct);
[git_peaksnr, git_snr] = psnr(im_git, im_correct);

%SSIM
[grey_ssimval, grey_ssimmap] = ssim(greycorrectedImage, im_correct);
[white_ssimval, white_ssimmap] = ssim(whitecorrectedImage, im_correct);
[git_ssimval, git_ssimmap] = ssim(im_git, im_correct);

%FLIP
[grey_err, delt] = computeFLIP(double(im_correct)/255,double(greycorrectedImage)/255);

[white_err, delt] = computeFLIP(double(im_correct)/255,double(whitecorrectedImage)/255);
git_err = computeFLIP(double(im_correct)/255, double(im_git)/255);


disp ("PSNR GREY")
disp(grey_peaksnr)
disp("WHITE PSNR")
disp(white_peaksnr)
disp("GIT PSNR")
disp(git_peaksnr)

disp("SSIM GREY")
disp(grey_ssimval)
disp("SSIN WHITE")
disp(white_ssimval)
disp("SSIN_GIT")
disp(git_ssimval)

disp("FLIP GREY")
disp(grey_err)
disp("FLIP WHITE")
disp(white_err)
disp("FLIP GIT")
disp(git_err)
