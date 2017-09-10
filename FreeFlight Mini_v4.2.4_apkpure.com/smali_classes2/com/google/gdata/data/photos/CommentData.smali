.class public interface abstract Lcom/google/gdata/data/photos/CommentData;
.super Ljava/lang/Object;
.source "CommentData.java"

# interfaces
.implements Lcom/google/gdata/data/photos/GphotoData;


# static fields
.field public static final COMMENT_CATEGORY:Lcom/google/gdata/data/Category;

.field public static final COMMENT_KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#comment"

.field public static final KIND:Ljava/lang/String; = "comment"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 43
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#comment"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/CommentData;->COMMENT_CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method


# virtual methods
.method public abstract getAlbumId()Ljava/lang/String;
.end method

.method public abstract getPhotoId()Ljava/lang/String;
.end method

.method public abstract setAlbumId(Ljava/lang/Long;)V
.end method

.method public abstract setAlbumId(Ljava/lang/String;)V
.end method

.method public abstract setPhotoId(Ljava/lang/Long;)V
.end method

.method public abstract setPhotoId(Ljava/lang/String;)V
.end method
