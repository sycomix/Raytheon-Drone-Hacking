.class public interface abstract Lorg/mortbay/jetty/Parser;
.super Ljava/lang/Object;
.source "Parser.java"


# virtual methods
.method public abstract isComplete()Z
.end method

.method public abstract isIdle()Z
.end method

.method public abstract isMoreInBuffer()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract parseAvailable()J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract reset(Z)V
.end method
