.class public interface abstract Lcom/google/gdata/data/photos/PhotoData;
.super Ljava/lang/Object;
.source "PhotoData.java"

# interfaces
.implements Lcom/google/gdata/data/photos/GphotoData;
.implements Lcom/google/gdata/data/geo/PointData;
.implements Lcom/google/gdata/data/geo/BoxData;
.implements Lcom/google/gdata/data/photos/MediaData;


# static fields
.field public static final KIND:Ljava/lang/String; = "photo"

.field public static final PHOTO_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final PHOTO_KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#photo"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#photo"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/PhotoData;->PHOTO_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method


# virtual methods
.method public abstract addStreamId(Ljava/lang/String;)V
.end method

.method public abstract getAlbumAccess()Ljava/lang/String;
.end method

.method public abstract getAlbumId()Ljava/lang/String;
.end method

.method public abstract getChecksum()Ljava/lang/String;
.end method

.method public abstract getClient()Ljava/lang/String;
.end method

.method public abstract getCommentCount()Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getCommentsEnabled()Ljava/lang/Boolean;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getExifTags()Lcom/google/gdata/data/photos/ExifTags;
.end method

.method public abstract getFeaturedDate()Ljava/util/Date;
.end method

.method public abstract getHeight()Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getPosition()Ljava/lang/Float;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getRotation()Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getSize()Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getStreamIds()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getTimestamp()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getTotalStars()Ljava/lang/Integer;
.end method

.method public abstract getVersion()Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getVideoStatus()Ljava/lang/String;
.end method

.method public abstract getViewCount()Ljava/lang/Long;
.end method

.method public abstract getWidth()Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract isStarred()Ljava/lang/Boolean;
.end method

.method public abstract setAlbumAccess(Ljava/lang/String;)V
.end method

.method public abstract setAlbumId(Ljava/lang/Long;)V
.end method

.method public abstract setAlbumId(Ljava/lang/String;)V
.end method

.method public abstract setChecksum(Ljava/lang/String;)V
.end method

.method public abstract setClient(Ljava/lang/String;)V
.end method

.method public abstract setCommentCount(Ljava/lang/Integer;)V
.end method

.method public abstract setCommentsEnabled(Ljava/lang/Boolean;)V
.end method

.method public abstract setExifTags(Lcom/google/gdata/data/photos/ExifTags;)V
.end method

.method public abstract setFeaturedDate(Ljava/util/Date;)V
.end method

.method public abstract setHeight(Ljava/lang/Long;)V
.end method

.method public abstract setPosition(Ljava/lang/Float;)V
.end method

.method public abstract setRotation(Ljava/lang/Integer;)V
.end method

.method public abstract setSize(Ljava/lang/Long;)V
.end method

.method public abstract setStarred(Ljava/lang/Boolean;)V
.end method

.method public abstract setTimestamp(Ljava/util/Date;)V
.end method

.method public abstract setTotalStars(Ljava/lang/Integer;)V
.end method

.method public abstract setVersion(Ljava/lang/Long;)V
.end method

.method public abstract setVideoStatus(Ljava/lang/String;)V
.end method

.method public abstract setViewCount(Ljava/lang/Long;)V
.end method

.method public abstract setWidth(Ljava/lang/Long;)V
.end method
