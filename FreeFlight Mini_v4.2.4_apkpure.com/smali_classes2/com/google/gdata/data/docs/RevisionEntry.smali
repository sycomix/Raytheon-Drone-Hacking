.class public Lcom/google/gdata/data/docs/RevisionEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "RevisionEntry.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/docs/RevisionEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORY:Lcom/google/gdata/data/Category;

.field public static final KIND:Ljava/lang/String; = "http://schemas.google.com/docs/2007#revision"

.field public static final LABEL:Ljava/lang/String; = "revision"

.field public static final PUBLISH_NAMESPACE:Ljava/lang/String; = "http://schemas.google.com/docs/2007#publish"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/google/gdata/data/Category;

    const-string v1, "http://schemas.google.com/g/2005#kind"

    const-string v2, "http://schemas.google.com/docs/2007#revision"

    const-string v3, "revision"

    invoke-direct {v0, v1, v2, v3}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/google/gdata/data/docs/RevisionEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 53
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/RevisionEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lcom/google/gdata/data/docs/RevisionEntry;->CATEGORY:Lcom/google/gdata/data/Category;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 54
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
    .line 57
    .local p1, "sourceEntry":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 58
    return-void
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 63
    const-class v0, Lcom/google/gdata/data/docs/RevisionEntry;

    const-class v1, Lcom/google/gdata/data/docs/Md5Checksum;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 64
    const-class v0, Lcom/google/gdata/data/docs/RevisionEntry;

    const-class v1, Lcom/google/gdata/data/docs/Publish;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 65
    const-class v0, Lcom/google/gdata/data/docs/RevisionEntry;

    const-class v1, Lcom/google/gdata/data/docs/PublishAuto;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 66
    const-class v0, Lcom/google/gdata/data/docs/RevisionEntry;

    const-class v1, Lcom/google/gdata/data/docs/PublishOutsideDomain;

    invoke-virtual {p1, v0, v1}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 67
    return-void
.end method

.method public getMd5Checksum()Ljava/lang/String;
    .locals 2

    .prologue
    .line 75
    const-class v1, Lcom/google/gdata/data/docs/Md5Checksum;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/docs/RevisionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Md5Checksum;

    .line 76
    .local v0, "md5Checksum":Lcom/google/gdata/data/docs/Md5Checksum;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/Md5Checksum;->getValue()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getModifyingUser()Lcom/google/gdata/data/Person;
    .locals 2

    .prologue
    .line 110
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/RevisionEntry;->getAuthors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 111
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/RevisionEntry;->getAuthors()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Person;

    .line 113
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPublishLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 120
    const-string v0, "http://schemas.google.com/docs/2007#publish"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->HTML:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/docs/RevisionEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public isPublish()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 129
    const-class v1, Lcom/google/gdata/data/docs/Publish;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/docs/RevisionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/Publish;

    .line 130
    .local v0, "publish":Lcom/google/gdata/data/docs/Publish;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/Publish;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public isPublishAuto()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 152
    const-class v1, Lcom/google/gdata/data/docs/PublishAuto;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/docs/RevisionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/PublishAuto;

    .line 153
    .local v0, "publishAuto":Lcom/google/gdata/data/docs/PublishAuto;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/PublishAuto;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public isPublishOutsideDomain()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 175
    const-class v1, Lcom/google/gdata/data/docs/PublishOutsideDomain;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/docs/RevisionEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/docs/PublishOutsideDomain;

    .line 176
    .local v0, "publishOutsideDomain":Lcom/google/gdata/data/docs/PublishOutsideDomain;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/docs/PublishOutsideDomain;->getValue()Ljava/lang/Boolean;

    move-result-object v1

    goto :goto_0
.end method

.method public setMd5Checksum(Ljava/lang/String;)V
    .locals 1
    .param p1, "md5Checksum"    # Ljava/lang/String;

    .prologue
    .line 85
    if-nez p1, :cond_0

    .line 86
    const-class v0, Lcom/google/gdata/data/docs/Md5Checksum;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/RevisionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/Md5Checksum;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/Md5Checksum;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/RevisionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setModifyingUser(Lcom/google/gdata/data/Person;)V
    .locals 1
    .param p1, "modifyingUser"    # Lcom/google/gdata/data/Person;

    .prologue
    .line 100
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/RevisionEntry;->getAuthors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 101
    if-eqz p1, :cond_0

    .line 102
    invoke-virtual {p0}, Lcom/google/gdata/data/docs/RevisionEntry;->getAuthors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    :cond_0
    return-void
.end method

.method public setPublish(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "publish"    # Ljava/lang/Boolean;

    .prologue
    .line 139
    if-nez p1, :cond_0

    .line 140
    const-class v0, Lcom/google/gdata/data/docs/Publish;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/RevisionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 144
    :goto_0
    return-void

    .line 142
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/Publish;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/Publish;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/RevisionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPublishAuto(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "publishAuto"    # Ljava/lang/Boolean;

    .prologue
    .line 162
    if-nez p1, :cond_0

    .line 163
    const-class v0, Lcom/google/gdata/data/docs/PublishAuto;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/RevisionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 167
    :goto_0
    return-void

    .line 165
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/PublishAuto;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/PublishAuto;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/RevisionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setPublishOutsideDomain(Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "publishOutsideDomain"    # Ljava/lang/Boolean;

    .prologue
    .line 185
    if-nez p1, :cond_0

    .line 186
    const-class v0, Lcom/google/gdata/data/docs/PublishOutsideDomain;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/RevisionEntry;->removeExtension(Ljava/lang/Class;)V

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    new-instance v0, Lcom/google/gdata/data/docs/PublishOutsideDomain;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/docs/PublishOutsideDomain;-><init>(Ljava/lang/Boolean;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/docs/RevisionEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
