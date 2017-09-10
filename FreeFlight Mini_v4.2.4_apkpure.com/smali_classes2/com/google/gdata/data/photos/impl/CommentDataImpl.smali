.class public Lcom/google/gdata/data/photos/impl/CommentDataImpl;
.super Lcom/google/gdata/data/photos/impl/GphotoDataImpl;
.source "CommentDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/photos/CommentData;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 0
    .param p1, "extensionPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 41
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v1, 0x0

    .line 48
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoAlbumId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 49
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoPhotoId;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 50
    return-void
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumId(Ljava/lang/Long;)V
    .locals 2
    .param p1, "albumId"    # Ljava/lang/Long;

    .prologue
    .line 65
    if-eqz p1, :cond_0

    .line 66
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/photos/GphotoAlbumId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 70
    :goto_0
    return-void

    .line 68
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 78
    if-eqz p1, :cond_0

    .line 79
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoAlbumId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 83
    :goto_0
    return-void

    .line 81
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setPhotoId(Ljava/lang/Long;)V
    .locals 2
    .param p1, "photoId"    # Ljava/lang/Long;

    .prologue
    .line 98
    if-eqz p1, :cond_0

    .line 99
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-virtual {p1}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/gdata/data/photos/GphotoPhotoId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 103
    :goto_0
    return-void

    .line 101
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setPhotoId(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoPhotoId;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 116
    :goto_0
    return-void

    .line 114
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/CommentDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
