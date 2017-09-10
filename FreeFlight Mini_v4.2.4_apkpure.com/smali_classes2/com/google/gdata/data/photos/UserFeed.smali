.class public Lcom/google/gdata/data/photos/UserFeed;
.super Lcom/google/gdata/data/photos/GphotoFeed;
.source "UserFeed.java"

# interfaces
.implements Lcom/google/gdata/data/photos/UserData;
.implements Lcom/google/gdata/data/photos/AtomData;


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://schemas.google.com/photos/2007#user"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/photos/GphotoFeed",
        "<",
        "Lcom/google/gdata/data/photos/UserFeed;",
        ">;",
        "Lcom/google/gdata/data/photos/UserData;",
        "Lcom/google/gdata/data/photos/AtomData;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/google/gdata/data/photos/UserData;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/gdata/data/photos/GphotoFeed;-><init>()V

    .line 45
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/UserData;->USER_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/google/gdata/data/photos/impl/UserDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    .line 47
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseFeed;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseFeed",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "sourceFeed":Lcom/google/gdata/data/BaseFeed;, "Lcom/google/gdata/data/BaseFeed<**>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeed;-><init>(Lcom/google/gdata/data/BaseFeed;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/gdata/data/photos/UserFeed;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/photos/UserData;->USER_CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 57
    new-instance v0, Lcom/google/gdata/data/photos/impl/UserDataImpl;

    invoke-direct {v0, p0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    iput-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    .line 58
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 1
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/UserData;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 66
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/GphotoFeed;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 67
    return-void
.end method

.method public getAlbumEntries()Ljava/util/List;
    .locals 1
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
    .line 73
    const-class v0, Lcom/google/gdata/data/photos/AlbumEntry;

    invoke-super {p0, v0}, Lcom/google/gdata/data/photos/GphotoFeed;->getEntries(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getMaxPhotos()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/UserData;->getMaxPhotos()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/UserData;->getNickname()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuotaLimit()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/UserData;->getQuotaLimit()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getQuotaUsed()Ljava/lang/Long;
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/UserData;->getQuotaUsed()Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getTagEntries()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/google/gdata/data/photos/TagEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 80
    const-class v0, Lcom/google/gdata/data/photos/TagEntry;

    invoke-super {p0, v0}, Lcom/google/gdata/data/photos/GphotoFeed;->getEntries(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/UserData;->getThumbnail()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0}, Lcom/google/gdata/data/photos/UserData;->getUsername()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMaxPhotos(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "max"    # Ljava/lang/Integer;

    .prologue
    .line 110
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/UserData;->setMaxPhotos(Ljava/lang/Integer;)V

    .line 111
    return-void
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 114
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/UserData;->setNickname(Ljava/lang/String;)V

    .line 115
    return-void
.end method

.method public setQuotaLimit(Ljava/lang/Long;)V
    .locals 1
    .param p1, "quota"    # Ljava/lang/Long;

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/UserData;->setQuotaLimit(Ljava/lang/Long;)V

    .line 119
    return-void
.end method

.method public setQuotaUsed(Ljava/lang/Long;)V
    .locals 1
    .param p1, "quota"    # Ljava/lang/Long;

    .prologue
    .line 122
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/UserData;->setQuotaUsed(Ljava/lang/Long;)V

    .line 123
    return-void
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 1
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/UserData;->setThumbnail(Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 130
    iget-object v0, p0, Lcom/google/gdata/data/photos/UserFeed;->delegate:Lcom/google/gdata/data/photos/UserData;

    invoke-interface {v0, p1}, Lcom/google/gdata/data/photos/UserData;->setUsername(Ljava/lang/String;)V

    .line 131
    return-void
.end method
