.class public Lcom/google/gdata/data/photos/UserEntry;
.super Lcom/google/gdata/data/photos/GphotoEntry;
.source "UserEntry.java"

# interfaces
.implements Lcom/google/gdata/data/photos/AtomData;
.implements Lcom/google/gdata/data/photos/UserData;


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/photos/2007#user"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/photos/GphotoEntry",
        "<",
        "Lcom/google/gdata/data/photos/UserEntry;",
        ">;",
        "Lcom/google/gdata/data/photos/AtomData;",
        "Lcom/google/gdata/data/photos/UserData;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/photos/2007#user"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 44
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/photos/2007#user"

    invoke-direct {v0, v1, v2}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/photos/UserEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>()V

    .line 52
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/UserEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 53
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
    .line 62
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 63
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 67
    const-class v0, Lcom/google/gdata/data/photos/UserEntry;

    invoke-virtual {p1, v0}, Lcom/google/gdata/data/ExtensionProfile;->isDeclared(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 77
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/GphotoEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 71
    const-class v0, Lcom/google/gdata/data/photos/UserEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 72
    const-class v0, Lcom/google/gdata/data/photos/UserEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 73
    const-class v0, Lcom/google/gdata/data/photos/UserEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 74
    const-class v0, Lcom/google/gdata/data/photos/UserEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 75
    const-class v0, Lcom/google/gdata/data/photos/UserEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 76
    const-class v0, Lcom/google/gdata/data/photos/UserEntry;

    const-class v1, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public varargs getFeed([Ljava/lang/String;)Lcom/google/gdata/data/photos/UserFeed;
    .locals 1
    .param p1, "kinds"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/google/gdata/util/ServiceException;
        }
    .end annotation

    .prologue
    .line 296
    const-class v0, Lcom/google/gdata/data/photos/UserFeed;

    invoke-virtual {p0, v0, p1}, Lcom/google/gdata/data/photos/UserEntry;->getFeed(Ljava/lang/Class;[Ljava/lang/String;)Lcom/google/gdata/data/photos/GphotoFeed;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/UserFeed;

    return-object v0
.end method

.method public getMaxPhotos()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserEntry;->getMaxPhotosExt()Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    move-result-object v0

    .line 301
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoMaxPhotos;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoMaxPhotos;->getValue()Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getMaxPhotosExt()Lcom/google/gdata/data/photos/GphotoMaxPhotos;
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 2

    .prologue
    .line 305
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserEntry;->getNicknameExt()Lcom/google/gdata/data/photos/GphotoNickname;

    move-result-object v0

    .line 306
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoNickname;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoNickname;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getNicknameExt()Lcom/google/gdata/data/photos/GphotoNickname;
    .locals 1

    .prologue
    .line 117
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoNickname;

    return-object v0
.end method

.method public getQuotaLimit()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserEntry;->getQuotaLimitExt()Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    move-result-object v0

    .line 311
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoQuotaLimit;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoQuotaLimit;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getQuotaLimitExt()Lcom/google/gdata/data/photos/GphotoQuotaLimit;
    .locals 1

    .prologue
    .line 149
    const-class v0, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    return-object v0
.end method

.method public getQuotaUsed()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 315
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserEntry;->getQuotaUsedExt()Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    move-result-object v0

    .line 316
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoQuotaUsed;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoQuotaUsed;->getValue()Ljava/lang/Long;

    move-result-object v1

    goto :goto_0
.end method

.method public getQuotaUsedExt()Lcom/google/gdata/data/photos/GphotoQuotaUsed;
    .locals 1

    .prologue
    .line 182
    const-class v0, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 320
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserEntry;->getThumbnailExt()Lcom/google/gdata/data/photos/GphotoThumbnail;

    move-result-object v0

    .line 321
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoThumbnail;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoThumbnail;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getThumbnailExt()Lcom/google/gdata/data/photos/GphotoThumbnail;
    .locals 1

    .prologue
    .line 214
    const-class v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserEntry;->getUsernameExt()Lcom/google/gdata/data/photos/GphotoUsername;

    move-result-object v0

    .line 326
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoUsername;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/photos/GphotoUsername;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUsernameExt()Lcom/google/gdata/data/photos/GphotoUsername;
    .locals 1

    .prologue
    .line 245
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoUsername;

    return-object v0
.end method

.method public hasMaxPhotosExt()Z
    .locals 1

    .prologue
    .line 108
    const-class v0, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasNicknameExt()Z
    .locals 1

    .prologue
    .line 140
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasQuotaLimitExt()Z
    .locals 1

    .prologue
    .line 173
    const-class v0, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasQuotaUsedExt()Z
    .locals 1

    .prologue
    .line 205
    const-class v0, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasThumbnailExt()Z
    .locals 1

    .prologue
    .line 236
    const-class v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public hasUsernameExt()Z
    .locals 1

    .prologue
    .line 268
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->hasExtension(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public setMaxPhotos(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "max"    # Ljava/lang/Integer;

    .prologue
    .line 330
    const/4 v0, 0x0

    .line 331
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoMaxPhotos;
    if-eqz p1, :cond_0

    .line 332
    new-instance v0, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoMaxPhotos;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoMaxPhotos;-><init>(Ljava/lang/Integer;)V

    .line 334
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoMaxPhotos;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->setMaxPhotosExt(Lcom/google/gdata/data/photos/GphotoMaxPhotos;)V

    .line 335
    return-void
.end method

.method public setMaxPhotosExt(Lcom/google/gdata/data/photos/GphotoMaxPhotos;)V
    .locals 1
    .param p1, "maxPhotosExt"    # Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    .prologue
    .line 95
    if-nez p1, :cond_0

    .line 96
    const-class v0, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->removeExtension(Ljava/lang/Class;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/UserEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 338
    const/4 v0, 0x0

    .line 339
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoNickname;
    if-eqz p1, :cond_0

    .line 340
    new-instance v0, Lcom/google/gdata/data/photos/GphotoNickname;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoNickname;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoNickname;-><init>(Ljava/lang/String;)V

    .line 342
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoNickname;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->setNicknameExt(Lcom/google/gdata/data/photos/GphotoNickname;)V

    .line 343
    return-void
.end method

.method public setNicknameExt(Lcom/google/gdata/data/photos/GphotoNickname;)V
    .locals 1
    .param p1, "nicknameExt"    # Lcom/google/gdata/data/photos/GphotoNickname;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->removeExtension(Ljava/lang/Class;)V

    .line 132
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/UserEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setQuotaLimit(Ljava/lang/Long;)V
    .locals 1
    .param p1, "quota"    # Ljava/lang/Long;

    .prologue
    .line 346
    const/4 v0, 0x0

    .line 347
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoQuotaLimit;
    if-eqz p1, :cond_0

    .line 348
    new-instance v0, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoQuotaLimit;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoQuotaLimit;-><init>(Ljava/lang/Long;)V

    .line 350
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoQuotaLimit;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->setQuotaLimitExt(Lcom/google/gdata/data/photos/GphotoQuotaLimit;)V

    .line 351
    return-void
.end method

.method public setQuotaLimitExt(Lcom/google/gdata/data/photos/GphotoQuotaLimit;)V
    .locals 1
    .param p1, "quotaLimitExt"    # Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    .prologue
    .line 159
    if-nez p1, :cond_0

    .line 160
    const-class v0, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->removeExtension(Ljava/lang/Class;)V

    .line 164
    :goto_0
    return-void

    .line 162
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/UserEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setQuotaUsed(Ljava/lang/Long;)V
    .locals 1
    .param p1, "quota"    # Ljava/lang/Long;

    .prologue
    .line 354
    const/4 v0, 0x0

    .line 355
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoQuotaUsed;
    if-eqz p1, :cond_0

    .line 356
    new-instance v0, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoQuotaUsed;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoQuotaUsed;-><init>(Ljava/lang/Long;)V

    .line 358
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoQuotaUsed;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->setQuotaUsedExt(Lcom/google/gdata/data/photos/GphotoQuotaUsed;)V

    .line 359
    return-void
.end method

.method public setQuotaUsedExt(Lcom/google/gdata/data/photos/GphotoQuotaUsed;)V
    .locals 1
    .param p1, "quotaUsedExt"    # Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    .prologue
    .line 192
    if-nez p1, :cond_0

    .line 193
    const-class v0, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->removeExtension(Ljava/lang/Class;)V

    .line 197
    :goto_0
    return-void

    .line 195
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/UserEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 1
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 362
    const/4 v0, 0x0

    .line 363
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoThumbnail;
    if-eqz p1, :cond_0

    .line 364
    new-instance v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoThumbnail;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoThumbnail;-><init>(Ljava/lang/String;)V

    .line 366
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoThumbnail;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->setThumbnailExt(Lcom/google/gdata/data/photos/GphotoThumbnail;)V

    .line 367
    return-void
.end method

.method public setThumbnailExt(Lcom/google/gdata/data/photos/GphotoThumbnail;)V
    .locals 1
    .param p1, "thumbnailExt"    # Lcom/google/gdata/data/photos/GphotoThumbnail;

    .prologue
    .line 223
    if-nez p1, :cond_0

    .line 224
    const-class v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->removeExtension(Ljava/lang/Class;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/UserEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 370
    const/4 v0, 0x0

    .line 371
    .local v0, "ext":Lcom/google/gdata/data/photos/GphotoUsername;
    if-eqz p1, :cond_0

    .line 372
    new-instance v0, Lcom/google/gdata/data/photos/GphotoUsername;

    .end local v0    # "ext":Lcom/google/gdata/data/photos/GphotoUsername;
    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoUsername;-><init>(Ljava/lang/String;)V

    .line 374
    .restart local v0    # "ext":Lcom/google/gdata/data/photos/GphotoUsername;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->setUsernameExt(Lcom/google/gdata/data/photos/GphotoUsername;)V

    .line 375
    return-void
.end method

.method public setUsernameExt(Lcom/google/gdata/data/photos/GphotoUsername;)V
    .locals 1
    .param p1, "usernameExt"    # Lcom/google/gdata/data/photos/GphotoUsername;

    .prologue
    .line 255
    if-nez p1, :cond_0

    .line 256
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/UserEntry;->removeExtension(Ljava/lang/Class;)V

    .line 260
    :goto_0
    return-void

    .line 258
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/photos/UserEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{UserEntry "

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
    .line 273
    return-void
.end method
