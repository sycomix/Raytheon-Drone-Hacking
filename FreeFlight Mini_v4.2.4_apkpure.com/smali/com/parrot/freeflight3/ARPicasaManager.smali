.class public Lcom/parrot/freeflight3/ARPicasaManager;
.super Ljava/lang/Object;
.source "ARPicasaManager.java"

# interfaces
.implements Lcom/google/gdata/client/uploader/ProgressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;
    }
.end annotation


# static fields
.field private static final API_PREFIX:Ljava/lang/String; = "https://picasaweb.google.com/data/feed/api/user/default"

.field private static final TAG:Ljava/lang/String; = "ARPicasaManager"


# instance fields
.field private mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

.field public mPicasawebService:Lcom/google/gdata/client/photos/PicasawebService;


# direct methods
.method public constructor <init>(Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    .line 54
    return-void
.end method


# virtual methods
.method public createAlbum(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/gdata/data/photos/AlbumEntry;
    .locals 7
    .param p1, "title"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p3, "isPublic"    # Z

    .prologue
    .line 164
    new-instance v3, Lcom/google/gdata/data/photos/AlbumEntry;

    invoke-direct {v3}, Lcom/google/gdata/data/photos/AlbumEntry;-><init>()V

    .line 166
    .local v3, "album":Lcom/google/gdata/data/photos/AlbumEntry;
    new-instance v6, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v6, p1}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/google/gdata/data/photos/AlbumEntry;->setTitle(Lcom/google/gdata/data/TextConstruct;)V

    .line 167
    new-instance v6, Lcom/google/gdata/data/PlainTextConstruct;

    invoke-direct {v6, p2}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/google/gdata/data/photos/AlbumEntry;->setDescription(Lcom/google/gdata/data/TextConstruct;)V

    .line 170
    if-eqz p3, :cond_0

    .line 172
    const-string v1, "public"

    .line 179
    .local v1, "access":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3, v1}, Lcom/google/gdata/data/photos/AlbumEntry;->setAccess(Ljava/lang/String;)V

    .line 184
    new-instance v6, Ljava/util/Date;

    invoke-direct {v6}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v6}, Lcom/google/gdata/data/photos/AlbumEntry;->setDate(Ljava/util/Date;)V

    .line 186
    const/4 v2, 0x0

    .line 189
    .local v2, "addedAlbum":Lcom/google/gdata/data/photos/AlbumEntry;
    :try_start_0
    new-instance v5, Ljava/net/URL;

    const-string v6, "https://picasaweb.google.com/data/feed/api/user/default"

    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 190
    .local v5, "feedUrl":Ljava/net/URL;
    iget-object v6, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mPicasawebService:Lcom/google/gdata/client/photos/PicasawebService;

    invoke-virtual {v6, v5, v3}, Lcom/google/gdata/client/photos/PicasawebService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Lcom/google/gdata/data/photos/AlbumEntry;

    move-object v2, v0
    :try_end_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 201
    .end local v5    # "feedUrl":Ljava/net/URL;
    :goto_1
    return-object v2

    .line 176
    .end local v1    # "access":Ljava/lang/String;
    .end local v2    # "addedAlbum":Lcom/google/gdata/data/photos/AlbumEntry;
    :cond_0
    const-string v1, "private"

    .restart local v1    # "access":Ljava/lang/String;
    goto :goto_0

    .line 192
    .restart local v2    # "addedAlbum":Lcom/google/gdata/data/photos/AlbumEntry;
    :catch_0
    move-exception v4

    .line 194
    .local v4, "e":Lcom/google/gdata/util/ServiceException;
    invoke-virtual {v4}, Lcom/google/gdata/util/ServiceException;->printStackTrace()V

    goto :goto_1

    .line 196
    .end local v4    # "e":Lcom/google/gdata/util/ServiceException;
    :catch_1
    move-exception v4

    .line 198
    .local v4, "e":Ljava/io/IOException;
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public createAlbumIfNeeded(Ljava/lang/String;)Lcom/google/gdata/data/photos/AlbumEntry;
    .locals 7
    .param p1, "albumName"    # Ljava/lang/String;

    .prologue
    .line 135
    const/4 v2, 0x0

    .line 136
    .local v2, "desiredAlbum":Lcom/google/gdata/data/photos/AlbumEntry;
    const-string v3, "ARPicasaManager"

    const-string/jumbo v4, "will get albums"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/parrot/freeflight3/ARPicasaManager;->getAlbums()Ljava/util/List;

    move-result-object v1

    .line 138
    .local v1, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/photos/AlbumEntry;>;"
    const-string v3, "ARPicasaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "did get albums : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    if-eqz v1, :cond_1

    .line 141
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/AlbumEntry;

    .line 142
    .local v0, "album":Lcom/google/gdata/data/photos/AlbumEntry;
    const-string v4, "ARPicasaManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Album name : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 145
    const-string v3, "ARPicasaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Album Found : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/gdata/data/photos/AlbumEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    move-object v2, v0

    .line 152
    .end local v0    # "album":Lcom/google/gdata/data/photos/AlbumEntry;
    :cond_1
    if-nez v2, :cond_2

    .line 154
    const-string v3, "ARPicasaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Will create an album : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    const-string v3, ""

    const/4 v4, 0x1

    invoke-virtual {p0, p1, v3, v4}, Lcom/parrot/freeflight3/ARPicasaManager;->createAlbum(Ljava/lang/String;Ljava/lang/String;Z)Lcom/google/gdata/data/photos/AlbumEntry;

    move-result-object v2

    .line 156
    const-string v3, "ARPicasaManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Did create an album : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/gdata/data/photos/AlbumEntry;->getTitle()Lcom/google/gdata/data/TextConstruct;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/gdata/data/TextConstruct;->getPlainText()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_2
    return-object v2
.end method

.method public getAlbums()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/photos/AlbumEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 108
    .local v2, "albums":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/photos/AlbumEntry;>;"
    :try_start_0
    const-string v1, "https://picasaweb.google.com/data/feed/api/user/default"

    .line 109
    .local v1, "albumUrl":Ljava/lang/String;
    iget-object v7, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mPicasawebService:Lcom/google/gdata/client/photos/PicasawebService;

    new-instance v8, Ljava/net/URL;

    invoke-direct {v8, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    const-class v9, Lcom/google/gdata/data/photos/UserFeed;

    invoke-virtual {v7, v8, v9}, Lcom/google/gdata/client/photos/PicasawebService;->getFeed(Ljava/net/URL;Ljava/lang/Class;)Lcom/google/gdata/data/IFeed;

    move-result-object v6

    check-cast v6, Lcom/google/gdata/data/photos/UserFeed;

    .line 111
    .local v6, "userFeed":Lcom/google/gdata/data/photos/UserFeed;
    invoke-virtual {v6}, Lcom/google/gdata/data/photos/UserFeed;->getEntries()Ljava/util/List;

    move-result-object v4

    .line 112
    .local v4, "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/photos/GphotoEntry;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/gdata/data/photos/GphotoEntry;

    .line 113
    .local v5, "entry":Lcom/google/gdata/data/photos/GphotoEntry;
    new-instance v0, Lcom/google/gdata/data/photos/AlbumEntry;

    invoke-direct {v0, v5}, Lcom/google/gdata/data/photos/AlbumEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 114
    .local v0, "album":Lcom/google/gdata/data/photos/AlbumEntry;
    if-eqz v0, :cond_0

    .line 116
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 120
    .end local v0    # "album":Lcom/google/gdata/data/photos/AlbumEntry;
    .end local v1    # "albumUrl":Ljava/lang/String;
    .end local v4    # "entries":Ljava/util/List;, "Ljava/util/List<Lcom/google/gdata/data/photos/GphotoEntry;>;"
    .end local v5    # "entry":Lcom/google/gdata/data/photos/GphotoEntry;
    .end local v6    # "userFeed":Lcom/google/gdata/data/photos/UserFeed;
    :catch_0
    move-exception v3

    .line 122
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    .line 130
    .end local v3    # "e":Ljava/io/IOException;
    :cond_1
    :goto_1
    return-object v2

    .line 124
    :catch_1
    move-exception v3

    .line 126
    .local v3, "e":Lcom/google/gdata/util/ServiceException;
    invoke-virtual {v3}, Lcom/google/gdata/util/ServiceException;->printStackTrace()V

    goto :goto_1
.end method

.method public progressChanged(Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;)V
    .locals 4
    .param p1, "uploaderWithProgress"    # Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;

    .prologue
    .line 299
    const-string v0, "ARPicasaManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Progress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/gdata/client/uploader/ResumableHttpFileUploader;->getProgress()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method

.method public setListener(Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    .prologue
    .line 58
    iput-object p1, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    .line 59
    return-void
.end method

.method public signIn(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "accountName"    # Ljava/lang/String;
    .param p3, "appName"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v1, 0x0

    .line 67
    .local v1, "isSignedIn":Z
    :try_start_0
    new-instance v3, Lcom/google/gdata/client/photos/PicasawebService;

    invoke-direct {v3, p3}, Lcom/google/gdata/client/photos/PicasawebService;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mPicasawebService:Lcom/google/gdata/client/photos/PicasawebService;

    .line 69
    const-string v3, "oauth2:https://picasaweb.google.com/data/"

    invoke-static {p1, p2, v3}, Lcom/google/android/gms/auth/GoogleAuthUtil;->getToken(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 71
    .local v2, "token":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 73
    iget-object v3, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mPicasawebService:Lcom/google/gdata/client/photos/PicasawebService;

    invoke-virtual {v3, v2}, Lcom/google/gdata/client/photos/PicasawebService;->setAuthSubToken(Ljava/lang/String;)V
    :try_end_0
    .catch Lcom/google/android/gms/auth/GoogleAuthException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 75
    const/4 v1, 0x1

    .line 95
    .end local v2    # "token":Ljava/lang/String;
    :cond_0
    :goto_0
    if-nez v1, :cond_1

    iget-object v3, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    if-eqz v3, :cond_1

    .line 97
    iget-object v3, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    invoke-interface {v3}, Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;->picasaManagerUploadFailed()V

    :cond_1
    move v3, v1

    .line 100
    :goto_1
    return v3

    .line 78
    :catch_0
    move-exception v0

    .line 80
    .local v0, "e":Lcom/google/android/gms/auth/GoogleAuthException;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/GoogleAuthException;->printStackTrace()V

    .line 81
    instance-of v3, v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    if-eqz v3, :cond_0

    .line 83
    iget-object v3, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    if-eqz v3, :cond_0

    .line 85
    iget-object v3, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    check-cast v0, Lcom/google/android/gms/auth/UserRecoverableAuthException;

    .end local v0    # "e":Lcom/google/android/gms/auth/GoogleAuthException;
    invoke-virtual {v0}, Lcom/google/android/gms/auth/UserRecoverableAuthException;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-interface {v3, p0, v4}, Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;->picasaManagerAppShouldBeAllowed(Lcom/parrot/freeflight3/ARPicasaManager;Landroid/content/Intent;)V

    .line 86
    const/4 v3, 0x0

    goto :goto_1

    .line 90
    :catch_1
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public uploadPhoto(Lcom/google/gdata/data/photos/AlbumEntry;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15
    .param p1, "albumEntry"    # Lcom/google/gdata/data/photos/AlbumEntry;
    .param p2, "filePath"    # Ljava/lang/String;
    .param p3, "photoTitle"    # Ljava/lang/String;
    .param p4, "photoDescription"    # Ljava/lang/String;
    .param p5, "keywordsStr"    # Ljava/lang/String;

    .prologue
    .line 206
    new-instance v12, Lcom/google/gdata/data/photos/PhotoEntry;

    invoke-direct {v12}, Lcom/google/gdata/data/photos/PhotoEntry;-><init>()V

    .line 208
    .local v12, "photo":Lcom/google/gdata/data/photos/PhotoEntry;
    new-instance v13, Lcom/google/gdata/data/PlainTextConstruct;

    move-object/from16 v0, p3

    invoke-direct {v13, v0}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/google/gdata/data/photos/PhotoEntry;->setTitle(Lcom/google/gdata/data/TextConstruct;)V

    .line 209
    new-instance v13, Lcom/google/gdata/data/PlainTextConstruct;

    move-object/from16 v0, p4

    invoke-direct {v13, v0}, Lcom/google/gdata/data/PlainTextConstruct;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12, v13}, Lcom/google/gdata/data/photos/PhotoEntry;->setDescription(Lcom/google/gdata/data/TextConstruct;)V

    .line 210
    new-instance v13, Ljava/util/Date;

    invoke-direct {v13}, Ljava/util/Date;-><init>()V

    invoke-virtual {v12, v13}, Lcom/google/gdata/data/photos/PhotoEntry;->setTimestamp(Ljava/util/Date;)V

    .line 212
    if-eqz p5, :cond_0

    .line 214
    const-string v13, ","

    move-object/from16 v0, p5

    invoke-virtual {v0, v13}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 215
    .local v9, "keywordList":[Ljava/lang/String;
    if-eqz v9, :cond_0

    .line 217
    invoke-static {v9}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    .line 218
    .local v10, "keywordListObj":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v11, Lcom/google/gdata/data/media/mediarss/MediaKeywords;

    invoke-direct {v11}, Lcom/google/gdata/data/media/mediarss/MediaKeywords;-><init>()V

    .line 219
    .local v11, "keywords":Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    invoke-virtual {v11, v10}, Lcom/google/gdata/data/media/mediarss/MediaKeywords;->addKeywords(Ljava/util/Collection;)V

    .line 220
    invoke-virtual {v12, v11}, Lcom/google/gdata/data/photos/PhotoEntry;->setKeywords(Lcom/google/gdata/data/media/mediarss/MediaKeywords;)V

    .line 226
    .end local v9    # "keywordList":[Ljava/lang/String;
    .end local v10    # "keywordListObj":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "keywords":Lcom/google/gdata/data/media/mediarss/MediaKeywords;
    :cond_0
    :try_start_0
    new-instance v6, Ljava/io/File;

    move-object/from16 v0, p2

    invoke-direct {v6, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 227
    .local v6, "file":Ljava/io/File;
    invoke-static {v6}, Lcom/google/common/io/Files;->toByteArray(Ljava/io/File;)[B

    move-result-object v7

    .line 229
    .local v7, "fileAsByteArr":[B
    new-instance v4, Lcom/google/gdata/data/OtherContent;

    invoke-direct {v4}, Lcom/google/gdata/data/OtherContent;-><init>()V

    .line 230
    .local v4, "content":Lcom/google/gdata/data/OtherContent;
    invoke-virtual {v4, v7}, Lcom/google/gdata/data/OtherContent;->setBytes([B)V

    .line 231
    new-instance v13, Lcom/google/gdata/util/ContentType;

    const-string v14, "image/jpeg"

    invoke-direct {v13, v14}, Lcom/google/gdata/util/ContentType;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v13}, Lcom/google/gdata/data/OtherContent;->setMimeType(Lcom/google/gdata/util/ContentType;)V

    .line 232
    invoke-virtual {v12, v4}, Lcom/google/gdata/data/photos/PhotoEntry;->setContent(Lcom/google/gdata/data/Content;)V

    .line 234
    new-instance v3, Ljava/net/URL;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "https://picasaweb.google.com/data/feed/api/user/default/albumid/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual/range {p1 .. p1}, Lcom/google/gdata/data/photos/AlbumEntry;->getGphotoId()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-direct {v3, v13}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 235
    .local v3, "albumPostUrl":Ljava/net/URL;
    iget-object v13, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mPicasawebService:Lcom/google/gdata/client/photos/PicasawebService;

    invoke-virtual {v13, v3, v12}, Lcom/google/gdata/client/photos/PicasawebService;->insert(Ljava/net/URL;Lcom/google/gdata/data/IEntry;)Lcom/google/gdata/data/IEntry;

    move-result-object v1

    check-cast v1, Lcom/google/gdata/data/photos/PhotoEntry;

    .line 237
    .local v1, "addedPhoto":Lcom/google/gdata/data/photos/PhotoEntry;
    iget-object v13, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    if-eqz v13, :cond_2

    if-eqz v1, :cond_2

    .line 239
    invoke-virtual {v1}, Lcom/google/gdata/data/photos/PhotoEntry;->getHtmlLink()Lcom/google/gdata/data/Link;

    move-result-object v13

    invoke-virtual {v13}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v2

    .line 240
    .local v2, "addedPhotoUrl":Ljava/lang/String;
    invoke-virtual {v1}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaContents()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    if-lez v13, :cond_1

    .line 241
    invoke-virtual {v1}, Lcom/google/gdata/data/photos/PhotoEntry;->getMediaContents()Ljava/util/List;

    move-result-object v13

    const/4 v14, 0x0

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/google/gdata/data/media/mediarss/MediaContent;

    invoke-virtual {v13}, Lcom/google/gdata/data/media/mediarss/MediaContent;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 243
    :cond_1
    const-string v13, "/s0"

    invoke-static {v2, v13}, Lcom/parrot/freeflight3/ARSocialNetworksUtils;->getPicasaImageUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 244
    .local v8, "fullResPhotoUrl":Ljava/lang/String;
    iget-object v13, p0, Lcom/parrot/freeflight3/ARPicasaManager;->mListener:Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;

    move-object/from16 v0, p2

    invoke-interface {v13, p0, v0, v8}, Lcom/parrot/freeflight3/ARPicasaManager$ARPicasaManagerListener;->picasaManagerUploadDone(Lcom/parrot/freeflight3/ARPicasaManager;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/gdata/util/ServiceException; {:try_start_0 .. :try_end_0} :catch_1

    .line 294
    .end local v1    # "addedPhoto":Lcom/google/gdata/data/photos/PhotoEntry;
    .end local v2    # "addedPhotoUrl":Ljava/lang/String;
    .end local v3    # "albumPostUrl":Ljava/net/URL;
    .end local v4    # "content":Lcom/google/gdata/data/OtherContent;
    .end local v6    # "file":Ljava/io/File;
    .end local v7    # "fileAsByteArr":[B
    .end local v8    # "fullResPhotoUrl":Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 247
    :catch_0
    move-exception v5

    .line 249
    .local v5, "e":Ljava/io/IOException;
    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 251
    .end local v5    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .line 253
    .local v5, "e":Lcom/google/gdata/util/ServiceException;
    invoke-virtual {v5}, Lcom/google/gdata/util/ServiceException;->printStackTrace()V

    goto :goto_0
.end method
