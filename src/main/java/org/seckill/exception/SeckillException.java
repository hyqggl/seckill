package org.seckill.exception;

/**
 * 秒杀相关业务异常
 * Created by huyiqing on 16/12/12.
 */
public class SeckillException extends RuntimeException{

    public SeckillException(String message) {
        super(message);
    }

    public SeckillException(String message, Throwable cause) {
        super(message, cause);
    }
}
