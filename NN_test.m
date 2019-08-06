load("mnist.mat");
ct = 0 ;
%SET RANDOMDIG TO THE ANY NUMBER BETWEEN 1 and 10000
%This is the test images for testing the neural network which has 10000
%digits



for i = 1:10000
    a4 = testX(i,:);
    a5 = double(a4);
    a6 = sigmoid(a5*w1 + b1);
    a7 = sigmoid(a6*w2 + b2);
    [z,ind]=max(a7);
   if (ind-1) == double(testY(1,i))
        ct = ct + 1 ;
   end
end
ct/100

    

