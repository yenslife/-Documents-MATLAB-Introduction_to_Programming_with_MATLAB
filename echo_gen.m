function output = echo_gen(input, fs, delay, amp)
% input: 1 ~ -1
% fs: The sampling rate specifies how many samples we have in the data each
% second, sample 可以想成單位的聲音，samples 越多聲音就越長
% delay: delay in seconds, echo should start after echo
% amp: amplification(less than 1)

delay_sample_number = round((delay)*fs);    % delay sample number
if delay_sample_number == 0                   
    append_zero=[];            
else
    append_zero=zeros(delay_sample_number,1);    % zero vector before delay sound
end
    echo_sound = [append_zero;input];                 % append original sound
    amp_echo_sound = amp * echo_sound;                % amplified echo sound
    out_original_sound = [input; append_zero];        % make out sound longer
    out = (amp_echo_sound + out_original_sound);      % combine two sound
    
% scaling (if the original sound + echo sound sample > 1 means, than you need to scale the whole sound 就是不要讓他爆音的意思)
    maxx = max(abs(out));
    output=out;         
    if max(abs(out))>1
        output = out/abs(maxx);        
    end
end