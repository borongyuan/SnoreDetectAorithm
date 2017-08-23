function  mfcc_feature = mfcc_feature_achieve(window_data,nfft,bank,K)

w=1+0.5*K*sin(pi*[1:K]./K);%��һ��������������  
w=w/max(w);%Ԥ�����˲���
 y=window_data*(1-0.9375);  %������֡
 s=y'.*hamming(nfft);  
 t=abs(fft(s));%FFT���ٸ���Ҷ�任  
 t=t.^2; 
 for k=1:K  
    n=0:(size(bank,1)-1);  
    dctcoef(k,:)=cos((2*n+1)*k*pi/(2*24));  %����dctϵ��
end  
 c1=dctcoef*log(bank*t(1:size(bank,2))+1);  
 mfcc_feature=c1.*w';  %��ȡmfcc
 
  
