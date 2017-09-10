.class public interface abstract Lcom/parrot/arsdk/arstream2/ARStream2ReceiverListener;
.super Ljava/lang/Object;
.source "ARStream2ReceiverListener.java"


# virtual methods
.method public abstract getFreeBuffer()I
.end method

.method public abstract onBufferReady(IJIJJJLcom/parrot/arsdk/arstream2/ARSTREAM2_STREAM_RECEIVER_AU_SYNC_TYPE_ENUM;)V
.end method

.method public abstract onSpsPpsReady(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)[Ljava/nio/ByteBuffer;
.end method
