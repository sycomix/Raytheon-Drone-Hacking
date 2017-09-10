.class public interface abstract Lcom/google/gdata/data/media/MediaSource;
.super Ljava/lang/Object;
.source "MediaSource.java"

# interfaces
.implements Ljavax/activation/DataSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/gdata/data/media/MediaSource$Output;
    }
.end annotation


# virtual methods
.method public abstract getContentLength()J
.end method

.method public abstract getEtag()Ljava/lang/String;
.end method

.method public abstract getLastModified()Lcom/google/gdata/data/DateTime;
.end method
