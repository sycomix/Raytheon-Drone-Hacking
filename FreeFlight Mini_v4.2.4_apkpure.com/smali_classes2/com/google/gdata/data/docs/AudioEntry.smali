.class public Lcom/google/gdata/data/docs/AudioEntry;
.super Lcom/google/gdata/data/docs/DocumentListEntry;
.source "AudioEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/docs/2007#audio"
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#audio"

.field public static final LABEL:Ljava/lang/String; = "audio"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/docs/2007#audio"

    const-string v3, "audio"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/AudioEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/AudioEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/DocumentListEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 54
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/AudioEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/AudioEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 55
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
    .line 61
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/docs/DocumentListEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 62
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 66
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/docs/DocumentListEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/Album;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/AlbumArt;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/AlbumArtist;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 74
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/Artist;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 75
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/Composer;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/Duration;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 77
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/Genre;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 78
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/Size;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 79
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/Track;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 80
    const-class v0, Lcom/google/gdata/data/docs/AudioEntry;

    const-class v1, Lcom/google/gdata/data/docs/Year;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public getAlbum()Lcom/google/gdata/data/docs/Album;
    .locals 1

    .prologue
    .line 87
    const-class v0, Lcom/google/gdata/data/docs/Album;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Album;

    return-object v0
.end method

.method public getAlbumArt()Lcom/google/gdata/data/docs/AlbumArt;
    .locals 1

    .prologue
    .line 113
    const-class v0, Lcom/google/gdata/data/docs/AlbumArt;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/AlbumArt;

    return-object v0
.end method

.method public getAlbumArtist()Lcom/google/gdata/data/docs/AlbumArtist;
    .locals 1

    .prologue
    .line 139
    const-class v0, Lcom/google/gdata/data/docs/AlbumArtist;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/AlbumArtist;

    return-object v0
.end method

.method public getArtist()Lcom/google/gdata/data/docs/Artist;
    .locals 1

    .prologue
    .line 165
    const-class v0, Lcom/google/gdata/data/docs/Artist;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Artist;

    return-object v0
.end method

.method public getComposer()Lcom/google/gdata/data/docs/Composer;
    .locals 1

    .prologue
    .line 192
    const-class v0, Lcom/google/gdata/data/docs/Composer;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Composer;

    return-object v0
.end method

.method public getDuration()Lcom/google/gdata/data/docs/Duration;
    .locals 1

    .prologue
    .line 218
    const-class v0, Lcom/google/gdata/data/docs/Duration;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Duration;

    return-object v0
.end method

.method public getGenre()Lcom/google/gdata/data/docs/Genre;
    .locals 1

    .prologue
    .line 244
    const-class v0, Lcom/google/gdata/data/docs/Genre;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Genre;

    return-object v0
.end method

.method public getSize()Lcom/google/gdata/data/docs/Size;
    .locals 1

    .prologue
    .line 270
    const-class v0, Lcom/google/gdata/data/docs/Size;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Size;

    return-object v0
.end method

.method public getTrack()Lcom/google/gdata/data/docs/Track;
    .locals 1

    .prologue
    .line 296
    const-class v0, Lcom/google/gdata/data/docs/Track;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Track;

    return-object v0
.end method

.method public getYear()Lcom/google/gdata/data/docs/Year;
    .locals 1

    .prologue
    .line 322
    const-class v0, Lcom/google/gdata/data/docs/Year;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Year;

    return-object v0
.end method

.method public hasAlbum()Z
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/google/gdata/data/docs/Album;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAlbumArt()Z
    .locals 1

    .prologue
    .line 132
    const-class v0, Lcom/google/gdata/data/docs/AlbumArt;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasAlbumArtist()Z
    .locals 1

    .prologue
    .line 158
    const-class v0, Lcom/google/gdata/data/docs/AlbumArtist;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasArtist()Z
    .locals 1

    .prologue
    .line 184
    const-class v0, Lcom/google/gdata/data/docs/Artist;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasComposer()Z
    .locals 1

    .prologue
    .line 211
    const-class v0, Lcom/google/gdata/data/docs/Composer;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 237
    const-class v0, Lcom/google/gdata/data/docs/Duration;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasGenre()Z
    .locals 1

    .prologue
    .line 263
    const-class v0, Lcom/google/gdata/data/docs/Genre;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasSize()Z
    .locals 1

    .prologue
    .line 289
    const-class v0, Lcom/google/gdata/data/docs/Size;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasTrack()Z
    .locals 1

    .prologue
    .line 315
    const-class v0, Lcom/google/gdata/data/docs/Track;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 341
    const-class v0, Lcom/google/gdata/data/docs/Year;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setAlbum(Lcom/google/gdata/data/docs/Album;)V
    .locals 1
    .param p1, "album"    # Lcom/google/gdata/data/docs/Album;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const-class v0, Lcom/google/gdata/data/docs/Album;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setAlbumArt(Lcom/google/gdata/data/docs/AlbumArt;)V
    .locals 1
    .param p1, "albumArt"    # Lcom/google/gdata/data/docs/AlbumArt;

    .prologue
    .line 121
    if-nez p1, :cond_0

    .line 122
    const-class v0, Lcom/google/gdata/data/docs/AlbumArt;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 126
    :goto_0
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setAlbumArtist(Lcom/google/gdata/data/docs/AlbumArtist;)V
    .locals 1
    .param p1, "albumArtist"    # Lcom/google/gdata/data/docs/AlbumArtist;

    .prologue
    .line 147
    if-nez p1, :cond_0

    .line 148
    const-class v0, Lcom/google/gdata/data/docs/AlbumArtist;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 152
    :goto_0
    return-void

    .line 150
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setArtist(Lcom/google/gdata/data/docs/Artist;)V
    .locals 1
    .param p1, "artist"    # Lcom/google/gdata/data/docs/Artist;

    .prologue
    .line 173
    if-nez p1, :cond_0

    .line 174
    const-class v0, Lcom/google/gdata/data/docs/Artist;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setComposer(Lcom/google/gdata/data/docs/Composer;)V
    .locals 1
    .param p1, "composer"    # Lcom/google/gdata/data/docs/Composer;

    .prologue
    .line 200
    if-nez p1, :cond_0

    .line 201
    const-class v0, Lcom/google/gdata/data/docs/Composer;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 205
    :goto_0
    return-void

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setDuration(Lcom/google/gdata/data/docs/Duration;)V
    .locals 1
    .param p1, "duration"    # Lcom/google/gdata/data/docs/Duration;

    .prologue
    .line 226
    if-nez p1, :cond_0

    .line 227
    const-class v0, Lcom/google/gdata/data/docs/Duration;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 231
    :goto_0
    return-void

    .line 229
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setGenre(Lcom/google/gdata/data/docs/Genre;)V
    .locals 1
    .param p1, "genre"    # Lcom/google/gdata/data/docs/Genre;

    .prologue
    .line 252
    if-nez p1, :cond_0

    .line 253
    const-class v0, Lcom/google/gdata/data/docs/Genre;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 257
    :goto_0
    return-void

    .line 255
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setSize(Lcom/google/gdata/data/docs/Size;)V
    .locals 1
    .param p1, "size"    # Lcom/google/gdata/data/docs/Size;

    .prologue
    .line 278
    if-nez p1, :cond_0

    .line 279
    const-class v0, Lcom/google/gdata/data/docs/Size;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 283
    :goto_0
    return-void

    .line 281
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setTrack(Lcom/google/gdata/data/docs/Track;)V
    .locals 1
    .param p1, "track"    # Lcom/google/gdata/data/docs/Track;

    .prologue
    .line 304
    if-nez p1, :cond_0

    .line 305
    const-class v0, Lcom/google/gdata/data/docs/Track;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 309
    :goto_0
    return-void

    .line 307
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setYear(Lcom/google/gdata/data/docs/Year;)V
    .locals 1
    .param p1, "year"    # Lcom/google/gdata/data/docs/Year;

    .prologue
    .line 330
    if-nez p1, :cond_0

    .line 331
    const-class v0, Lcom/google/gdata/data/docs/Year;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/AudioEntry;->removeExtension(Ljava/lang/Class;)V

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/docs/AudioEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
