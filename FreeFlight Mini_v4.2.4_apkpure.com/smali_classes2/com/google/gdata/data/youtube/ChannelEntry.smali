.class public Lcom/google/gdata/data/youtube/ChannelEntry;
.super Lcom/google/gdata/data/BaseEntry;
.source "ChannelEntry.java"


# annotations
.annotation build Lcom/google/gdata/data/Kind$Term;
    value = "http://gdata.youtube.com/schemas/2007#channel"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gdata/data/BaseEntry",
        "<",
        "Lcom/google/gdata/data/youtube/ChannelEntry;",
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

    const-string v2, "http://gdata.youtube.com/schemas/2007/channeltypes.cat"

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/gdata/data/youtube/ChannelEntry;->CATEGORIES:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/google/gdata/data/BaseEntry;-><init>()V

    .line 44
    const-string v0, "http://gdata.youtube.com/schemas/2007#channel"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->setKind(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)V

    .line 45
    return-void
.end method

.method private getCategoryWithScheme(Ljava/util/Set;Ljava/lang/String;)Lcom/google/gdata/data/Category;
    .locals 3
    .param p2, "scheme"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Lcom/google/gdata/data/Category;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lcom/google/gdata/data/Category;"
        }
    .end annotation

    .prologue
    .line 55
    .local p1, "categories":Ljava/util/Set;, "Ljava/util/Set<Lcom/google/gdata/data/Category;>;"
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gdata/data/Category;

    .line 56
    .local v0, "c":Lcom/google/gdata/data/Category;
    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 60
    .end local v0    # "c":Lcom/google/gdata/data/Category;
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V
    .locals 2
    .param p1, "extProfile"    # Lcom/google/gdata/data/ExtensionProfile;

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/google/gdata/data/BaseEntry;->declareExtensions(Lcom/google/gdata/data/ExtensionProfile;)V

    .line 106
    sget-object v1, Lcom/google/gdata/data/youtube/YouTubeNamespace;->NS:Lcom/google/gdata/util/common/xml/XmlNamespace;

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareAdditionalNamespace(Lcom/google/gdata/util/common/xml/XmlNamespace;)V

    .line 107
    invoke-static {}, Lcom/google/gdata/data/extensions/FeedLink;->getDefaultDescription()Lcom/google/gdata/data/ExtensionDescription;

    move-result-object v0

    .line 108
    .local v0, "feedLinkDescription":Lcom/google/gdata/data/ExtensionDescription;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/gdata/data/ExtensionDescription;->setRepeatable(Z)V

    .line 109
    const-class v1, Lcom/google/gdata/data/youtube/UserProfileEntry;

    invoke-virtual {p1, v1, v0}, Lcom/google/gdata/data/ExtensionProfile;->declare(Ljava/lang/Class;Lcom/google/gdata/data/ExtensionDescription;)V

    .line 110
    const-class v1, Lcom/google/gdata/data/youtube/ChannelEntry;

    invoke-virtual {p1, v1}, Lcom/google/gdata/data/ExtensionProfile;->declareArbitraryXmlExtension(Ljava/lang/Class;)V

    .line 111
    return-void
.end method

.method public getChannelType()Ljava/lang/String;
    .locals 2

    .prologue
    .line 70
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/ChannelEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    const-string v1, "http://gdata.youtube.com/schemas/2007/channeltypes.cat"

    invoke-direct {p0, v0, v1}, Lcom/google/gdata/data/youtube/ChannelEntry;->getCategoryWithScheme(Ljava/util/Set;Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/gdata/data/Category;->getTerm()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFeaturedVideoLink()Lcom/google/gdata/data/Link;
    .locals 2

    .prologue
    .line 96
    const-string v0, "http://gdata.youtube.com/schemas/2007#featured-video"

    sget-object v1, Lcom/google/gdata/data/ILink$Type;->ATOM:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/google/gdata/data/youtube/ChannelEntry;->getLink(Ljava/lang/String;Ljava/lang/String;)Lcom/google/gdata/data/Link;

    move-result-object v0

    return-object v0
.end method

.method public getUploadsFeedLink()Lcom/google/gdata/data/extensions/FeedLink;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gdata/data/extensions/FeedLink",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 91
    const-string v0, "http://gdata.youtube.com/schemas/2007#user.uploads"

    invoke-static {p0, v0}, Lcom/google/gdata/data/youtube/EntryUtils;->getFeedLink(Lcom/google/gdata/data/BaseEntry;Ljava/lang/String;)Lcom/google/gdata/data/extensions/FeedLink;

    move-result-object v0

    return-object v0
.end method

.method public setChannelType(Ljava/lang/String;)V
    .locals 3
    .param p1, "channelTypeTerm"    # Ljava/lang/String;

    .prologue
    .line 79
    if-nez p1, :cond_0

    .line 80
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/ChannelEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/ChannelEntry;->getCategories()Ljava/util/Set;

    move-result-object v1

    const-string v2, "http://gdata.youtube.com/schemas/2007/channeltypes.cat"

    invoke-direct {p0, v1, v2}, Lcom/google/gdata/data/youtube/ChannelEntry;->getCategoryWithScheme(Ljava/util/Set;Ljava/lang/String;)Lcom/google/gdata/data/Category;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 87
    :goto_0
    return-void

    .line 84
    :cond_0
    invoke-virtual {p0}, Lcom/google/gdata/data/youtube/ChannelEntry;->getCategories()Ljava/util/Set;

    move-result-object v0

    new-instance v1, Lcom/google/gdata/data/Category;

    const-string v2, "http://gdata.youtube.com/schemas/2007/channeltypes.cat"

    invoke-direct {v1, v2, p1}, Lcom/google/gdata/data/Category;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method
