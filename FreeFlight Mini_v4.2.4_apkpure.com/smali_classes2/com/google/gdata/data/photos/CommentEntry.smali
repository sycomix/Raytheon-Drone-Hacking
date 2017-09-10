.class public Lcom/google/gdata/data/photos/CommentEntry;
.super Lcom/google/gdata/data/photos/GphotoEntry;
.source "CommentEntry.java"

# interfaces
.implements Lcom/google/gdata/data/photos/AtomData;
.implements Lcom/google/gdata/data/photos/CommentData;


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/photos/2007#comment"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/photos/GphotoEntry",
        "<",
        "Lcom/google/gdata/data/photos/CommentEntry;",
        ">;",
        "Lcom/google/gdata/data/photos/AtomData;",
        "Lcom/google/gdata/data/photos/CommentData;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#comment"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 41
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#comment"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/CommentEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>()V

    .line 49
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/CommentEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/CommentEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 59
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 60
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 64
    const-class v0, Lcom/google/gdata/data/photos/CommentEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    :goto_0
    return-void

    .line 67
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 68
    const-class v0, Lcom/google/gdata/data/photos/CommentEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 69
    const-class v0, Lcom/google/gdata/data/photos/CommentEntry;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/google/gdata/data/photos/CommentAuthor;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 71
    new-instance v0, Lcom/google/gdata/data/photos/CommentAuthor;

    invoke-direct {v0}, Lcom/google/gdata/data/photos/CommentAuthor;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/gdata/data/photos/CommentAuthor;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/photos/CommentEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getAlbumId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 150
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/CommentEntry;->getAlbumIdExt()Lcom/google/gdata/data/photos/GphotoAlbumId;

    move-result-object v0

    .line 151
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoAlbumId;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoAlbumId;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getAlbumIdExt()Lcom/google/gdata/data/photos/GphotoAlbumId;
    .locals 1

    .prologue
    .line 81
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    return-object v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/CommentEntry;->getPhotoIdExt()Lcom/google/gdata/data/photos/GphotoPhotoId;

    move-result-object v0

    .line 156
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoPhotoId;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoPhotoId;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getPhotoIdExt()Lcom/google/gdata/data/photos/GphotoPhotoId;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    return-object v0
.end method

.method public hasAlbumIdExt()Z
    .locals 1

    .prologue
    .line 104
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasPhotoIdExt()Z
    .locals 1

    .prologue
    .line 136
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setAlbumId(Ljava/lang/Long;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/Long;

    .prologue
    .line 160
    const/4 v0, 0x0

    .line 161
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoAlbumId;
    if-eqz p1, :cond_0

    .line 162
    invoke-static {p1}, Lcom/google/gdata/data/photos/GphotoAlbumId;->from(Ljava/lang/Long;)Lcom/google/gdata/data/photos/GphotoAlbumId;

    move-result-object v0

    .line 164
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->setAlbumIdExt(Lcom/google/gdata/data/photos/GphotoAlbumId;)V

    .line 165
    return-void
.end method

.method public setAlbumId(Ljava/lang/String;)V
    .locals 1
    .param p1, "albumId"    # Ljava/lang/String;

    .prologue
    .line 168
    const/4 v0, 0x0

    .line 169
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoAlbumId;
    if-eqz p1, :cond_0

    .line 170
    new-instance v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoAlbumId;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoAlbumId;-><init>(Ljava/lang/String;)V

    .line 172
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoAlbumId;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->setAlbumIdExt(Lcom/google/gdata/data/photos/GphotoAlbumId;)V

    .line 173
    return-void
.end method

.method public setAlbumIdExt(Lcom/google/gdata/data/photos/GphotoAlbumId;)V
    .locals 1
    .param p1, "albumIdExt"    # Lcom/google/gdata/data/photos/GphotoAlbumId;

    .prologue
    .line 91
    if-nez p1, :cond_0

    .line 92
    const-class v0, Lcom/google/gdata/data/photos/GphotoAlbumId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 96
    :goto_0
    return-void

    .line 94
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/CommentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPhotoId(Ljava/lang/Long;)V
    .locals 1
    .param p1, "photoId"    # Ljava/lang/Long;

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoPhotoId;
    if-eqz p1, :cond_0

    .line 178
    invoke-static {p1}, Lcom/google/gdata/data/photos/GphotoPhotoId;->from(Ljava/lang/Long;)Lcom/google/gdata/data/photos/GphotoPhotoId;

    move-result-object v0

    .line 180
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->setPhotoIdExt(Lcom/google/gdata/data/photos/GphotoPhotoId;)V

    .line 181
    return-void
.end method

.method public setPhotoId(Ljava/lang/String;)V
    .locals 1
    .param p1, "photoId"    # Ljava/lang/String;

    .prologue
    .line 184
    const/4 v0, 0x0

    .line 185
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoPhotoId;
    if-eqz p1, :cond_0

    .line 186
    new-instance v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoPhotoId;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoPhotoId;-><init>(Ljava/lang/String;)V

    .line 188
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoPhotoId;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->setPhotoIdExt(Lcom/google/gdata/data/photos/GphotoPhotoId;)V

    .line 189
    return-void
.end method

.method public setPhotoIdExt(Lcom/google/gdata/data/photos/GphotoPhotoId;)V
    .locals 1
    .param p1, "photoIdExt"    # Lcom/google/gdata/data/photos/GphotoPhotoId;

    .prologue
    .line 123
    if-nez p1, :cond_0

    .line 124
    const-class v0, Lcom/google/gdata/data/photos/GphotoPhotoId;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/CommentEntry;->removeExtension(Ljava/lang/Class;)V

    .line 128
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/CommentEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{CommentEntry "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected validate()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
