.class public interface abstract Lcom/parrot/freeflight/media/task/MediaTask$MediaTaskActionListener;
.super Ljava/lang/Object;
.source "MediaTask.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/parrot/freeflight/media/task/MediaTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MediaTaskActionListener"
.end annotation


# virtual methods
.method public abstract isCancelled()Z
.end method

.method public varargs abstract publishProgress([Lcom/parrot/freeflight/media/task/MediaTask$ProgressResult;)V
.end method
