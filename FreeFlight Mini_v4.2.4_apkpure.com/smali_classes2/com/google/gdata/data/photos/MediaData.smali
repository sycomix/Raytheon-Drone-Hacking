.class public interface abstract Lcom/google/gdata/data/photos/MediaData;
.super Ljava/lang/Object;
.source "MediaData.java"

# interfaces
.implements Lcom/google/gdata/data/photos/Extensible;


# virtual methods
.method public abstract getMediaCategories()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCategory;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaContents()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaContent;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaCredits()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaCredit;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaGroup()Lcom/google/gdata/data/media/mediarss/MediaGroup;
.end method

.method public abstract getMediaKeywords()Lcom/google/gdata/data/media/mediarss/MediaKeywords;
.end method

.method public abstract getMediaThumbnails()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/media/mediarss/MediaThumbnail;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V
.end method
