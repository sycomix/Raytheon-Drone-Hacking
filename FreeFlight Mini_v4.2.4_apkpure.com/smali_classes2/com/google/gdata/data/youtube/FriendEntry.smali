.class public Lcom/google/gdata/data/youtube/FriendEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "FriendEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#friend"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/youtube/FriendEntry;",
        ">;"
    }
.end annotation


# static fields
.field public static final CATEGORIES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 39
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "http://gdata.youtube.com/schemas/2007/contact.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/FriendEntry;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 45
    const-string v0, "http://gdata.youtube.com/schemas/2007#friend"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method public constructor <init>(Lcom/google/gdata/data/BaseEntry;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gdata/data/BaseEntry",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "base":Lcom/google/gdata/data/BaseEntry;, "Lcom/google/gdata/data/BaseEntry<*>;"
    invoke-direct {p0, p1}, Lcom/google/gdata/data/BaseEntry;-><init>(Lcom/google/gdata/data/BaseEntry;)V

    .line 50
    const-string v0, "http://gdata.youtube.com/schemas/2007#friend"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 51
    return-void
.end method


# virtual methods
.method public addUserProfileLink(Ljava/lang/String;)V
    .locals 2
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 91
    new-instance v0, Lcom/google/gdata/data/Link;

    invoke-direct {v0}, Lcom/google/gdata/data/Link;-><init>()V

    .line 92
    .local v0, "link":Lcom/google/gdata/data/Link;
    const-string v1, "related"

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->setRel(Ljava/lang/String;)V

    .line 93
    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/Link;->setType(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v0, p1}, Lcom/google/gdata/data/Link;->setHref(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/FriendEntry;->getLinks()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    return-void
.end method

.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 3
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 115
    const-class v1, Lcom/google/gdata/data/youtube/FriendEntry;

    const-class v2, Lcom/google/gdata/data/youtube/YtStatus;

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 116
    const-class v1, Lcom/google/gdata/data/youtube/FriendEntry;

    const-class v2, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p1, v1, v2}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Ljava/lang/Class;)V

    .line 118
    invoke-static {}, Lcom/google/gdata/data/extensions/Email;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 119
    .local v0, "emailExtension":Lcom/google/gdata/data/ExtensionDescription;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 120
    const-class v1, Lcom/google/gdata/data/youtube/FriendEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 121
    sget-object v1, Lcom/google/gdata/util/Namespaces;->gNs:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 123
    const-class v1, Lcom/google/gdata/data/youtube/FriendEntry;

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 124
    return-void
.end method

.method public getEmail()Lcom/google/gdata/data/extensions/Email;
    .locals 1

    .prologue
    .line 100
    const-class v0, Lcom/google/gdata/data/extensions/Email;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FriendEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/extensions/Email;

    return-object v0
.end method

.method public getStatus()Lcom/google/gdata/data/youtube/YtStatus$Value;
    .locals 2

    .prologue
    .line 79
    const-class v1, Lcom/google/gdata/data/youtube/YtStatus;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/FriendEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtStatus;

    .line 80
    .local v0, "status":Lcom/google/gdata/data/youtube/YtStatus;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtStatus;->getStatus()Lcom/google/gdata/data/youtube/YtStatus$Value;

    move-result-object v1

    goto :goto_0
.end method

.method public getUserProfileLink()Ljava/lang/String;
    .locals 3

    .prologue
    .line 85
    const-string v1, "related"

    sget-object v2, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v1, v2}, Lcom/google/gdata/data/youtube/FriendEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    .line 86
    .local v0, "link":Lcom/google/gdata/data/Link;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/Link;->getHref()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public getUsername()Ljava/lang/String;
    .locals 2

    .prologue
    .line 55
    const-class v1, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p0, v1}, Lcom/google/gdata/data/youtube/FriendEntry;->getExtension(Ljava/lang/Class;)Lcom/google/gdata/data/Extension;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/youtube/YtUsername;

    .line 56
    .local v0, "username":Lcom/google/gdata/data/youtube/YtUsername;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v0}, Lcom/google/gdata/data/youtube/YtUsername;->getContent()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setEmail(Lcom/google/gdata/data/extensions/Email;)V
    .locals 1
    .param p1, "email"    # Lcom/google/gdata/data/extensions/Email;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    const-class v0, Lcom/google/gdata/data/extensions/Email;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FriendEntry;->removeExtension(Ljava/lang/Class;)V

    .line 110
    :goto_0
    return-void

    .line 108
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/gdata/data/youtube/FriendEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setStatus(Lcom/google/gdata/data/youtube/YtStatus$Value;)V
    .locals 1
    .param p1, "status"    # Lcom/google/gdata/data/youtube/YtStatus$Value;

    .prologue
    .line 70
    if-nez p1, :cond_0

    .line 71
    const-class v0, Lcom/google/gdata/data/youtube/YtStatus;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FriendEntry;->removeExtension(Ljava/lang/Class;)V

    .line 75
    :goto_0
    return-void

    .line 73
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtStatus;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtStatus;-><init>(Lcom/google/gdata/data/youtube/YtStatus$Value;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FriendEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method

.method public setUsername(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    const-class v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FriendEntry;->removeExtension(Ljava/lang/Class;)V

    .line 66
    :goto_0
    return-void

    .line 64
    :cond_0
    new-instance v0, Lcom/google/gdata/data/youtube/YtUsername;

    invoke-direct {v0, p1}, Lcom/google/gdata/data/youtube/YtUsername;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/google/gdata/data/youtube/FriendEntry;->setExtension(Lcom/google/gdata/data/Extension;)V

    goto :goto_0
.end method
