function   window_data=window_data_struct(window_data,window_size,sd)

window_data_size=size(window_data,1); %�ṹ�������ݵ�����
if window_data_size<window_size   %�����������
    window_data(window_data_size+1,1)=sd;

else  %�����ȳ����
    for  i=2:window_data_size
        window_data(i-1,1)=window_data(i,1);
    end
    window_data(window_data_size,1)=sd;
end
    
        
        
    



