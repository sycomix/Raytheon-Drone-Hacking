.class public interface abstract Lcom/parrot/controller/video/decoder/VideoDecoder$Listener;
.super Ljava/lang/Object;
.source "VideoDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/controller/video/decoder/VideoDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Listener"
.end annotation


# virtual methods
.method public abstract videoDecodingStarted()V
.end method

.method public abstract videoDecodingStopped()V
.end method
