.class public Lcom/google/gdata/data/photos/impl/UserDataImpl;
.super Lcom/google/gdata/data/photos/impl/GphotoDataImpl;
.source "UserDataImpl.java"

# interfaces
.implements Lcom/google/gdata/data/photos/UserData;


# direct methods
.method public constructor <init>(Lcom/google/gdata/data/ExtensionPoint;)V
    .locals 0
    .param p1, "extensionPoint"    # Lcom/google/gdata/data/ExtensionPoint;

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;-><init>(Lcom/google/gdata/data/ExtensionPoint;)V

    .line 45
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    const/4 v1, 0x0

    .line 52
    invoke-super {p0, p1}, Lcom/google/gdata/data/photos/impl/GphotoDataImpl;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 54
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoUsername;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 55
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoNickname;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 56
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoThumbnail;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 57
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoQuotaUsed;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 58
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoQuotaLimit;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 59
    invoke-static {v1, v1}, Lcom/google/gdata/data/photos/GphotoMaxPhotos;->getDefaultDescription(ZZ)Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->declare(Lcom/google/gdata/data/ExtensionProfile;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 60
    return-void
.end method

.method public getMaxPhotos()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 168
    const-class v1, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    .line 169
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

.method public getNickname()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getQuotaLimit()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 147
    const-class v1, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    .line 148
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

.method public getQuotaUsed()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 126
    const-class v1, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    .line 127
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

.method public getThumbnail()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    const-class v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 1

    .prologue
    .line 66
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->getSimpleValue(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public setMaxPhotos(Ljava/lang/Integer;)V
    .locals 1
    .param p1, "max"    # Ljava/lang/Integer;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    new-instance v0, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoMaxPhotos;-><init>(Ljava/lang/Integer;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 183
    :goto_0
    return-void

    .line 181
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoMaxPhotos;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setNickname(Ljava/lang/String;)V
    .locals 1
    .param p1, "nickname"    # Ljava/lang/String;

    .prologue
    .line 95
    if-eqz p1, :cond_0

    .line 96
    new-instance v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoNickname;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 100
    :goto_0
    return-void

    .line 98
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoNickname;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setQuotaLimit(Ljava/lang/Long;)V
    .locals 1
    .param p1, "quota"    # Ljava/lang/Long;

    .prologue
    .line 157
    if-eqz p1, :cond_0

    .line 158
    new-instance v0, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoQuotaLimit;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 162
    :goto_0
    return-void

    .line 160
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoQuotaLimit;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setQuotaUsed(Ljava/lang/Long;)V
    .locals 1
    .param p1, "quota"    # Ljava/lang/Long;

    .prologue
    .line 136
    if-eqz p1, :cond_0

    .line 137
    new-instance v0, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoQuotaUsed;-><init>(Ljava/lang/Long;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 141
    :goto_0
    return-void

    .line 139
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoQuotaUsed;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setThumbnail(Ljava/lang/String;)V
    .locals 1
    .param p1, "thumbnail"    # Ljava/lang/String;

    .prologue
    .line 115
    if-eqz p1, :cond_0

    .line 116
    new-instance v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoThumbnail;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoThumbnail;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "username"    # Ljava/lang/String;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    new-instance v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/photos/GphotoUsername;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->setExtension(Lcom/google/gdata/data/Extension;)V

    .line 80
    :goto_0
    return-void

    .line 78
    :cond_0
    const-class v0, Lcom/google/gdata/data/photos/GphotoUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/photos/impl/UserDataImpl;->removeExtension(Ljava/lang/Class;)V

    goto :goto_0
.end method
