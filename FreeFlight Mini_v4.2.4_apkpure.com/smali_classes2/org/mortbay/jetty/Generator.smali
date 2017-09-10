.class public interface abstract Lorg/mortbay/jetty/Generator;
.super Ljava/lang/Object;
.source "Generator.java"


# static fields
.field public static final LAST:Z = true

.field public static final MORE:Z


# virtual methods
.method public abstract addContent(Lorg/mortbay/io/Buffer;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract addContent(B)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract complete()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract completeHeader(Lorg/mortbay/jetty/HttpFields;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract flush()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getContentBufferSize()I
.end method

.method public abstract getContentWritten()J
.end method

.method public abstract increaseContentBufferSize(I)V
.end method

.method public abstract isBufferFull()Z
.end method

.method public abstract isCommitted()Z
.end method

.method public abstract isComplete()Z
.end method

.method public abstract isContentWritten()Z
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isPersistent()Z
.end method

.method public abstract reset(Z)V
.end method

.method public abstract resetBuffer()V
.end method

.method public abstract sendError(ILjava/lang/String;Ljava/lang/String;Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract setContentLength(J)V
.end method

.method public abstract setHead(Z)V
.end method

.method public abstract setPersistent(Z)V
.end method

.method public abstract setRequest(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setResponse(ILjava/lang/String;)V
.end method

.method public abstract setSendServerVersion(Z)V
.end method

.method public abstract setVersion(I)V
.end method
