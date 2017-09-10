.class public interface abstract Lcom/google/gdata/data/photos/AlbumData;
.super Ljava/lang/Object;
.source "AlbumData.java"

# interfaces
.implements Lcom/google/gdata/data/photos/GphotoData;
.implements Lcom/google/gdata/data/geo/PointData;
.implements Lcom/google/gdata/data/geo/BoxData;
.implements Lcom/google/gdata/data/photos/MediaData;


# static fields
.field public static final ALBUM_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final ALBUM_KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#album"

.field public static final KIND:Ljava/lang/String; = "album"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 45
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#album"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/AlbumData;->ALBUM_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method


# virtual methods
.method public abstract getAccess()Ljava/lang/String;
.end method

.method public abstract getBytesUsed()Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
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

.method public abstract getDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getLocation()Ljava/lang/String;
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract getNickname()Ljava/lang/String;
.end method

.method public abstract getPhotosLeft()Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getPhotosUsed()Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation
.end method

.method public abstract getUsername()Ljava/lang/String;
.end method

.method public abstract setAccess(Ljava/lang/String;)V
.end method

.method public abstract setBytesUsed(Ljava/lang/Long;)V
.end method

.method public abstract setCommentCount(Ljava/lang/Integer;)V
.end method

.method public abstract setCommentsEnabled(Ljava/lang/Boolean;)V
.end method

.method public abstract setDate(Ljava/util/Date;)V
.end method

.method public abstract setLocation(Ljava/lang/String;)V
.end method

.method public abstract setName(Ljava/lang/String;)V
.end method

.method public abstract setNickname(Ljava/lang/String;)V
.end method

.method public abstract setPhotosLeft(Ljava/lang/Integer;)V
.end method

.method public abstract setPhotosUsed(Ljava/lang/Integer;)V
.end method

.method public abstract setUsername(Ljava/lang/String;)V
.end method
