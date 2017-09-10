.class public interface abstract Lorg/mortbay/io/EndPoint;
.super Ljava/lang/Object;
.source "EndPoint.java"


# virtual methods
.method public abstract blockReadable(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract blockWritable(J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract fill(Lorg/mortbay/io/Buffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush(Lorg/mortbay/io/Buffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush(Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;Lorg/mortbay/io/Buffer;)I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getLocalAddr()Ljava/lang/String;
.end method

.method public abstract getLocalHost()Ljava/lang/String;
.end method

.method public abstract getLocalPort()I
.end method

.method public abstract getRemoteAddr()Ljava/lang/String;
.end method

.method public abstract getRemoteHost()Ljava/lang/String;
.end method

.method public abstract getRemotePort()I
.end method

.method public abstract getTransport()Ljava/lang/Object;
.end method

.method public abstract isBlocking()Z
.end method

.method public abstract isBufferingInput()Z
.end method

.method public abstract isBufferingOutput()Z
.end method

.method public abstract isBufferred()Z
.end method

.method public abstract isOpen()Z
.end method

.method public abstract shutdownOutput()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
