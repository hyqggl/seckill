package org.seckill.exception;

/**
 * 秒杀关闭异常
 * Created by huyiqing on 16/12/12.
 */
public class SeckillCloseException extends SeckillException{

    public SeckillCloseException(String message) {
        super(message);
    }

    public SeckillCloseException(String message, Throwable cause) {
        super(message, cause);
    }
}
